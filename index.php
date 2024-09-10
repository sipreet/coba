<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css"> <!-- Menghubungkan file CSS untuk tampilan -->
    <title>Sistem Informasi Simpul - Login</title>
</head>
<body>

<div class="container">
    <div class="forms-container">
        <div class="signin-signup">
            <!-- Form Login -->
            <form action="" method="POST" class="sign-in-form"> <!-- Menggunakan action="" untuk memproses di file yang sama -->
                <h2 class="title">Login</h2>

                <!-- Username Field -->
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" name="username" placeholder="Username" required>
                </div>

                <!-- Password Field -->
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" placeholder="Password" required>
                </div>

                <!-- Submit Button -->
                <input type="submit" name="login" value="Login" class="btn solid">
            </form>
        </div>
    </div>

    <!-- Optional Sliding Panel (Hanya tampilan visual) -->
    <div class="panels-container">
        <div class="panel left-panel">
            <div class="content">
            
                <h3>Baru di sini?</h3>
                <p>Buat akun untuk memulai menggunakan layanan kami.</p>
                <button class="btn transparent" id="sign-up-btn">Sign up</button>
            </div>
            <img src="img/log.svg" class="image" alt="Login Image">
        </div>
        <div class="panel right-panel">
            <div class="content">
                <h3>Sudah punya akun?</h3>
                <p>Masuk dengan akun Anda dan nikmati layanan kami.</p>
                <button class="btn transparent" id="sign-in-btn">Sign in</button>
            </div>
            <img src="img/register.svg" class="image" alt="Sign up Image">
        </div>
    </div>
</div>

<!-- PHP Login Logic -->
<?php
// Menghubungkan ke database
include 'koneksi.php';

// Memeriksa apakah form login telah dikirim
if (isset($_POST['login'])) {
    // Mengambil input dari form
    $username = mysqli_real_escape_string($koneksi, $_POST['username']);
    $password = md5($_POST['password']); // Pastikan metode hash password sesuai

    // Query untuk mengecek user di database
    $login = mysqli_query($koneksi, "SELECT * FROM user WHERE user_username='$username' AND user_password='$password'");
    $cek = mysqli_num_rows($login);

    // Jika username dan password cocok
    if ($cek > 0) {
        session_start();
        $data = mysqli_fetch_assoc($login);
        
        // Menyimpan data user ke dalam session
        $_SESSION['id'] = $data['user_id'];
        $_SESSION['nama'] = $data['user_nama'];
        $_SESSION['username'] = $data['user_username'];
        $_SESSION['status'] = "user_login";
        
        // Redirect ke halaman user
        header("location:user/");
    } else {
        // Jika login gagal, tampilkan pesan error
        echo "<p style='color:red; text-align:center;'>Username atau password salah</p>";
    }
}
?>

<script src="app.js"></script>
</body>
</html>
