<?php
include 'konekDB.php';

// koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// get ID
$id = $_GET['id'];

// validasi ID
if (!is_numeric($id)) {
    die("ID tidak valid");
}

// Ambil data dari tabel g_vendor untuk dropdown "vendor"
$queryVendor = "SELECT * FROM g_vendor";
$resultVendor = $conn->query($queryVendor);

// ambil data dari db
$query = "SELECT * FROM config_status_telco WHERE ID = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();

// tutup statement & close
$stmt->close();

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Data</title>
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
            width: 300px;
            margin: 0 auto;
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
        }

        .readonly {
            background-color: #f0f0f0;
            /* Warna abu-abu */
            color: #555;
            /* Warna teks */
        }
    </style>
</head>

<body>

    <h2 style="text-align: center;">Edit Data</h2>

    <form method="post" action="proses_update.php?id=<?php echo $id; ?>">

        <label for="id">ID:</label>
        <input type="text" id="id" name="id" value="<?php echo $row['id']; ?>" readonly class="readonly">

        <label for="operator">Operator:</label>
        <select id="operator" name="operator">
            <option value="Telkomsel" <?php echo ($row['operator'] == 'Telkomsel') ? 'selected' : ''; ?>>Telkomsel</option>
            <option value="Excelcom" <?php echo ($row['operator'] == 'Excelcom') ? 'selected' : ''; ?>>Excelcom</option>
            <option value="Indosat" <?php echo ($row['operator'] == 'Indosat') ? 'selected' : ''; ?>>Indosat</option>
            <option value="Hutchinson" <?php echo ($row['operator'] == 'Hutchinson') ? 'selected' : ''; ?>>Hutchinson</option>
            <option value="Smartfren" <?php echo ($row['operator'] == 'Smartfren') ? 'selected' : ''; ?>>Smartfren</option>
            <option value="International" <?php echo ($row['operator'] == 'International') ? 'selected' : ''; ?>>International</option>
            <option value="" <?php echo ($row['operator'] == '') ? 'selected' : ''; ?>>NULL</option>
        </select>

        <label for="server">Server:</label>
        <input type="text" id="server" name="server" value="<?php echo $row['server']; ?>">

        <label for="status_err">Status Error:</label>
        <input type="text" id="status_err" name="status_err" value="<?php echo $row['status_err']; ?>">

        <label for="service">Services:</label>
        <select id="service" name="service" required>
            <option value="Bulk" <?php echo ($row['service'] == 'Bulk') ? 'selected' : ''; ?>>Bulk</option>
            <option value="Bulk Reguler" <?php echo ($row['service'] == 'Bulk Reguler') ? 'selected' : ''; ?>>Bulk Reguler</option>
            <option value="Bulk Premium" <?php echo ($row['service'] == 'Bulk Premium') ? 'selected' : ''; ?>>Bulk Premium</option>
            <option value="Banking" <?php echo ($row['service'] == 'Banking') ? 'selected' : ''; ?>>Banking</option>
            <option value="" <?php echo ($row['service'] == '') ? 'selected' : ''; ?>>NULL</option>
        </select>

        <label for="vendor">Vendor:</label>
        <select id="vendor" name="vendor">
            <?php
            // Tampilkan dropdown untuk "vendor"
            if ($resultVendor->num_rows > 0) {
                while ($rowVendor = $resultVendor->fetch_assoc()) {
                    echo '<option value="' . $rowVendor["vendor_name"] . '" ' . ($row['vendor'] == $rowVendor["vendor_name"] ? 'selected' : '') . '>' . $rowVendor["vendor_name"] . '</option>';
                }
            }
            ?>
        </select>

        <label for="url">URL:</label>
        <input type="text" id="url" name="url" value="<?php echo $row['url']; ?>">

        <label for="fname">Fname:</label>
        <input type="text" id="fname" name="fname" value="<?php echo $row['fname']; ?>">

        <button type="submit">Update</button>
    </form>

</body>

</html>