<?php

namespace Questions;

use Questions\Model\Questions;
use Questions\Model\QuestionsTable;
use Questions\Model\Tags;
use Questions\Model\TagsTable;
use Questions\Model\QuestionTags;
use Questions\Model\QuestionTagsTable;
use Questions\Model\Answers;
use Questions\Model\AnswersTable;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;

class Module {

    public function getConfig() {
        return include __DIR__ . '/config/module.config.php';
    }

    public function getAutoloaderConfig() {
        return array(
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
                
            ),
        );
    }

    public function getServiceConfig() {
        return array(
            'factories' => array(
                'Questions\Model\QuestionsTable' => function($sm) {
                    $tableGateway = $sm->get('QuestionsTableGateway');
                    $table = new QuestionsTable($tableGateway);
                    return $table;
                },
                'QuestionsTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Questions());
                    return new TableGateway('questions', $dbAdapter, null, $resultSetPrototype);
                },
                'Questions\Model\TagsTable' => function($sm) {
                    $tableGateway = $sm->get('TagsTableGateway');
                    $table = new TagsTable($tableGateway);
                    return $table;
                },
                'TagsTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Tags());
                    return new TableGateway('tags', $dbAdapter, null, $resultSetPrototype);
                },
                        
                        'Questions\Model\AnswersTable' => function($sm) {
                    $tableGateway = $sm->get('AnswersTableGateway');
                    $table = new AnswersTable($tableGateway);
                    return $table;
                },
                'AnswersTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Answers());
                    return new TableGateway('answers', $dbAdapter, null, $resultSetPrototype);
                },
                        
                        
                        'Questions\Model\QuestionTagsTable' => function($sm) {
                    $tableGateway = $sm->get('QuestionTagsTableGateway');
                    $table = new QuestionTagsTable($tableGateway);
                    return $table;
                },
                'QuestionTagsTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new QuestionTags());
                    return new TableGateway('question_tags', $dbAdapter, null, $resultSetPrototype);
                },
            ),
        );
    }

}
