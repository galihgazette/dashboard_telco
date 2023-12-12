<?php
include 'konekDB.php';

// Koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbname);

// Mendapatkan ID dari URL
$id = $_GET['id'];

// Validasi ID
if (!is_numeric($id)) {
    die("ID tidak valid");
}

// Query SQL untuk memeriksa data yang akan dihapus
$checkQuery = "SELECT * FROM config_status_telco_new WHERE ID=?";
$checkStmt = $conn->prepare($checkQuery);
$checkStmt->bind_param("i", $id);
$checkStmt->execute();
$result = $checkStmt->get_result();
$row = $result->fetch_assoc();

// Tutup statement
$checkStmt->close();

// Periksa apakah data ditemukan
if (!$row) {
    die("Data tidak ditemukan.");
}

// Jika formulir konfirmasi dikirimkan
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Query SQL untuk delete
    $deleteQuery = "DELETE FROM config_status_telco_new WHERE ID=?";
    $deleteStmt = $conn->prepare($deleteQuery);
    $deleteStmt->bind_param("i", $id);

    // Jalankan query delete
    if ($deleteStmt->execute()) {
        echo "Data berhasil dihapus.";
    } else {
        echo "Error: " . $deleteStmt->error;
    }

    // Tutup statement delete
    $deleteStmt->close();

    // Tutup koneksi
    $conn->close();

    echo '<br><a href="index.php">Kembali ke Home</a>';
    exit; // Hentikan eksekusi setelah menghapus data
}

// Tutup koneksi
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Data</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }

        h2 {
            color: #333;
        }

        p {
            color: #555;
            margin-bottom: 20px;
        }

        form {
            display: inline-block;
        }

        button {
            padding: 10px;
            background-color: #d9534f;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #c9302c;
        }

        a {
            display: inline-block;
            margin-left: 10px;
            padding: 10px;
            background-color: #5bc0de;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        a:hover {
            background-color: #46b8da;
        }
    </style>

</head>

<body>

    <h2>Hapus Data</h2>

    <p>Apakah Anda yakin ingin menghapus data ini?</p>

    <form method="post" action="">
        <button type="submit">Ya, Hapus</button>
    </form>

    <a href="index.php">Tidak, Kembali ke Home</a>

</body>

</html>