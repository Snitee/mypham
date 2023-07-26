<?php 
    session_start();
    include '../db/connect.php';
    include '../funcion/control.php';
    
    // $sizeCart = null;
    if(!isset($_SESSION['giohang'])){
        $_SESSION['giohang'] = []; 
    }

    // Xóa tất cả trong giỏ hàng 
    if( isset($_GET['deletecart']) && ($_GET['deletecart'] == 1)){
        unset( $_SESSION['giohang']);
    }

    // Xóa sản phẩm trong giỏ hàng
    if( isset($_GET['delproduct'])  && ($_GET['delproduct']>= 0)){
        array_splice($_SESSION['giohang'],$_GET['delproduct'],1);
    }

    if( isset($_POST['muangay']) && $_POST['muangay']) {
        $tensp = $_POST['tensp'];
        $giasp = $_POST['giasp'];
        $soluong = $_POST['soluong'];
        $hinhanh = $_POST['hinhanh'];
        $idsanpham = $_POST['idsp'];
        // kiểm tra sản phẩm đã có trong giỏ hàng hay chưa
        $danhdau = 0; 
        for( $i = 0 ; $i < sizeof($_SESSION['giohang']); $i++) {
            if( $_SESSION['giohang'][$i][0] == $tensp ){
                $danhdau = 1;
                $soluongthem = $soluong + $_SESSION['giohang'][$i][2];
                $_SESSION['giohang'][$i][2] = $soluongthem;
                break;
            }
        }

        if( $danhdau == 0){
            //Thêm sản phẩm vào giỏ hàng
            $sp = [$tensp,$giasp,$soluong,$hinhanh,$idsanpham];
            $_SESSION['giohang'][] = $sp;
        }  
    }    

    
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../style/style.css">
    <link rel="stylesheet" href="../style/cart.css">

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
        <?php 
            if(!isset($_SESSION['giohang'])  || sizeof($_SESSION['giohang']) == 0 ){
                echo '<div>GIỎ HÀNG TRỐNG</div>
                    <div> <a href="product.php">Tiếp tục mua sắm </a> </div>
                ';
            } else {
        ?>
            <div class="content-section-cart">
                <form action="cornfirm.php" method="post">
                    <div class="cart mt-48">
                        <h2 style="font-size: 32px;">GIỎ HÀNG</h2>
                        <div class="cart-thead">
                            <div>SẢN PHẨM</div>
                            <div style="width: 250px;"></div>
                            <div>SỐ LƯỢNG</div>
                            <div>GIÁ</div>
                            <div>THÀNH TIỀN</div>
                        </div>
                        <div>
                            <?php showGiohang(); ?>
                        </div>
                    </div>
                    <div class="delete-cart">
                        <input type="submit" value="Đồng ý đặt hàng" name="dongydathang">
                    </div>
                </form>
                <div class="delete-cart">
                    <a href="cart.php?deletecart=1"><button>XÓA</button></a>
                </div>
            </div>
        <?php 
        }
        ?>
    </div>
    
</body>
</html>