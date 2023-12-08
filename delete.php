<?php
include 'konekDB.php';

// koneksi
$conn = new mysqli($servername, $username, $password, $dbname);


// get ID
$id = $_GET['id'];

// validai ID
if (!is_numeric($id)) {
    die("ID tidak valid");
}



// Query SQL untuk delete
$deleteQuery = "DELETE FROM config_status_telco WHERE ID=?";
$deleteStmt = $conn->prepare($deleteQuery);
$deleteStmt->bind_param("i", $id);

// Jalanin query delete
if ($deleteStmt->execute()) {
    echo "Data berhasil dihapus.";
} else {
    echo "Error: " . $deleteStmt->error;
}



echo '<br><a href="index.php">kembali ke Home</a>';

// tutup statement delete
$deleteStmt->close();

$conn->close();
