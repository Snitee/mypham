<?php
    session_start();
    include '../db/connect.php';
    $checkaccount = 2;
    if(isset($_POST['username'])){
        $username = $_POST['username'];
        $password = $_POST['password'];
        // $_SESSION['username'] = $username;
        
        $sql = "SELECT * FROM khachhang WHERE email = '".$username."' AND password = '".$password."' ";
        
        $querry = mysqli_query($conn , $sql);
        $checkaccount = mysqli_num_rows($querry);
        if($checkaccount == 1 ){
            $_SESSION['username'] = $username;
            $row = mysqli_fetch_array($querry);
            $role = $row['role'];
            $_SESSION['role'] = $role;
            if( $role == 1 ){
                header('location: ../admin.php');
            } else {
                header('location: ../index.php');
            }

        } else {
            $checkaccount == 0;
            echo "<script> alert('Đăng nhập thất bại') </script>";
        }  
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="../style/style.css">
    <link rel="stylesheet" href="../images/icons/themify-icons/themify-icons.css">

</head>
<body>
<header>
        <div class="container-header">
            <img id="logo" src="../images/logo.png" alt="#">
            <ul id="nav-left">
                <li><a href="../index.php">Trang chủ</a></li>
                <li><a href="">Giới thiệu</a></li>
                <li><a href="">Nổi bật</a></li>
                <li><a href="product.php">Sản phẩm</a></li>
                <li><a href="">Tin tức</a></li>
            </ul>
            <div class="nav-right">
                <a class="sign-in" href="sign-in.php">Sign in</a>
                <a class="log-in" href="#">Log in</a>
            </div>
        </div>
</header>
        <div id="content">
            <div class="content-section">
                <div class="form-login">
                    <h1>LOG IN</h1>
                    <form action="" method="post">
                        <div class="box-input">
                            <input type="text" required name="username" placeholder="Email" class="form-input">
                        </div>
                        <div class="box-input">
                            <input type="password" required name="password" placeholder="Password" class="form-input">
                            <?php 
                                if( $checkaccount == 0 ){
                                    echo '<div style ="color: red;">Sai tên đăng nhập hoặc mật khẩu </div>';
                                }
                            ?>
                        </div>
                        <div class="box-input">
                            <button type="submit" name="login" class="btn-submit">LOGIN</button>
                        </div>
                    </form>
                </div>
                
            </div>
        </div>
</body>
</html>