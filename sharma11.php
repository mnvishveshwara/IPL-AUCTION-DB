<?php
$inputuser=$_GET['username'];
$inputpass=$_GET['pwd'];


$servername = "localhost";
$username = "root";
$password = "";
$dbname="sharma";

$conn = new mysqli($servername, $username, $password,$dbname);
$sql = "select * from admin ";
$result = $conn->query($sql);
if($result->num_rows>0){
	$i=0;
while($res=$result->fetch_assoc())

{
$row[$i]=$res["username"];
$rowp[$i]=$res["pwd"];
$i++;

}


echo "<br>".$row[0]."";

echo "<br>".$inputuser."";

echo "<br>".$inputpass."";
echo "<br>".$rowp[0]."";

while($i!=0){
if($inputuser==$row[0]){
	if($inputpass==$rowp[0]){
		echo "<br> password correct ";
		header("Location:playerdetails.html?usid=$inputuser");
	}
	else{ echo "<br>wrong password ";
	echo "<a href='adminlogin.html'><br><button> try again </button></a>";
	}
}	
else {echo "<br>wrong user name";

echo "<a href='adminlogin.html'><br><button> try again </button></a>";

}
$i--;
}



}



echo "</table>";
$conn->close();

?>

/