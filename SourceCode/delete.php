<html>
<form action="deletefurniture.php" method="GET">
Number: <input type="text" name="Fno" />
<button type="submit">Delete</button>
</form>
<?php

$con = mysqli_connect("127.0.0.1","root","root","furniture store",3306);

if ($con->connect_error) {
    die("Connet failed" . $con->connect_error);
} 

$sql = "SELECT * FROM Furniture";



$result = $con->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<br> Number: ". $row["Fno"]. " - Name: ". $row["Fname"]." - Brand: ". $row["Brand"]." - Category: ". $row["Category"]." - Unit_price: ". $row["Unit_price"];
    }
} else {
    echo "No result";
}
mysqli_close($con);

?>
</html>