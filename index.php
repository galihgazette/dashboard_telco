<?php
$servername = "127.0.0.1";
$username = "galih";
$password = "galih123";
$dbname = "telco";

// php koneksi DB
$conn = new mysqli($servername, $username, $password, $dbname);

$query = "SELECT * FROM `config_status_telco` ORDER by id DESC";
$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Dashboard</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			margin: 20px;
		}

		table {
			width: 100%;
			border-collapse: collapse;
			margin-top: 20px;
		}

		th,
		td {
			border: 1px solid #ddd;
			padding: 8px;
			text-align: left;
		}

		th {
			background-color: #f2f2f2;
		}

		button {
			margin-top: 10px;
			margin-right: 10px;
			padding: 10px;
			background-color: #4CAF50;
			color: white;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}

		#searchInput {
			float: right;
			margin-top: 10px;
			padding: 10px;
			border: 1px solid #ddd;
			border-radius: 4px;
		}

		.delete-icon {
			color: red;
		}

		.edit-icon {
			color: greenyellow;
		}
	</style>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
</head>

<body>

	<h2>Dashboard</h2>

	<input type="text" id="searchInput" placeholder="Cari...">

	<button id="openFormButton">New Data</button>

	<table id="dataTable">
		<thead>
			<tr>
				<th>ID</th>
				<th>Operator</th>
				<th>Server</th>
				<th>Status Error</th>
				<th>Service</th>
				<th>Vendor</th>
				<th>URL</th>
				<th>File name</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<?php
			//data dalam tabel
			if ($result->num_rows > 0) {
				while ($row = $result->fetch_assoc()) {
					echo "<tr>";
					echo "<td>" . $row["id"] . "</td>";
					echo "<td>" . $row["operator"] . "</td>";
					echo "<td>" . $row["server"] . "</td>";
					echo "<td>" . $row["status_err"] . "</td>";
					echo "<td>" . $row["service"] . "</td>";
					echo "<td>" . $row["vendor"] . "</td>";
					echo "<td>" . $row["url"] . "</td>";
					echo "<td>" . $row["fname"] . "</td>";
					echo '<td><a href="update.php?id=' . $row["id"] . '"><i class="bi bi-pencil-fill edit-icon"></i></a></td>';
					echo '<td><a href="delete.php?id=' . $row["id"] . '"><i class="bi bi-trash3-fill delete-icon"></i></a></td>';
					echo "</tr>";
				}
			} else {
				echo "<tr><td colspan='3'>Tidak ada data</td></tr>";
			}
			?>
		</tbody>
	</table>

	<!-- fungsi button -->

	<script>
		document.getElementById('openFormButton').addEventListener('click', function() {
			window.location.href = 'form_input.php';
		});
	</script>


	<!-- fungsi search -->

	<script>
		document.getElementById('searchInput').addEventListener('input', function() {
			var filter = this.value.toUpperCase();
			var table = document.getElementById('dataTable');
			var rows = table.getElementsByTagName('tr');

			for (var i = 1; i < rows.length; i++) {
				var cells = rows[i].getElementsByTagName('td');
				var found = false;

				for (var j = 0; j < cells.length; j++) {
					var cellText = cells[j].innerText.toUpperCase() || cells[j].textContent.toUpperCase();

					if (cellText.indexOf(filter) > -1) {
						found = true;
						break;
					}
				}

				if (found) {
					rows[i].style.display = '';
				} else {
					rows[i].style.display = 'none';
				}
			}
		});
	</script>



</body>

</html>