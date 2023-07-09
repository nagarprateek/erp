<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = 'Mysql@31106';
$db = 'unvdb';

$con = new mysqli($dbhost,$dbuser,$dbpass,$db,3307);

if ($con->connect_error) {
    die('<script>alert("Connection failed");</script>'. $conn->connect_error);
}
?>