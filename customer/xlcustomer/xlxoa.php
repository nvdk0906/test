<?php
	$id = $_GET['id'];
	$db = new PDO('mysql:host=localhost;dbname=customer','root','');
	$sql = "DELETE from customers WHERE id='$id'";
	$kq = $db->exec($sql);
	header('location:../customer.php');
?>