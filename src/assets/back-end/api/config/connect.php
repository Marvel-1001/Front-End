<?php

$servername = "MOE-ART028-NB02";
$username = "MOE-ART028-NB02\mwand";
$pwd = "";
$db = "LiteratureDatabase";

try {
  $conn = new PDO("sqlsrv:Server=$servername;database=$db", NULL, NULL);
  // set the PDO error mode to yexception
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