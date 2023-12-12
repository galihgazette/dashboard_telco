<?php
include 'konekDB.php';

// Koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbname);

// Ambil data dari form update
$id = $_POST['id'];
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

// Query SQL untuk update data
$query = "UPDATE config_status_telco_new SET 
        operator='$operator', 
        server='$server', 
        user_ssh='$user_ssh', 
        pathlog='$pathlog', 
        logfile='$logfile', 
        status_err='$status_err', 
        service='$service', 
        vendor='$vendor', 
        url='$url', 
        port='$port', 
        fname='$fname', 
        uname='$uname', 
        upass='$upass', 
        is_active='$is_active' 
        WHERE id=$id";

// Validasi berhasil atau tidak
if ($conn->query($query) === TRUE) {
    echo "Data berhasil diupdate.";
} else {
    echo "Error: " . $query . "<br>" . $conn->error;
}

echo '<br><a href="index.php">kembali ke Home</a>';

// Menutup koneksi
$conn->close();
