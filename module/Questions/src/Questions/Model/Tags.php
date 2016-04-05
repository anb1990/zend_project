<?php
namespace Questions\Model;
use Zend\InputFilter\InputFilter;
 use Zend\InputFilter\InputFilterAwareInterface;
 use Zend\InputFilter\InputFilterInterface;
 class Tags
 {
     public $id;
     public $tag;
     public $user_created;
     
     

     public function exchangeArray($data)
     {
         $this->id     = (!empty($data['id'])) ? $data['id'] : null;
         $this->tag = (!empty($data['tag'])) ? $data['tag'] : null;
         $this->user_created = (!empty($data['user_created'])) ? $data['user_created'] : null;
         
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
                 'name'     => 'tag',
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
                             'min'      => 4,
                             'max'      => 50,
                         ),
                     ),
                 ),
             ));
             
             
             

             

             $this->inputFilter = $inputFilter;
         }

         return $this->inputFilter;
     }
 }