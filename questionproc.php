<?php
$sports = $_POST["sports"];
$social = $_POST["social"];
$gaming = $_POST["gaming"];
$read = $_POST["read"];
$terms = $_POST["terms"];
$computer = $_POST["computer"];
$travel = $_POST["travel"];
$sing = $_POST["sing"];
$arabic = $_POST["arabic"];
$family = $_POST["family"];
$animals = $_POST["animals"];
$life = $_POST["life"];
$married = $_POST["married"];
require('dbconn.php');
@session_start();
if(isset($_SESSION['userpassword'])&&isset($_SESSION['username'])&&isset($_SESSION['userid'])){
            $userid = $_SESSION['userid'];
  $query = "INSERT INTO yornquestions (userid, sports, social, gaming, reading, terms, computer, travel, sing, arabic, family, animals, life, married ) VALUES ('$userid', '$sports', '$social', '$gaming', '$read', '$terms','$computer','$travel','$sing','$arabic','$family','$animals','$life','$married')";
  $result = mysqli_query($db, $query) or die ("Couldnt execute query.");
  if(!$result) {
echo "error";
  }
  else {
            header("Location: http://localhost/web%20project%20updated%20version3/#slide-1");
  }
}
?>
