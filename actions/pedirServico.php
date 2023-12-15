<?php

$numero  = $_GET["numero"];
$pessoa = $_GET["pessoa"];

include "conectar.php";

$conn->query("INSERT INTO servicos (numero, ID_pessoa)
VALUES ('$numero', '$pessoa')");

if($conn->error != "") {
    echo $conn->error;
} else {
    header("location: ../index.php");
}

$conn->close();

?>