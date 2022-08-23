<html>
<style>
th{
	padding-top:12px;
	padding-bottom:12px;
	text-align:left;
	background-color:#4CAF50;
	color:white;
}
table{
	border-collapse:collapse;
	width:100%;
}
td,th{
	border:ipx solid #ddd;
	padding:8px;
}

</style>
<head>

</head>
<body>




<?php

echo "<table border='2' >";
$servername = "localhost";
$username = "root";
$password = "";
$dbname="project";


$conn = new mysqli($servername, $username, $password,$dbname);
$sql="select fno,fname,owner from franchise";

$result=$conn->query($sql);

if($result->num_rows>0){
	echo "<b><i>FRANCHISE DETAILS ARE AS FOLLOWS  </b></i><tr>";
echo "<tr><th><b><i>FNO</b></i></th>
	  <th><b><i>FNAME</i></b></th>
	  <th><b><i>OWNER</b></i></th>";
	

while($row=$result->fetch_assoc())
{
	echo "<tr>";
echo "<td>".$row['fno']."</td>";
echo "<td>".$row['fname']."</td>";
echo "<td>".$row['owner']."</td>";
echo "</tr>";
}
}

else
{
echo "0 results";
}
$conn->close();
 

?>
</body>
</html>