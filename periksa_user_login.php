<?php
// Menghubungkan dengan koneksi
include 'koneksi.php';

// Menangkap data yang dikirim dari form
$username = $_POST['username'];
$password = md5($_POST['password']); // Pastikan hash metode sesuai dengan yang di database

// Cek apakah username dan password sesuai
$login = mysqli_query($koneksi, "SELECT * FROM user WHERE user_username='$username' AND user_password='$password'");
$cek = mysqli_num_rows($login);

if ($cek > 0) {
    session_start();
    $data = mysqli_fetch_assoc($login);
    
    // Set session untuk user yang berhasil login
    $_SESSION['id'] = $data['user_id'];
    $_SESSION['nama'] = $data['user_nama'];
    $_SESSION['username'] = $data['user_username'];
    $_SESSION['status'] = "user_login";
    
    // Redirect ke halaman user
    header("location:user/");
} else {
    // Jika login gagal, arahkan kembali ke halaman login dengan pesan error
    header("location:index.php?alert=gagal");
    exit();
}
?>
