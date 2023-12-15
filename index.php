<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Serviços</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        .container {
            display: flex;
            align-items: baseline;
        }

        table {
            border: 1px solid;
            border-collapse: collapse;
            margin: 30px;
        }
        th, td {
            border: 1px solid;
        }
        th {
            background-color: grey;
        }
    </style>
    
</head>
<body>

    <form action="actions/criarCliente.php">
        <div>Criar pessoa:</div>
        nome: <input type="text" name="nome">
        idade: <input type="number" name="idade">
        <input type="submit">
    </form>

    <div class="container">
        <?php include "tabelaPessoas.php" ?>
        <?php include "tabelaServicos.php" ?>
    </div>

    <form action="actions/pedirServico.php">
        <div>Pedir serviço:</div>
        numero: <input type="text" name="numero">
        pessoa:
        <select name="pessoa">
            <option></option>
            <?php include "actions/selecionarPessoa.php" ?>
        </select>
        <input type="submit">
    </form>

</body>
</html>