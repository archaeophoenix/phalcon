<?php
/**
 * Created by PhpStorm.
 * User: gamalan
 * Date: 07/10/16
 * Time: 10:24
 */

namespace Application\Router;

use Phalcon\Mvc\Router\Group;

class MainRouter extends Group {

  public function initialize() {

    $this->setPaths([
      'namespaces' => 'Application\\Controllers',
      'controller'=>'index'
    ]);

    $this->add('/', ['action' => 'index']);

    $this->setPaths([
      'namespaces' => 'Application\\Controllers',
      'controller'=>'users'
    ]);

    $this->add('/users', ['action' => 'index']);
    $this->add('/users/{}', ['action' => 'index']);

    $this->add('/users/form', ['action' => 'form']);
    $this->add('/users/form/{id}', ['action' => 'form']);

    $this->add('/users/create', ['action' => 'create']);
    $this->add('/users/create/{id}', ['action' => 'create']);

    $this->add('/users/delete/{id}', ['action' => 'delete']);

  }

}