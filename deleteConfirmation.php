<?php
session_start();

	include("connection.php");
	include("functions.php");
    $user_data = check_login($con);
    // $type = check_if_admin($con);
    $id = $_GET['id'];
    $queryTitle = "SELECT productName FROM products WHERE categoryID = 2 AND productID = '$id'";
    $result = mysqli_query($con, $queryTitle);
    $title = mysqli_fetch_row($result)[0];	
?>

<!doctype HTML>
<html lang="english">

<head>
    <link rel="stylesheet" href="css/account.css">
    <center>
        <h1>Account Settings</h1>
    </center>
</head>

<body>
    <div id="box">
        <p>Are you sure you want to delete your account?</p>
        <center>
            <form method="post">
                <button type="submit" name="No" onclick="location.href='manageInventory.php'">No</a></button>
                <button type="submit" name="Yes" onclick="location.href='updateItem.php?id=<?php echo $id ?>'">Yes</a></button>
            </form>
        </center>
    </div>
</body>

</html>