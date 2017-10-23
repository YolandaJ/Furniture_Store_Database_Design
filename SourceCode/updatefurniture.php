<html>
<head>
<title>Update</title>
</head>

<body>
<?php

$Number=$_GET ["Fno"];
$Unit_price=$_GET ["Unit_price"];

$con = mysqli_connect("127.0.0.1","root","root","furniture store",3306);

if ($con->connect_error) {
    die("Connet failed" . $con->connect_error);
} 

$sql = "UPDATE Furniture SET Unit_price='$Unit_price' 
        WHERE Fno='$Number'";

if ($con->query($sql) === TRUE) {
    echo "Upate successfully.";
} else {
    echo "Update failed.";
}


mysqli_close($con);

?>
</body>
</html>