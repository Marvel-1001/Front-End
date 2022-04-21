<?php

$servername = "(local)\SQLEXPRESS";
$username = "sa";
$pwd = "sqladpass";
$db = "literatureDB";

try {
  $conn = new PDO("sqlsrv:Server=$servername;database=$db", $username, $pwd);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();

  //fall back to dummyDB
  include 'connect_dummy.php';
  return connect_dummy();
}

return $conn;
?>