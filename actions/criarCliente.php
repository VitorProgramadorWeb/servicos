<?php

$nome  = $_GET["nome"];
$idade = $_GET["idade"];

include "conectar.php";

$conn->query("INSERT INTO pessoas (nome, idade)
VALUES ('$nome', '$idade')");

if($conn->error != "") {
    echo $conn->error;
} else {
    header("location: ../index.php");
}

$conn->close();

?>