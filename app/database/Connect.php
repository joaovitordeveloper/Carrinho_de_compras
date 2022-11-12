<?php

namespace app\database;

use PDO;
use PDOException;

class Connect
{
    private static $pdo = null;

    public static function connect()
    {
        try {
            if (!static::$pdo) {
                static::$pdo = new PDO("mysql: host=localhost; dbname=cart;", "root", "", [
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ
                ]);
            } //usando PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ como quarto parametro consigo pegar os dados da coluna como se fossem objetos

            return static::$pdo;
        } catch (PDOException $e) {
            var_dump($e->getMessage());
        }
    }
}