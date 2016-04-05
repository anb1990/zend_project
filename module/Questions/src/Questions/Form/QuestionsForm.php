<?php
namespace Questions\Form;

 use Zend\Form\Form;

 class QuestionsForm extends Form
 {
     public function __construct($name = null)
     {
         // we want to ignore the name passed
         parent::__construct('questions');

         $this->add(array(
             'name' => 'id',
             'type' => 'Hidden',
         ));
         
         $this->add(array(
             'name' => 'title',
             'type' => 'Text',
             'options' => array(
                 'label' => 'السؤال',
             ),
             'attributes' => array(
                 'class' => 'form-control',
             ),
         ));
         
         $this->add(array(
             'name' => 'question',
             'type' => 'Textarea',
             'options' => array(
                 'label' => 'تفاصيل السؤال',
             ),
             'attributes' => array(
                 'class' => 'form-control',
             ),
         ));
         
         $this->add(array(
             'name' => 'tags',
             'type' => 'Text',
             'options' => array(
                 'label' => 'عناوين اشارة',
             ),
             'attributes' => array(
                 'class' => 'form-control',
                 'id' => 'singleFieldTags2',
             ),
         ));
         
         $this->add(array(
             'name' => 'answerq',
             'type' => 'Textarea',
             'options' => array(
                 'label' => 'أصف جواب',
             ),
             'attributes' => array(
                 'class' => 'form-control',
             ),
         ));
         
         
         
         $this->add(array(
             'name' => 'answer',
             'type' => 'Textarea',
             'options' => array(
                 'label' => 'أضف جواب',
             ),
             'attributes' => array(
                 'class' => 'form-control',
             ),
         ));
         
         
         
         
         
         $this->add(array(
             'name' => 'answers[]',
             'type' => 'Text',
             'options' => array(
                 'label' => 'الجواب',
             ),
             'attributes' => array(
                 'class' => 'form-control',
             ),
         ));
         
         
         $this->add(array(
             'name' => 'submit',
             'type' => 'Submit',
             'attributes' => array(
                 'value' => 'حفظ',
                 'id' => 'submitbutton',
                 'class' => 'btn btn-success',
             ),
         ));
     }
 }