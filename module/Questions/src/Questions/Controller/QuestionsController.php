<?php
namespace Questions\Controller;
 
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Questions\Model\Questions;
use Questions\Model\Tags;
use Questions\Model\QuestionTags;
use Questions\Model\Answers;
use Questions\Form\QuestionsForm; 
use Questions\Form\AnswersForm; 
 
class QuestionsController extends AbstractActionController
{
    protected $questionsTable;
    protected $tagsTable;
    /**
     * (non-PHPdoc)
     * @see \Zend\Mvc\Controller\AbstractActionController::indexAction()
     */
    public function indexAction()
    {
        return new ViewModel(array(
             'questions' => $this->getQuestionsTable()->questionsDetailed('created desc',15),
         ));
    }
    
    public function viewAction()
    {
        $id = $this->params()->fromRoute('id', 0);
        if (!$id) {
             return $this->redirect()->toRoute('questions', array(
                 'action' => 'index'
             ));
         }
          $form  = new QuestionsForm();
          $request = $this->getRequest();
         if($request->isPost()){
             $answer = new Answers();
             $form->setInputFilter($answer->getInputFilter());
             $form->setData($request->getPost());
             //print_r($request->getPost());die;
             if ($form->isValid()) {
                 $answer->exchangeArray($form->getData());
                 $userID = $this->zfcUserAuthentication()->getIdentity()->getId();
                 $answer->user = $userID;
                 $answer->question = $id;
                 $this->getAnswersTable()->saveAnswers($answer,$id);//die('in');

                 // Redirect to list of albums
                 return $this->redirect()->toRoute('questions');
             }
             return array('form' => $form,
             'data'=>$data);
             
         }
         
         //$question = $this->getQuestionsTable()->getQuestionAnswers($id);die;
         
         /*foreach($question as $row){
             print_r($row);
         }
         die;*/
         try {
             $question = $this->getQuestionsTable()->getQuestionAnswers($id);
         }
         catch (\Exception $ex) {
             return $this->redirect()->toRoute('questions', array(
                 'action' => 'index'
             ));
         }
         //die('asd');
        
         //$form->bind($question);
        // $form->get('submit')->setAttribute('value', 'View');
         
         return array(
             'id' => $id,
             'form' => $form,
             'data' => array('question'=>$question),
         );
         
         
    }
    
    
    
    public function markCorrectAction(){
        $request = $this->getRequest();
        $id = $request->getPost('id');
        $this->getAnswersTable()->markCorrect($id);
        return 1;
        
    }

     public function addAction()
     {
         $form = new QuestionsForm();
         $form->get('submit')->setValue('حفظ');
         $data = array();
         $data['tags'] = $this->getTagsTable()->getTags();
         $userID = $this->zfcUserAuthentication()->getIdentity()->getId();
         //echo $this->zfcUserIdentity();die;
         if(isset($userID)){
            $data['userID'] = $userID;
         }else{
             $data['userID'] = -1;
         }
         $request = $this->getRequest();
         if ($request->isPost()) {
             $question = new Questions();
             $tag = new Tags();
             $questionTags = new QuestionTags();
             $form->setInputFilter($question->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $userID = $this->zfcUserAuthentication()->getIdentity()->getId();
                 
                // print_r($tags);die('m');
                 //
                 $question->exchangeArray($form->getData());
                 
                 $question->user = $userID;
                 $qusetionId = $this->getQuestionsTable()->saveQuestions($question);
                 
                 $tags = $request->getPost('tags');
                 $tags = explode(',', $tags);
                 $tagID = 0;
                 foreach($tags as $tagRow){
                     $tagID = $this->getTagsTable()->ifExists($tagRow);
                     if($tagID == -1){
                         
                         $tag->user_created = $userID;
                         $tag->tag = $tagRow;
                       $tagID = $this->getTagsTable()->saveTags($tag);
                    
                     } 
                     $questionTags->question = $qusetionId;
                     $questionTags->tag = $tagID;
                     //print_r($questionTags);die;
                     $this->getQuestionTagsTable()->saveQuestionTags($questionTags);
                 }

                 // Redirect to list of albums
                 return $this->redirect()->toRoute('questions');
             }
         }
         return array('form' => $form,
             'data'=>$data);
     }
     

     public function editAction()
     {
     }

     public function deleteAction()
     {
     }
    
   public function getQuestionsTable()
     {
         if (!$this->questionsTable) {
             $sm = $this->getServiceLocator();
             $this->questionsTable = $sm->get('Questions\Model\QuestionsTable');
         }
         return $this->questionsTable;
     } 
     
     public function getTagsTable()
     {
         if (!$this->tagsTable) {
             $sm = $this->getServiceLocator();
             $this->tagsTable = $sm->get('Questions\Model\TagsTable');
         }
         return $this->tagsTable;
     }
     
     public function getAnswersTable()
     {
         if (!$this->answersTable) {
             $sm = $this->getServiceLocator();
             $this->answersTable = $sm->get('Questions\Model\AnswersTable');
         }
         return $this->answersTable;
     }
     public function getQuestionTagsTable()
     {
         if (!$this->questionTagsTable) {
             $sm = $this->getServiceLocator();
             $this->questionTagsTable = $sm->get('Questions\Model\QuestionTagsTable');
         }
         return $this->questionTagsTable;
     }
    
}
