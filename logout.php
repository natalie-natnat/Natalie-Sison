<?php 

include "config.php";
session_start();

date_default_timezone_set('Asia/Manila');
$currentDate = date('Y-m-d H:i:s');

$user_time = $_SESSION['username'];

$query = "SELECT MAX(id) FROM auditi_trail";
$result =$link->query($query);

$queryresult = $result->fetch_array()['MAX(id)'] ?? '';

$insertTime = "UPDATE auditi_trail SET logout_time = '$currentDate' WHERE id = '$queryresult'";
$sql_time = mysqli_query($link, $insertTime); 

if (mysqli_query($link, $sql_time)) {
                echo "Record updated successfully";
            } 
            else {
                echo "Error updating record: " . mysqli_error($link);
            }
 

session_destroy();
header("location: login.php");
exit();
?>