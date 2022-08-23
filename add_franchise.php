<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname="project";

$conn = new mysqli($servername, $username, $password,$dbname);

$a=$_POST["fno"];
$b=$_POST["fname"];
$c=$_POST["owner"];
$d=$_POST["pwd"];






$sql = "INSERT INTO `franchise`(`fno`, `fname`, `owner`, `pwd`) VALUES ('$a','$b','$c','$d')";
$res=$conn->query($sql);
if($res){

header("refresh:3;deleteplayer.html");	
echo "Franchise Details Added";
exit();
}
$conn->close();

?>

