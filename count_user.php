<?php
// 2502001164 - Marcelius Surya Wijaya
// Membuat koneksi ke database
$host = "redlock-db";
$username = "root";
$password = "root";
$dbname = "redlock";
    
$connection = new mysqli($host, $username, $password, $dbname) ;
	$result = $connection->query("SELECT COUNT(*) AS total FROM users");
	$row = mysqli_fetch_assoc($result);
	$total = $row['total'];

echo "Total User: ".$total;
?>
