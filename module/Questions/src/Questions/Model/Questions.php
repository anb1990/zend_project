<?php
namespace Questions\Model;
use Zend\InputFilter\InputFilter;
 use Zend\InputFilter\InputFilterAwareInterface;
 use Zend\InputFilter\InputFilterInterface;
 class Questions
 {
     public $id;
     public $title;
     public $question;
     public $user;
     public $username;
     public $created;
     public $views;
     public $answerscount;
     public $answers;
     public $correct;
     public $last_update;
     

     public function exchangeArray($data)
     {
         $this->id     = (!empty($data['id'])) ? $data['id'] : null;
         $this->title = (!empty($data['title'])) ? $data['title'] : null;
         $this->question = (!empty($data['question'])) ? $data['question'] : null;
         $this->user  = (!empty($data['user'])) ? $data['user'] : null;
         $this->username  = (!empty($data['username'])) ? $data['username'] : null;
         $this->created  = (!empty($data['created'])) ? $data['created'] : null;
         $this->views  = (!empty($data['views'])) ? $data['views'] : 0;
         $this->answerscount  = (!empty($data['answerscount'])) ? $data['answerscount'] : 0;
         $this->answers  = (!empty($data['answers'])) ? $data['answers'] : 0;
         $this->answer  = (!empty($data['answer'])) ? $data['answer'] : null;
         $this->answerid  = (!empty($data['answerid'])) ? $data['answerid'] : 0;
         $this->correct  = (!empty($data['correctanswer'])) ? $data['correctanswer'] : 0;
         $this->answeredid  = (!empty($data['answeredid'])) ? $data['answeredid'] : 0;
         $this->answeredusername  = (!empty($data['answeredusername'])) ? $data['answeredusername'] : null;
         $this->last_update  = (!empty($data['last_update'])) ? $data['last_update'] : null;
         $this->tags  = (!empty($data['tags'])) ? $data['tags'] : null;
     }
     
     public function getArrayCopy()
     {
         return get_object_vars($this);
     }
     public function setInputFilter(InputFilterInterface $inputFilter)
     {
         throw new \Exception("Not used");
     }

     public function getInputFilter()
     {
         if (!$this->inputFilter) {
             $inputFilter = new InputFilter();

             $inputFilter->add(array(
                 'name'     => 'id',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'Int'),
                 ),
             ));

             
             $inputFilter->add(array(
                 'name'     => 'title',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'StripTags'),
                     array('name' => 'StringTrim'),
                 ),
                 'validators' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                             //'min'      => 20,
                             //'max'      => 50,
                         ),
                     ),
                 ),
                 
                 'tags' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                         ),
                     ),
                 ),
             ));
             
             
             $inputFilter->add(array(
                 'name'     => 'question',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'StripTags'),
                     array('name' => 'StringTrim'),
                 ),
                 'validators' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                             //'min'      => 50,
                         ),
                     ),
                 ),
             ));

             

             $this->inputFilter = $inputFilter;
         }

         return $this->inputFilter;
     }
 }