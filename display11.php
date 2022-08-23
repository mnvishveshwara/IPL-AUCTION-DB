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
$input=$_GET['fname'];
echo "<table border='2' >";
$servername = "localhost";
$username = "root";
$password = "";
$dbname="project";

echo "<body background=\"".$input.".jpg\"  style=\"background-position:bottom; background-repeat:no-repeat;\">";
$conn = new mysqli($servername, $username, $password,$dbname);
$sql="select p.pno,p.pname,p.age, p.country,p.category,c.matches,c.runsscored,c.battingavg,c.strikerate,c.bestscore,c.bowlingavg,c.wicketstaken,c.economy,c.bestbowling,a.bidprice
from playerdetails p,franchise f,auction a,carrierstatistics c
where a.pno=p.pno
and a.soldfor=f.fno
and c.pno=p.pno
and f.fname='$input'
group by p.pno";
$result=$conn->query($sql);

if($result->num_rows>0){
	echo "<b><i>PLAYER DETAILS ARE AS FOLLOWS  </b></i><tr>";
echo "<tr><th><b><i>PNO</b></i></th>
	  <th><b><i>PNAME</i></b></th>
	  <th><b><i>AGE</b></i></th>
	  <th><b><i>COUNTRY</b></i></th>
	  <th><b><i>CATEGORY</b></i></th>
	  <th><b><i>MATCHES</b></i></th>
	  <th><b><i>RUNS SCORED</b></i></th>
	  <th><b><i>BATTING AVG</b></i></th>
	  <th><b><i>STRIKE RATE</b></i></th>
	  <th><b><i>BEST SCORE</b></i></th>
	  <th><b><i>BOWLING AVG</b></i></th>
	  <th><b><i>WICKETS TAKEN</b></i></th>
	  <th><b><i>ECONOMY</b></i></th>
	  <th><b><i>BEST BOWLING</b></i></th>
	  <th>BID PRICE</th></tr>";

while($row=$result->fetch_assoc())
{
	echo "<tr>";
echo "<td>".$row['pno']."</td>";
echo "<td>".$row['pname']."</td>";
echo "<td>".$row['age']."</td>";
echo "<td>".$row['country']."</td>";
echo "<td>".$row['category']."</td>";
echo "<td>".$row['matches']."</td>";
echo "<td>".$row['runsscored']."</td>";
echo "<td>".$row['battingavg']."</td>";
echo "<td>".$row['strikerate']."</td>";
echo "<td>".$row['bestscore']."</td>";
echo "<td>".$row['bowlingavg']."</td>";
echo "<td>".$row['wicketstaken']."</td>";
echo "<td>".$row['economy']."</td>";
echo "<td>".$row['bestbowling']."</td>";
echo "<td>".$row['bidprice']."</td>";
echo "</tr>";
}
}

else
{
echo "<b><center>No Players are there for this franchise</center></b>";
}
$conn->close();
 

?>
</body>
</html>