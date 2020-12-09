<?php
session_start();

if( isset($_SESSION["login"]) ){
    header("Location: login.php");
    exit;
}

require 'functions.php';

if(isset($_POST["login"]) ){
    $username = $_POST["username"];
    $password = $_POST["password"];

    $result = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");

    if(mysqli_num_rows($result) === 1 ) {
        $row = mysqli_fetch_assoc($result);
        if( password_verify($password, $row["password"]) ) {

            $_SESSION["login"] = true;

            header("Location: produk/produk.php");
            exit;
        }
    }

    $error = true;

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Halaman Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<?php if( isset($error) ) : ?>
<p style="color: red; font-style:italic;">username / password yang anda masukkan salah!</p>
<?php endif; ?>

<div class="container">
    <nav class="navbar navbar-default" style="background-image: url('../assets/bg.png'); margin: 0px;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Sistem Informasi Toko Tumpang Sari</a>
        </div>
    </div>
    </nav>
        <div class="col-md-4">
            <h1>Selamat Datang!</h1>
            <h3>Log-in</h3>   
        </div>
            <div class="col-md-4">
            <br>
                <form action="" method="post">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" name="username" class="form-control" id="username" autofocus>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password"  name="password" class="form-control" id="username">
                        <span><?=(isset($msg))?$msg:'';?></span>
                    </div>
                    <div class="form-group pull-right">
                        <button type="submit" class="btn btn-primary" name="login">Login</button>
                        <br><br><hr>
                    </div>
                </form>
                <br><br>
                <p>Belum punya akun?</p>    
                <a class="btn btn-default" href="regist.php" role="button">Sign Up</a>
            </div>
        </div>
    </div>

</body>
</html>