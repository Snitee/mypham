<?php 
    session_start();
?>

<header>
        <div class="container-header">
            <img id="logo" src="images/logo.png" alt="#">
            <ul id="nav-left">
                <li><a href="#">Trang chủ</a></li>
                <li><a href="">Giới thiệu</a></li>
                <li><a href="">Nổi bật</a></li>
                <li><a href="include/product.php">Sản phẩm</a></li>
                <li><a href="">Tin tức</a></li>
                <?php 
                    if( isset($_SESSION['giohang'])){
                        echo '
                            <li><a href="include/cart.php">Giỏ hàng ('.sizeof($_SESSION['giohang']).') </a></li>
                        ';
                    }
                ?>
                <?php 
                    if( isset($_SESSION['username'])) {
                        if(isset($_SESSION['role']) ){
                            $role = $_SESSION['role'];
                            if( $role == 1) 
                            echo '
                                <li><a href="admin.php">Quản lý</a></li>
                            ';
                        }
                    }
                ?>
            </ul>
            <?php 
                if(isset($_SESSION['username']) ){
                    echo '
                    <div class="nav-right">
                        <a href="include/logout.php" class="log-in">Log out</a>
                    </div>
                    ';
                } else {
                    echo '
                        <div class="nav-right">
                            <a class="sign-in" href="include/sign-in.php">Sign in</a>
                            <a class="log-in" href="include/login.php">Log in</a>
                        </div>
                    ';
                }
            ?>
        </div>
</header>