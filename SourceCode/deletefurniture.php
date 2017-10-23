<html>
<head>
<title>Delete</title>
</head>

<body>
<?php

$Number=$_GET ["Fno"];
$Unit_price=$_GET ["Unit_price"];


$con = mysqli_connect("127.0.0.1","root","root","furniture store",3306);

if ($con->connect_error) {
    die("Connet failed" . $con->connect_error);
} 

$sql = "DELETE FROM Furniture WHERE Fno='$Number'";

if ($con->query($sql) === TRUE) {
    echo "Delete successfully.";
} else {
    echo "Delete failed.";
}


mysqli_close($con);

?>
</body>
</html>