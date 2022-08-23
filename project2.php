<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname="project";

$conn = new mysqli($servername, $username, $password,$dbname);

$a=$_POST["pno"];
$b=$_POST["matches"];
$c=$_POST["runsscored"];
$d=$_POST["battingavg"];
$e=$_POST["strikerate"];
$f=$_POST["bestscore"];
$g=$_POST["bowlingavg"];
$h=$_POST["wicketstaken"];
$i=$_POST["economy"];
$j=$_POST["bestbowling"];




$sql = "INSERT INTO `carrierstatistics`(`pno`, `matches`, `runsscored`, `battingavg`, `strikerate`, `bestscore`, `bowlingavg`, `wicketstaken`, `economy`, `bestbowling`) VALUES('$a','$b','$c','$d','$e','$f','$g','$h','$i','$j')";
$res=$conn->query($sql);
if($res){
header("location:auction.html");
exit();
}
$conn->close();

?>

