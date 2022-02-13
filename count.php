<?php
  echo "~ Question number 2 - Server Administration<br>";
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

  echo "count : ". mysqli_num_rows($result). "<hr>";

  mysqli_close($conn);
?>