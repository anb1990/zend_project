<?php
return array(
        'controllers' => array(
                'invokables' => array(
                        'Questions\Controller\Questions' => 'Questions\Controller\QuestionsController'
                ),
        ),
        'view_manager' => array(
                'template_path_stack' => array(
                        'questions' => __DIR__ . '/../view',
                ),
            'strategies' => array(
        'ViewJsonStrategy',
    ),
        ),
// Routes
    
  
    
    
        'router' => array(
                'routes' => array(
                        'questions' => array(
                                'type'    => 'segment',
                                'options' => array(
                                        'route'    => '/questions[/:action][/:id]',
                                        'constraints' => array(
                                                'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                                                'id'     => '[0-9]+',
                                        ),
                                        'defaults' => array(
                                                'controller' => 'Questions\Controller\Questions',
                                                'action'     => 'index',
                                        ),
                                ),
                        ),
                ),
        ),
);