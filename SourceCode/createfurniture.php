<html>
<head>
<title>Create</title>
</head>

<body>
<?php

$Number=$_GET ["Fno"];
$Name=$_GET ["Fname"];
$Brand=$_GET ["Brand"];
$Category=$_GET ["Category"];
$Unit_price=$_GET ["Unit_price"];

$con = mysqli_connect("127.0.0.1","root","root","furniture store",3306);

if ($con->connect_error) {
    die("Connet failed" . $con->connect_error);
} 

$sql = "INSERT INTO Furniture(Fno, Fname, Brand, Category, Unit_price) VALUES ('$Number','$Name','$Brand','$Category','$Unit_price')";

if ($con->query($sql) === TRUE) {
    echo "Insert successfully.";
} else {
    echo "Insert failed.";
}

mysqli_close($con);

?>
</body>
</html>