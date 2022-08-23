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

 
 
$a=$_GET["soldfor"];
$b=$_GET["pno"];
$c=$_GET["bidprice"];


$sql="select p.pno,a.soldfor
from playerdetails p,auction a
where p.pno='$b'
and a.soldfor='$a'";
$res=$conn->query($sql);
if($res->num_rows>0)
{
	
		while($re=$res->fetch_assoc())
		{
			




$sql1="update auction set soldfor='$a',bidprice='$c' where pno='$b'";


$res1=$conn->query($sql1);


if($res1)


	header("refresh:3;homepage1.html");	
echo "PLAYER UPDATED";
break;
}

}
else
{
	
	header("refresh:3;update.html");
	echo "ERROR";
}
	
$conn->close();

?>

