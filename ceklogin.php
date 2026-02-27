<?php 
session_start();
if(!isset($_SESSION['ses_username']) AND !isset($_COOKIE['coo_username'])){
    header("location:http://localhost/UAS_Yaqdira/login.php");
}
?>