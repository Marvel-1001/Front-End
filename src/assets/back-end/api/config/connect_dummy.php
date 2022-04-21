<?php
  function connect_dummy(){
  $servername = "sql10.freesqldatabase.com";
  $username = "sql10484534";
  $password = "vVtLPiqX62";
  $db = "sql10484534";
  
  // Create connection
  
$con = mysqli_connect($servername, $username, $password, $db);

// Check connection
if (!$con) {
  die("Connection to dummyDB failed: " . mysqli_connect_error());
}else{
    echo "connected to dummyDB successfully";
}

return $con;
  }

?>