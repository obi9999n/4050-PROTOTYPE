<?php
	session_start();

	include("connection.php");
	include("functions.php");

	$user_data = check_login($con);
    $type = check_if_vendor_and_admin($con);
	$id = $_GET['id'];
	$titleQuery = "SELECT productName FROM products WHERE categoryID = 2 AND productID = '$id'";
	$deleteQuery = "DELETE FROM `products` WHERE productID='$id'";
	$result = mysqli_query($con, $titleQuery);
	$result2 = mysqli_query($con, $deleteQuery);
	$title = mysqli_fetch_row($result)[0];
	$delete = mysqli_fetch_row($result)[0];
?>
<!doctype HTML>
<html lang="english">

<head>
	<title>Successfully updated inventory</title>
	<link rel="stylesheet" href="css/account.css">
	<center>
		<h1>Successfully deleted <?php echo $title ?></h1>
		<p> <a href="manageInventory.php">Click here to go back to manage inventory page.</a></p>
	</center>
</head>

<body>
	<center>

	</center>
</body>


</html>