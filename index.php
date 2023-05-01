<?php
// 2502001164 - Marcelius Surya Wijaya
// Membuat koneksi ke database
$host = "redlock-db";
$username = "root";
$password = "root";
$dbname = "redlock";
    
$connection = new mysqli($host, $username, $password, $dbname) ;
	$result = $connection->query("SELECT * FROM users");

if (mysqli_num_rows($result) > 0) {
	// Menampilkan header tabel
	echo "<table border = '1'>";
	echo "<tr>
		<th>ID</th>
		<th>Nama</th>
		<th>Alamat</th>
		<th>Jabatan</th>
	</tr>";
	
	// Menampilkan isi tabel
	while($row = mysqli_fetch_assoc($result)) {
		echo "<tr>
			<td>".$row["ID"]."</td>
			<td>".$row["Nama"]."</td>
			<td>".$row["Alamat"]."</td>
			<td>".$row["Jabatan"]."</td>
		</tr>";
	}
	
	// Menampilkan footer tabel
	echo "</table>";
}
?>
