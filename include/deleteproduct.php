<?php 
    include '../db/connect.php';
    include '../funcion/control.php';

    $idsp = $_GET['idsp'];

    deleteProduct($idsp);
?>