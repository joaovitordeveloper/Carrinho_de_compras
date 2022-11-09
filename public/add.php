<?php

session_start();

require "../vendor/autoload.php";

use app\classes\cart;

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$cart = new cart();
$cart->add($id);

$cart->dump();