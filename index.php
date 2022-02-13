<?php
  echo "~ Question number 1 - Server Administration<br>";
  echo "Fahri Asmari<br><br>";

  $host = "192.168.0.3";
  $user = "root";
  $pass = "root_pw";
  $db   = "Trucorp";

  $conn = mysqli_connect($host, $user, $pass, $db);

  if(!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  $sql = "SELECT * FROM users";
  $result = mysqli_query($conn, $sql);

  if(mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
      echo "ID: ". $row["ID"]. " - Nama: ". $row["Nama"]. " - Alamat: ". $row["Alamat"]. " - Jabatan: ". $row["Jabatan"]. "<hr>";
    }
  }else {
    echo "0 results";
  }

  mysqli_close($conn);
?>