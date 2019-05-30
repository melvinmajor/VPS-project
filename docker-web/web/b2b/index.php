<!doctype html>
<html lang="en">
<head>
<title>WT B2B - Home</title>
<meta charset="utf-8">
<!-- <link rel="stylesheet" type="text/css" href="../css/style.css"> -->
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h1>WoodyToys Reseller</h1>
<div class=b2b>
<h2>B2B member portal</h2>
</div>
<div class=boxContent>
<h3>As part of the B2B of WoodyToys, you have access to this portal.</h3>
<p>Still not registered? Feel free to contact us!</p>
<p>Today, we are the:<br>
<?php
/* Prints the day, date, month, year, time, AM or PM
* Example:
* Wednesday 20th of March 2019, 10:38:33 AM - America/New_York
*/
echo date("l jS \of F Y, h:i:s A - e") . "<br>";
?>
<?php
$pass = getenv("DB_PASSWORD");
$mysqli = new mysqli('db', 'root', $pass, 'woodytoys', 3306);
if ($mysqli->connect_errno) {
echo "Connection to db failed";
} else {
if ($result = $mysqli->query("SELECT name, quantity FROM toys")) {
echo "<table>";
while($row = mysqli_fetch_array($result))  {
echo "<tr>";
echo "<td>" . $row['name'] . "</td>";
echo "<td>" . $row['quantity'] . "</td>";
echo "</tr>";
}

echo "</table>";

}
}

?>
</p>
</div>
<footer>
<p>EPHEC 2TL2 Group 13 &#169; 2019</p>
</footer>
</body>
</html>
