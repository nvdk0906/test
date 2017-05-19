<?php
	$fname = $_POST['firstName'];
	$lname = $_POST['lastName'];
	$gender = $_POST['gender'];
	$email = $_POST['email'];
	$address = $_POST['address'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$zip = $_POST['zip'];
	
	$db = new PDO('mysql:host=localhost;dbname=customer','root','');
	
	$sql = "insert into customers (fname,lname,gender,email,address,city,state,zip) values ('$fname','$lname','$gender','$email','$address','$city','$state','$zip')";
	
	if($db->exec($sql)){
		header('location:../customer.php');
	}
	else{
		header('location:../addcustomer.php');
	}
?>