<?php 
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
$localhost = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "api_library";

// create connection
$connect = mysqli_connect($localhost, $username, $password, $dbname);
// check connection
if (!$connect) {
    die("Connection failed: " . mysqli_connect_error());
// }else {
//     echo "Connected successfully";
}