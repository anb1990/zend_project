<?php
namespace Questions\Model;
use Zend\InputFilter\InputFilter;
 use Zend\InputFilter\InputFilterAwareInterface;
 use Zend\InputFilter\InputFilterInterface;
 class Answers
 {
     public $id;
     public $answer;
     public $question;
     public $user;
     public $created;
     public $last_update;
     public $correct;
     
     

     public function exchangeArray($data)
     {
         $this->id     = (!empty($data['id'])) ? $data['id'] : 0;
         $this->answer = (!empty($data['answer'])) ? $data['answer'] : null;
         $this->question = (!empty($data['question'])) ? $data['question'] : 0;
         $this->user = (!empty($data['user'])) ? $data['user'] : 0;
         $this->created = (!empty($data['created'])) ? $data['created'] : null;
         $this->last_update = (!empty($data['last_update'])) ? $data['last_update'] : null;
         $this->correct = (!empty($data['correct'])) ? $data['correct'] : 0;
         
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

            /* $inputFilter->add(array(
                 'name'     => 'id',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'Int'),
                 ),
             ));*/
             
             
             
             

             
             $inputFilter->add(array(
                 'name'     => 'answer',
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
                         ),
                     ),
                 ),
             ));
             
             
             

             

             $this->inputFilter = $inputFilter;
         }

         return $this->inputFilter;
     }
 }