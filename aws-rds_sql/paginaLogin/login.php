<?php
    $servername = "mariadb.cea5zastcr2u.us-east-1.rds.amazonaws.com";
    $username = "mariadb";
    $password = "mariadb1";
    $dbname = "aplicacao";

    $email = $_POST['email'];
    $senha = $_POST['senha'];

    // Cria a conexão com o banco de dados
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verifica se ocorreu algum erro na conexão
    if ($conn->connect_error) {
        die("Falha na conexão: " . $conn->connect_error);
    }

    // Executa a consulta para verificar o login
    $sql = "SELECT * FROM users WHERE email = '$email' AND senha = '$senha'";
    $result = $conn->query($sql);

    // Verifica se o login foi realizado com sucesso
    if ($result->num_rows > 0) {
        echo "Sucesso no Login";
    } else {
        echo "Fracasso no Login";
    }

    // Fecha a conexão com o banco de dados
    $conn->close();
?>