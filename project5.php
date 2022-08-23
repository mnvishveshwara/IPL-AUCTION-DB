<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname="project";

$conn = new mysqli($servername, $username, $password,$dbname);

$a=$_POST["pno"];
$b=$_POST["bidprice"];
$c=$_POST["soldfor"];




$sql = "INSERT INTO `auction`(`pno`, `bidprice`, `soldfor`) VALUES ('$a','$b','$c')";
$res=$conn->query($sql);
if( $res){
	header("refresh:3;homepage1.html");
echo "SUCCESFULL";

}
$conn->close();

?>

