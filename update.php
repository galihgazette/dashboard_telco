<?php
include 'konekDB.php';

// php koneksi DB
$conn = new mysqli($servername, $username, $password, $dbname);

// Ambil ID dari URL
$id = $_GET['id'];

// Validasi ID
if (!is_numeric($id)) {
    die("ID tidak valid");
}

// Query SQL untuk mendapatkan data yang akan diupdate
$query = "SELECT * FROM config_status_telco_new WHERE ID = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $id);

// Eksekusi query
$stmt->execute();

// Ambil hasil query
$result = $stmt->get_result();

// Cek apakah data ditemukan
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
} else {
    die("Data tidak ditemukan");
}

// Tutup statement
$stmt->close();

// Ambil data dari tabel g_vendor untuk dropdown "vendor"
$queryVendor = "SELECT * FROM g_vendor";
$resultVendor = $conn->query($queryVendor);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Form</title>
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

        form input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

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

        .password-container {
            position: relative;
            display: flex;
            align-items: center;
        }


        form .input-group {
            position: relative;
            width: 100%;
        }


        form .toggle-password {
            position: absolute;
            top: 35%;
            right: 0;
            transform: translateY(-50%);
            cursor: pointer;
            padding: 5px;
        }
    </style>
</head>

<body>

    <h2 style="text-align: center;">Edit Data</h2>

    <form method="post" action="proses_update.php?id=<?php echo $id; ?>">

        <!-- Form input disini  -->
        <label for="id">ID:</label>
        <input type="text" id="id" name="id" value="<?php echo $row['id']; ?>" readonly>

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

        <!-- Input untuk field baru -->
        <label for="user_ssh">User SSH:</label>
        <input type="text" id="user_ssh" name="user_ssh" value="<?php echo $row['user_ssh']; ?>">

        <label for="pathlog">Path Log:</label>
        <input type="text" id="pathlog" name="pathlog" value="<?php echo $row['pathlog']; ?>">

        <label for="logfile">Log File:</label>
        <input type="text" id="logfile" name="logfile" value="<?php echo $row['logfile']; ?>">

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
        <select id="vendor" name="vendor" required>
            <?php
            // Tampilkan dropdown untuk "vendor"
            if ($resultVendor->num_rows > 0) {
                while ($rowVendor = $resultVendor->fetch_assoc()) {
                    echo '<option value="' . $rowVendor["vendor_name"] . '" ' . (($row['vendor'] == $rowVendor["vendor_name"]) ? 'selected' : '') . '>' . $rowVendor["vendor_name"] . '</option>';
                }
            }
            ?>
        </select>

        <label for="url">URL:</label>
        <input type="text" id="url" name="url" value="<?php echo $row['url']; ?>">

        <label for="port">Port:</label>
        <input type="text" id="port" name="port" value="<?php echo $row['port']; ?>">

        <label for="fname">Fname:</label>
        <input type="text" id="fname" name="fname" value="<?php echo $row['fname']; ?>">

        <label for="uname">Username:</label>
        <input type="text" id="uname" name="uname" value="<?php echo $row['uname']; ?>">

        <!--   <label for="upass">Password:</label>
        <div class="password-container">
            <input type="password" id="upass" name="upass" value="<?php echo $row['upass']; ?>">
            <span class="toggle-password" onclick="togglePasswordVisibility()">👁️</span>
        </div> -->

        <label for="upass">Password:</label>
        <div class="input-group">
            <input type="password" id="upass" name="upass" value="<?php echo $row['upass']; ?>">
            <span class="toggle-password" onclick="togglePasswordVisibility('upass')">👁️</span>
        </div>

        <label for="is_active">is Active:</label>
        <select id="is_active" name="is_active">
            <option value="1" <?php echo ($row['is_active'] == '1') ? 'selected' : ''; ?>>Aktif</option>
            <option value="0" <?php echo ($row['is_active'] == '0') ? 'selected' : ''; ?>>Non-Aktif</option>
        </select>

        <button type="submit">Update</button>
    </form>

</body>

<script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementById('upass');
        var passwordType = passwordInput.getAttribute('type');

        // Toggle tipe input antara password dan text
        passwordInput.setAttribute('type', passwordType === 'password' ? 'text' : 'password');
    }
</script>

</html>