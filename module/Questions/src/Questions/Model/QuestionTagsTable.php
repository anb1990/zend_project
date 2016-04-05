<?php
namespace Questions\Model;

 use Zend\Db\TableGateway\TableGateway;
// use Zend\Db\Sql\Expression;
 class QuestionTagsTable
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
     
     
     public function saveQuestionTags(QuestionTags $questionTags)
     {
         $data = array(
             'tag' => $questionTags->tag,
             'question'  => $questionTags->question,
         );
         $id = (int) $questionTags->id;
         if ($id == 0) {
             $this->tableGateway->insert($data);
         } else {
             if ($this->getTags($id)) {
                 $this->tableGateway->update($data, array('id' => $id));
             } else {
                 throw new \Exception('Tag id does not exist');
             }
         }
     }
     
     public function getTags()
     {
         $id  = (int) $id;
         $sqlSelect = $this->tableGateway->getSql()->select();
         
        
         $resultSet = $this->tableGateway->selectWith($sqlSelect);
         
         
         
         if (!$resultSet) {
             throw new \Exception("No data found");
         }
         return $resultSet;
     }
     
     

     public function deleteTag($id)
     {
         $this->tableGateway->delete(array('id' => (int) $id));
     }
 }