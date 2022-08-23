<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname="project";

$conn = new mysqli($servername, $username, $password,$dbname);

$a=$_POST["pno"];
$b=$_POST["pname"];
$c=$_POST["age"];
$d=$_POST["country"];
$e=$_POST["category"];





$sql = "INSERT INTO `playerdetails`(`pno`, `pname`, `age`, `country`, `category`) VALUES ('$a','$b','$c','$d','$e')";
$res=$conn->query($sql);
if($res){
header("location:carrierstastics.html");
exit();
}
$conn->close();

?>

