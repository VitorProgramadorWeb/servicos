<?php

include "actions/conectar.php";

$result = $conn->query("SELECT * FROM pessoas")->fetch_all(MYSQLI_ASSOC);

echo "<table>";

    echo "<thead>";
            echo "<tr>";
                echo "<th>ID</th>";
                echo "<th>nome</th>";
                echo "<th>idade</th>";
            echo "</tr>";
    echo "</thead>";

    echo "<tbody>";
        foreach ($result as $row => $value) {
            echo "<tr>";
                echo "<td>".$value["ID_pessoa"]."</td>";
                echo "<td>".$value["nome"]."</td>";
                echo "<td>".$value["idade"]."</td>";
            echo "</tr>";
        }
    echo "</tbody>";

echo "</table>";

$conn->close();

?>