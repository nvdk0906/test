<?php
	$email = $_POST['email'];
	$pass = $_POST['password'];
	$db = new PDO('mysql:host=localhost;dbname=customer','root','');
	$sql = "select * from user where email='$email' and password='$pass'";
	$result = $db->query($sql);
	if ($result->rowCount()>0){
		header('location:../customer.php');
	}
	else{
		header('location:../login.php');
	}
?>