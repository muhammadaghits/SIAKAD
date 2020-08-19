<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "10118128_akademik";

// Koneksi dan memilih database di server
$pdo=new PDO('mysql:host=localhost;dbname=siakad-db;charset=utf8','root','');
$con = mysql_connect($server,$username,$password) or die();
mysql_select_db($database) or die();
mysql_set_charset('utf8',$con);



?>
