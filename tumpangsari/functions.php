<?php 

$conn = mysqli_connect("localhost","root","","dbtoko");

function query($query) { 
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while( $row = mysqli_fetch_assoc($result) ) {
        $rows[] = $row;
    }
    return $rows;
}

function add($prod) {
    global $conn;
    $id = $prod["id"];
    $nama = htmlspecialchars($prod["nama"]);
    $email = htmlspecialchars($prod["email"]);
    $alamat = htmlspecialchars($prod["alamat"]);

    $insert = "INSERT INTO pegawai 
                VALUES 
                ('','$nama','$email','$alamat')
                ";

    mysqli_query($conn, $insert);

    return mysqli_affected_rows($conn);

}

function hapus($id) {
    global $conn;

    $hapus = "DELETE FROM pegawai WHERE id = $id";
    mysqli_query($conn, $hapus);

    return mysqli_affected_rows($conn);
}

function ubah($prod) {
    global $conn;
    $id = $prod["id"];
    $nama = htmlspecialchars($prod["nama"]);
    $email = htmlspecialchars($prod["email"]);
    $alamat = htmlspecialchars($prod["alamat"]);

    $insert = "UPDATE pegawai SET
                id = '$id',
                nama = '$nama',
                email = '$email',
                alamat = '$alamat'
                WHERE id = '$id' ";

    mysqli_query($conn, $insert);

    return mysqli_affected_rows($conn);
}

function cari($keyword) {
    $query = "SELECT * FROM pegawai WHERE 
                id LIKE '%$keyword%'OR 
                nama LIKE '%$keyword%' OR 
                email LIKE '%$keyword%'    
                ";
    return query($query);
}

function registrasi($prod) {
    global $conn; 

    $username = strtolower(stripcslashes($prod["username"]));
    $password = mysqli_real_escape_string($conn, $prod["password"]);
    $password2 = mysqli_real_escape_string($conn, $prod["password2"]);

    $result = mysqli_query($conn, "SELECT username FROM user WHERE username = '$username'");
    if(mysqli_fetch_assoc($result) ) {
        echo "<script>
            alert('username anda sudah terdaftar!');
            </script>";
            header('Location: index.php');
        return false;
    }

    if( $password !== $password2) {
        echo "
        <script>
            alert('Password anda tidak sesuai!');
        </script>
        ";
        return false;
    }

    $password = password_hash($password, PASSWORD_DEFAULT);

    mysqli_query($conn, "INSERT INTO user VALUES('','$username','$password')");

    return mysqli_affected_rows($conn);
}

function addproduk($prod) {
    global $conn;
    $kode = $prod["kode"];
    $nama = htmlspecialchars($prod["nama"]);
    $stok = htmlspecialchars($prod["stok"]);
    $keterangan = $prod["keterangan"];
    $gambar = htmlspecialchars($prod["gambar"]);

    $gambar = upload();

    if( !$gambar ){
        return false;
    }

    $query = "INSERT INTO produk 
                VALUES 
                ('','$gambar','$nama','$stok','$keterangan')
                ";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);

}

function upload() {
    
    $namafile = $_FILES['gambar']['name'];
    $sizefile = $_FILES['gambar']['size'];
    $error = $_FILES['gambar']['error'];
    $tmpname = $_FILES['gambar']['tmp_name'];

    if( $error === 4 ) {
        echo "<script>
        alert('Pilih Gambar Produk!');
        </script>";
    
        return false;
    }

    $extgambarvalid = ['jpg','jpeg','png'];
    $extgambar = explode('.', $namafile);
    $extgambar = strtolower(end($extgambar));

    if( !in_array($extgambar, $extgambarvalid) ) {
        echo "<script>
        alert('Gambar yang anda masukkan salah!');
        </script>";
        return false;
    }

    if ( $sizefile > 10000000 ) {
        echo "
        <script>
        alert('Ukuran gambar terlalu besar!');
        </script>
        "; 
        return false;
    }

    move_uploaded_file( $tmpname, '../img/' . $namafile );

    return $namafile;
}

function ubahproduk($prod) {
    global $conn;
    $kode = $prod["kode"];
    $nama = htmlspecialchars($prod["nama"]);
    $stok = htmlspecialchars($prod["stok"]);
    $keterangan = $prod["keterangan"];

    $gambar = upload();

    if( !$gambar ){
        return false;
    }

    $insert = "UPDATE produk SET
                kode = '$kode',
                nama = '$nama',
                stok = '$stok',
                keterangan = '$keterangan',
                gambar = '$gambar'
                WHERE kode = '$kode'
                ";

    mysqli_query($conn, $insert);

    return mysqli_affected_rows($conn);
}

function cariprod($keyword) {
    $query = "SELECT * FROM produk WHERE 
                kode LIKE '%$keyword%'OR 
                nama LIKE '%$keyword%'     
                ";
    return query($query);
}

function hapusprod($kode) {
    global $conn;

    $hapusprod = "DELETE FROM produk WHERE kode = $kode";
    mysqli_query($conn, $hapusprod);

    return mysqli_affected_rows($conn);
}

?>