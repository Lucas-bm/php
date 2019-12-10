<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
   <?php

   // 1º pegar dados da tela
   
   
    $email = $_POST['email'];
    $senha = md5($_POST['senha']);
   
   // 2º abrir conexao com o banco de dados
   
                  // (SERVIDOR, USUARIO, SENHA, BANCO)
    $con = mysqli_connect('localhost','root','','usuario');
   
   
    // 3º preparar a instrução de seleção

    $sql = "select * from usuario where email = '".$email."' and senha = '".$senha."'";
   
   
   // 4º executar a instrução no banco de dados

    $resultado = mysqli_query($con,$sql);

    if(mysqli_num_rows($resultado)>0){
       // echo "Encontrei";
       header("Location:painel.php");
    }else{
        echo "Não encontrei"; 
    }
   
   ?>

</body>
</html>







