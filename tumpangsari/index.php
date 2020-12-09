<?php

// session_start();

// if( !isset($_SESSION["login"]) ){
//     header("Location: login.php");
//     exit;
// }

require 'functions.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Toko Tumpang Sari</title>
</head>
<body>
<div class="container">
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="img/1.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
<div class="jumbotron">
  <h1 class="display-4">Tumpang Sari</h1>
  <p class="lead">Toko Tumpang Sari menyediakan berbagai kebutuhan sehari-hari Anda dengan harga grosir dan eceran!</p>
  <hr class="my-4">
  <p>Jangan lewatkan berbagai keuntungan saat berbelanja di toko kami!</p>
  <a class="btn btn-primary btn-lg" href="login.php" role="button">Login</a>
  <a class="btn btn-primary btn-lg" href="regist.php" role="button">SigUp</a>
  
</div>

</div>

<div class="card text-center bg-dark">
  <div class="card-footers">
    Toko Tumpang Sari
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p>Jalan Raya Desa Jagaraga - Menyali. (+62) 857 - 3953-37**</p>
    </blockquote>
  </div>
</div>
</body>
</html>


