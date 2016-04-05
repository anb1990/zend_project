<?php

namespace Questions\Model;

use Zend\Db\TableGateway\TableGateway;

// use Zend\Db\Sql\Expression;
class TagsTable {

    protected $tableGateway;

    public function __construct(TableGateway $tableGateway) {
        $this->tableGateway = $tableGateway;
    }

    public function fetchAll() {
        $resultSet = $this->tableGateway->select();
        return $resultSet;
    }

    public function ifExists($tag) {
        $sqlSelect = $this->tableGateway->getSql()->select();
        $sqlSelect = $sqlSelect->where(array('tag' => $tag));
        $result = $this->tableGateway->selectWith($sqlSelect);

        if ($result->count() > 0) {
            foreach ($result as $row) {
                return $row->id;
            }
        }
        return -1;
    }

    public function saveTags(Tags $tags) {
        $data = array(
            'tag' => $tags->tag,
            'user_created' => $tags->user_created,
        );
        $id = (int) $tags->id;
        if ($id == 0) {
            $this->tableGateway->insert($data);
            $id = $this->tableGateway->lastInsertValue;
        } else {
            if ($this->getTags($id)) {
                $this->tableGateway->update($data, array('id' => $id));
            } else {
                throw new \Exception('Tag id does not exist');
            }
        }
        return $id;
    }

    public function getTags() {
        $id = (int) $id;
        $sqlSelect = $this->tableGateway->getSql()->select();


        $resultSet = $this->tableGateway->selectWith($sqlSelect);



        if (!$resultSet) {
            throw new \Exception("No data found");
        }
        return $resultSet;
    }

    public function deleteTag($id) {
        $this->tableGateway->delete(array('id' => (int) $id));
    }

}
