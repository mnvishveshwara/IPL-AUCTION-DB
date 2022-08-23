<html>
<body>
<?php
$inputuser=$_GET['fname'];
$inputpass=$_GET['pwd'];


$servername = "localhost";
$username = "root";
$password = "";
$dbname="project";

$conn = new mysqli($servername,$username, $password,$dbname);
$sql = "select * from franchise";
$result = $conn->query($sql);
if($result->num_rows>0){
	$i=0;
	$j=0;
while($res=$result->fetch_assoc())

{
$row[$i]=$res["fname"];
$rowp[$i]=$res["pwd"];
$i++;

}
$i--;
//echo "<br>".$i."";
//echo "<br>".$row[0]."";
//echo "<br>".$row[2]."";
//echo "<br>".$inputuser."";

//echo "<br>".$inputpass."";
//echo "<br>".$rowp[0]."";

while($j<=$i){
if($inputuser==$row[$j]){
	if($inputpass==$rowp[$j]){
		echo "<br> password correct ";
		header("Location: display11.php?&fname=$inputuser");
	}
	else{ $a=1;
	}
}
		
else { $a=1;
}
$j++;
}
if($a==1)
{
	echo "<h4>Invalid Username or Password</hr>";
echo "<a href='franchiselogin.html'><br><button> try again </button></a>";

}

}






echo "</table>";
$conn->close();

?>
</body>
</html>

