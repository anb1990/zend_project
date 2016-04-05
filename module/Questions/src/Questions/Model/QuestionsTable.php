<?php
namespace Questions\Model;

 use Zend\Db\TableGateway\TableGateway;
 use Zend\Db\Sql\Expression;
 class QuestionsTable
 {
     protected $tableGateway;

     public function __construct(TableGateway $tableGateway)
     {
         $this->tableGateway = $tableGateway;
     }

     public function fetchAll()
     {
         $resultSet = $this->tableGateway->select();
         return $resultSet;
     }
     
     public function questionsDetailed($order = "",$limit = ""){
         
         $sqlSelect = $this->tableGateway->getSql()->select();
         $sqlSelect->columns(array('*','answerscount'=>new Expression('COUNT(an.answer)'),'correctanswer'=>new Expression('sum(an.correct)')));
         $sqlSelect->join(array('u'=>'user'), 'u.user_id = questions.user', array('username'=>'username'), 'left');
         $sqlSelect->join(array('an'=>'answers'), 'an.question = questions.id', array(), 'left');
         $sqlSelect->group('questions.id');
         if($order){
            $sqlSelect->order($order);  
         }
         if($limit){
            $sqlSelect->limit($limit);  
         }
         /*$select = $this->tableGateway->getSql()->select()
    
    ->columns(array('q.*,u.username'))
    ->join('user u', 'u.id = q.user', 'left');*/
    //->where(array('event_related_events.event_id' => $eventId));
         
         
         
         $resultSet = $this->tableGateway->selectWith($sqlSelect);
         return $resultSet;
     }

     public function getQuestionAnswers($id)
     {
         $id  = (int) $id;
         $sqlSelect = $this->tableGateway->getSql()->select();
         $sqlSelect->columns(array('*','answer'=>new Expression('an.answer'),'correctanswer'=>new Expression('an.correct'),'answerid'=>new Expression('an.id')));
         $sqlSelect->join(array('u'=>'user'), 'u.user_id = questions.user', array('username'=>'username'), 'left');
         $sqlSelect->join(array('an'=>'answers'), 'an.question = questions.id', array(), 'left');
         $sqlSelect->join(array('us'=>'user'), 'us.user_id = an.user', array('answeredid'=>'user_id','answeredusername'=>'username'), 'left');
         $sqlSelect->where(array('questions.id' => $id));
        
         $resultSet = $this->tableGateway->selectWith($sqlSelect);
         
         //print_r($resultSet);die;
         
         if (!$resultSet) {
             throw new \Exception("Could not find row $id");
         }
         return $resultSet;
     }

     public function saveQuestions(Questions $questions)
     {
         $data = array(
             'title' => $questions->title,
             'question' => $questions->question,
             'user'  => $questions->user,
             'created'  => time(),
         );
         $id = (int) $questions->id;
         if ($id == 0) {
             $this->tableGateway->insert($data);
             $id = $this->tableGateway->lastInsertValue;
         } else {
             if ($this->getQuestions($id)) {
                 $this->tableGateway->update($data, array('id' => $id));
             } else {
                 throw new \Exception('Questions id does not exist');
             }
         }
         return $id;
     }
     
     
     

     public function deleteQuestions($id)
     {
         $this->tableGateway->delete(array('id' => (int) $id));
     }
 }