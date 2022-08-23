<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname="project";

$conn = new mysqli($servername, $username, $password,$dbname);
if($conn->connect_error)
{
die("connection failed:" .$conn->connect_error);
}
$a=$_GET["pno"];

$sql="select p.pno from playerdetails p where p.pno='$a'";
$res=$conn->query($sql);
if($res->num_rows>0)
{
	
		while($re=$res->fetch_assoc())
		{
			
$sql1 ="delete from playerdetails where pno='$a'"; 
$res1=$conn->query($sql1);
	header("refresh:3;homepage1.html");
	
echo "PLAYER DELETED";
		}
		}

		
else
{
	
	header("refresh:3;deletep.html");
	echo "ERROR";
}
$conn->close();

?>

