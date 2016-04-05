<?php
namespace Questions\Model;

 use Zend\Db\TableGateway\TableGateway;
// use Zend\Db\Sql\Expression;
 class AnswersTable
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
     
     
     
     public function getAnswers()
     {
         $id  = (int) $id;
         $sqlSelect = $this->tableGateway->getSql()->select();
         
         /*$sqlSelect->columns(array('*','answer'=>new Expression('an.answer'),'correctanswer'=>new Expression('an.correct'),'answerid'=>new Expression('an.id')));
         $sqlSelect->join(array('u'=>'user'), 'u.user_id = questions.user', array('username'=>'username'), 'left');
         $sqlSelect->join(array('an'=>'answers'), 'an.question = questions.id', array(), 'left');
         $sqlSelect->join(array('us'=>'user'), 'us.user_id = an.user', array('answeredid'=>'user_id','answeredusername'=>'username'), 'left');
         $sqlSelect->where(array('questions.id' => $id));*/
        
         $resultSet = $this->tableGateway->selectWith($sqlSelect);
         
         
         
         if (!$resultSet) {
             throw new \Exception("No data found");
         }
         return $resultSet;
     }
     
     public function markCorrect($id){
         $data = array(
             'correct' => 1,
         );
         
         $sqlSelect = $this->tableGateway->getSql()->select();
         $sqlSelect->where(array('id' => $id));
         $resultSet = $this->tableGateway->selectWith($sqlSelect);

         foreach($resultSet as $row){
             $this->tableGateway->update(array('correct'=>0), array('question' => $row->question));
             break;
         }
         $this->tableGateway->update($data, array('id' => $id));
     }
     public function saveAnswers(Answers $answers,$qid)
     {
         $data = array(
             'answer' => $answers->answer,
             'question' => $answers->question,
             'user'  => $answers->user,
             'created'  => time(),
             'last_update'  => time(),
         );
         $id = (int) $answers->id;
         if ($id == 0) {
             $this->tableGateway->insert($data);
         } else {
             if ($this->getAnswers($id)) {
                 $this->tableGateway->update($data, array('id' => $id));
             } else {
                 throw new \Exception('Answer id does not exist');
             }
         }
     }
     
     

     public function deleteTag($id)
     {
         $this->tableGateway->delete(array('id' => (int) $id));
     }
 }