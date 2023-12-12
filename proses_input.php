<?php
include 'konekDB.php';

// php koneksi DB
$conn = new mysqli($servername, $username, $password, $dbname);

// ambil data dari form
$operator = $_POST['operator'];
$server = $_POST['server'];
$user_ssh = $_POST['user_ssh'];
$pathlog = $_POST['pathlog'];
$logfile = $_POST['logfile'];
$status_err = $_POST['status_err'];
$service = $_POST['service'];
$vendor = $_POST['vendor'];
$url = $_POST['url'];
$port = $_POST['port'];
$fname = $_POST['fname'];
$uname = $_POST['uname'];
$upass = $_POST['upass'];
$is_active = $_POST['is_active'];

// Tambahkan kolom time_log untuk mencatat waktu
$query = "INSERT INTO config_status_telco_new (operator, server, user_ssh, pathlog, logfile, status_err, service, vendor, url, port, fname, uname, upass, is_active, time_log) 
        VALUES ('$operator', '$server', '$user_ssh', '$pathlog', '$logfile', '$status_err', '$service', '$vendor', '$url', '$port', '$fname', '$uname', '$upass', '$is_active', NOW())";

// validasi berhasil/tidak
if ($conn->query($query) === TRUE) {
    echo "Data berhasil disimpan.";
} else {
    echo "Error: " . $query . "<br>" . $conn->error;
}

echo '<br><a href="index.php">kembali ke Home</a>';

// Menutup koneksi
$conn->close();
