<?php
namespace Questions\Model;
use Zend\InputFilter\InputFilter;
 use Zend\InputFilter\InputFilterAwareInterface;
 use Zend\InputFilter\InputFilterInterface;
 class QuestionTags
 {
     public $id;
     public $tag;
     public $question;
     
     

     public function exchangeArray($data)
     {
         $this->id     = (!empty($data['id'])) ? $data['id'] : null;
         $this->tag = (!empty($data['tag'])) ? $data['tag'] : null;
         $this->question = (!empty($data['question'])) ? $data['question'] : null;
         
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
                 'name'     => 'question',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'Int'),
                 ),
             ));

             $inputFilter->add(array(
                 'name'     => 'tag',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'Int'),
                 ),
             ));
            

             

             $this->inputFilter = $inputFilter;
         }

         return $this->inputFilter;
     }
 }