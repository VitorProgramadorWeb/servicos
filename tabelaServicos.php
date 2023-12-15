<?php

include "actions/conectar.php";

$result = $conn->query("SELECT * FROM servicos")->fetch_all(MYSQLI_ASSOC);

echo "<table>";

    echo "<thead>";
            echo "<tr>";
                //echo "<th>ID_servico</th>";
                echo "<th>numero</th>";
                echo "<th>ID_pessoa</th>";
            echo "</tr>";
    echo "</thead>";

    echo "<tbody>";
        foreach ($result as $row => $value) {
            echo "<tr>";
                //echo "<td>".$value["ID_servico"]."</td>";
                echo "<td>".$value["numero"]."</td>";
                echo "<td>".$value["ID_pessoa"]."</td>";
            echo "</tr>";
        }
    echo "</tbody>";

echo "</table>";

$conn->close();

?>