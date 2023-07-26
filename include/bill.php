<?php 
    session_start();
    include '../db/connect.php';
    include '../funcion/control.php';
    $con = new control();
    $ttdh = null;
    if(isset($_POST['xacnhan']) && ($_POST['xacnhan'])){
        // lấy thông tin từ form để tạo đơn hàng
        $ten = $_POST['ten'];
        $diachi = $_POST['diachi'];
        $sdt = $_POST['sdt'];
        $email = $_POST['email'];
        $tongdonhang = tonggiatridonhang() ;
        
        // insert đơn hàng vào dtb;s
        $idbill = $con -> taoDonhang($ten,$diachi,$sdt,$email,$tongdonhang); 
        

        //lấy thông tin giỏ hàng từ session + id đơn hàng vừa tạo
        //insert vào bảng chi tiet don hang 
        for( $i = 0 ; $i < sizeof($_SESSION['giohang']) ; $i++){
            $idsanpham = $_SESSION['giohang'][$i][4];
            $tensp = $_SESSION['giohang'][$i][0];
            $giasp = $_SESSION['giohang'][$i][1];
            $soluong = $_SESSION['giohang'][$i][2];
            $hinhsp = $_SESSION['giohang'][$i][3];
            $dongia = $giasp * $soluong;
            $con -> taochitietDonhang($idsanpham , $tensp, $giasp , $soluong , $hinhsp , $dongia , $idbill);
        }

        // show đơn hàng 
        $ttdh = '
            <div> <h1> Mã đơn hàng: '.$idbill.' </h1></div>
            <div> <h2> Thông tin đơn hàng của bạn</h2> </div>
            <div> 
                <div>Người nhận: '.$ten.' </div>
                <div>Địa chỉ nhận: '.$diachi.' </div>
                <div>Số điện thoại: '.$sdt.' </div>
            </div>
        ';
    
        //unset giỏ hàng session
        // unset($_SESSION['giohang']);
        
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
    <link rel="stylesheet" href="../style/detail-product.css">

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
        <div class="odersuccess">
            <?php  echo $ttdh;
                showdonhang();
                //unset giỏ hàng
                unset($_SESSION['giohang']);
            ?>
        </div>
    </div>

</body>
</html>