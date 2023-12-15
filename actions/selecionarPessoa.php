<?php

include "conectar.php";

$result = $conn->query("SELECT * FROM pessoas")->fetch_all(MYSQLI_ASSOC);

foreach ($result as $row => $value) {
    echo "<option value='".$value["ID_pessoa"]."'>".$value["nome"]."</option>";
}

$conn->close();

?>