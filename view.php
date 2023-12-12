<?php
include 'konekDB.php';

// Koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbname);

// Ambil data dari database berdasarkan ID
$id = $_GET['id'];
$query = "SELECT * FROM config_status_telco_new WHERE ID = $id";
$result = $conn->query($query);

// Tutup koneksi
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 16px;
        }

        form label {
            display: block;
            margin-bottom: 8px;
        }

        form input,
        form select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            grid-column: span 2;
        }
    </style>
</head>

<body>

    <h2 style="text-align: center;">View Data</h2>

    <form>
        <?php
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            echo '<label for="operator">Operator:</label>';
            echo '<input type="text" id="operator" name="operator" value="' . $row['operator'] . '" readonly>';

            echo '<label for="server">Server:</label>';
            echo '<input type="text" id="server" name="server" value="' . $row['server'] . '" readonly>';

            // Tambahkan baris lainnya sesuai kebutuhan

            echo '<label for="is_active">is Active:</label>';
            echo '<select id="is_active" name="is_active" disabled>';
            echo '<option value="1" ' . ($row['is_active'] == 1 ? 'selected' : '') . '>Aktif</option>';
            echo '<option value="0" ' . ($row['is_active'] == 0 ? 'selected' : '') . '>Non-Aktif</option>';
            echo '</select>';
        }
        ?>
        <button onclick="window.location.href='index.php'">Kembali</button>
    </form>

</body>

</html>