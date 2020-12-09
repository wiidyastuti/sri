<?php

session_start();

if( !isset($_SESSION["login"]) ){
    header("Location: ../login.php");
    exit;
}

require '../functions.php';

if( isset($_POST["submit"]) ) {

    if(add($_POST) > 0 ) {
        echo "
        <script>
            alert('data berhasil ditambahkan!');
            document.location.href = '../index.php'
        </script>
        ";
    } else {
        echo " 
        <script>
            alert('data gagal ditambahkan!');
            document.location.href = '../index.php'
        </script>
        ";
    }

}
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
    <title>Tambah Data Pegawai</title>
    <style>
        label {
            display: block;
        }
    </style>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-default" style="background-image: url('../assets/bg.png'); margin: 0px;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Sistem Informasi Toko Tumpang Sari</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
    </nav>
        <div class="content center" >
            <hr>
            <h1></h1>
            <h3>Tambah Data Pegawai</h3>
            <div class="col-md-offset-4 col-md-4 ">
                <form action="" method="post">
                    <div class="form-group">
                        <label for="nama">Nama</label>
                        <input type="text" name="nama" class="form-control" id="nama">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text"  name="email" class="form-control" id="email">
                    </div>
                    <div class="form-group">
                        <label for="alamat">Alamat</label>
                        <input type="text"  name="alamat" class="form-control" id="alamat">
                    </div>
                    <div class="form-group pull-right">
                        <button type="submit" class="btn btn-primary" name="submit">Tambah Data!</button>
                    </div>
                    <a class="btn btn-default" href="../pegawai.php" role="button">Kembali</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>