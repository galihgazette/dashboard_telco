<?php
include 'konekDB.php';

// php koneksi DB
$conn = new mysqli($servername, $username, $password, $dbname);


// Ambil data dari tabel g_vendor untuk dropdown "vendor"
$queryVendor = "SELECT * FROM g_vendor";
$resultVendor = $conn->query($queryVendor);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input Form</title>
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

    <h2 style="text-align: center;">Input Form</h2>

    <form method="post" action="proses_input.php">
        <label for="operator">Operator:</label>
        <select id="operator" name="operator">
            <option value="Telkomsel">Telkomsel</option>
            <option value="Excelcom">Excelcom</option>
            <option value="Indosat">Indosat</option>
            <option value="Hutchinson">Hutchinson</option>
            <option value="Smartfren">Smartfren</option>
            <option value="International">International</option>
            <option value="">NULL</option>
        </select>

        <label for="server">Server:</label>
        <input type="text" id="server" name="server">

        <label for="user_ssh">User SSH:</label>
        <input type="text" id="user_ssh" name="user_ssh">

        <label for="pathlog">Path Log:</label>
        <input type="text" id="pathlog" name="pathlog">

        <label for="logfile">Log File:</label>
        <input type="text" id="logfile" name="logfile">

        <label for="status_err">Status Error:</label>
        <input type="text" id="status_err" name="status_err">

        <label for="service">Services:</label>
        <select id="service" name="service">
            <option value="Bulk">Bulk</option>
            <option value="Bulk Reguler">Bulk Reguler</option>
            <option value="Bulk Premium">Bulk Premium</option>
            <option value="Banking">Banking</option>
            <option value="">NULL</option>
        </select>

        <label for="vendor">Vendor:</label>
        <select id="vendor" name="vendor">
            <?php
            // Tampilkan dropdown untuk "vendor"
            if ($resultVendor->num_rows > 0) {
                while ($rowVendor = $resultVendor->fetch_assoc()) {
                    echo '<option value="' . $rowVendor["vendor_name"] . '">' . $rowVendor["vendor_name"] . '</option>';
                }
            }
            ?>
        </select>

        <label for="url">URL:</label>
        <input type="text" id="url" name="url">

        <label for="port">Port:</label>
        <input type="text" id="port" name="port">

        <label for="fname">Fname:</label>
        <input type="text" id="fname" name="fname">

        <label for="uname">Username:</label>
        <input type="text" id="uname" name="uname">

        <label for="upass">Password:</label>
        <div class="input-group">
            <input type="password" id="upass" name="upass">
            <span class="toggle-password" onclick="togglePasswordVisibility('upass')">👁️</span>
        </div>

        <label for="is_active">is Active:</label>
        <select id="is_active" name="is_active" required>
            <option value="1">Aktif</option>
            <option value="0">Non-Aktif</option>
        </select>

        <button type="submit">Submit</button>
    </form>

</body>

<script>
    function togglePasswordVisibility(inputId) {
        var passwordInput = document.getElementById(inputId);
        var type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordInput.setAttribute('type', type);
    }
</script>


</html>