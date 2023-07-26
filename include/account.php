<?php 
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TÀI KHOẢN - SWEET DREAM</title>
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
                <?php 
                    if( isset($_SESSION['giohang'])){
                        echo '
                            <li><a href="cart.php">Giỏ hàng ('.sizeof($_SESSION['giohang']).') </a></li>
                        ';
                    }
                ?>
                <?php 
                    if( isset($_SESSION['username'])) {
                        if(isset($_SESSION['role']) ){
                            $role = $_SESSION['role'];
                            if( $role == 1) 
                            echo '
                                <li><a href="../admin.php">Quản lý</a></li>
                            ';
                        }
                    }
                ?>
            </ul>
            <?php 
                if(isset($_SESSION['username']) ){
                    echo '
                    <div class="nav-right">
                        <a href="logout.php" class="log-in">Log out</a>
                    </div>
                    ';
                } else {
                    echo '
                        <div class="nav-right">
                            <a class="sign-in" href="sign-in.php">Sign in</a>
                            <a class="log-in" href="login.php">Log in</a>
                        </div>
                    ';
                }
            ?>
        </div>
    </header>
    <div id="content">
        <div class="content-section width-800">
            <h2> THÔNG TIN TÀI KHOẢN</h2>
            <div class="box-infor">
                <div class="infor-account">

                </div>
            </div>
        </div>
    </div>


</body>
</html>