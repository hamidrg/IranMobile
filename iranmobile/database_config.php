<?php
$db_host = "localhost";
$db_username = "root";
$db_pass = "";
$db_name = "shop_db";
$port = 3307; 

$link = mysqli_connect($db_host, $db_username, $db_pass, $db_name, $port);

if (mysqli_connect_errno()) {
    exit("خطاي با شرح زير رخ داده است: " . mysqli_connect_error());
}
?>