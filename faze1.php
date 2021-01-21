<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fase 1</title>
</head>
<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>
<body>
    <h1>Usuários e Grupos</h1>
    <table>
        <tr>
            <th>Usuário</th>
            <th>Grupos</th>
        </tr>
        <?php
        $mysqli = new mysqli("localhost","root","","test");

        if($mysqli->connect_errno){
            echo "Falaha ao conectar no banco ".$mysqli->connect_error;
            $mysqli->close();
        }

        $sql = "SELECT u.nome as usuario, g.nome as grupo
                FROM usuarios_grupos ug
                INNER JOIN usuarios u ON (u.id = ug.usuario_id)
                INNER JOIN grupos g ON (g.id = ug.grupo_id)";

        if($resultado = $mysqli->query($sql)){
            while($linha = $resultado->fetch_assoc()){
                echo "<tr>
                        <td>".$linha["usuario"]."</td><td>".$linha["grupo"]."</td>
                    </tr>";
            }
            $resultado->close();
        }
        $mysqli->close();
        ?>
    </table>
</body>
</html>