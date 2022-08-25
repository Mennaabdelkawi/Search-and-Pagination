<?php
$servername = "localhost";
$username = "root";
$password = "";
$database   = "db_lab_4"; 

$connection = new mysqli($servername, $username, $password, $database);

// Check connection
if ($connection->connect_errno) {
   echo "Failed to connect to MySQL: " . $connection->connect_error;
   exit();
}
?>
