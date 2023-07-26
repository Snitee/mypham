<?php 
    session_start();
    include '../db/connect.php';
    include '../funcion/control.php';
    $con = new control();
    $sql1 = "SELECT * FROM danhmuc";
    $category1 = mysqli_query($conn, $sql1);
    $product_cate = 0;
    $idtemp = null;
    // $product_cate = $con -> getproductID( $idtemp );

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    <div class="content-section-product">
        <div class="layout-category">
            <h3 class="heading-category"><i class="ti-menu"></i> Danh mục</h3>
            <div class="list-category">
                <?php 
                    if( mysqli_num_rows($category1) > 0){
                        foreach( $category1 as $key => $value){
                ?>
                        <div class="category">
                            <li><a href="detail-category.php?idcate=<?php echo $value['iddanhmuc']?>"><?php echo $value['tendanhmuc'] ?></a></li>
                        </div>
                <?php     
                        }
                    }
                    ?>
            </div>
            
        </div>
        <div class="layout-product">
            <?php 
                    include 'getdetail-category.php';
                    // unset($_GET['idcate']);
            ?>
        </div>
    </div>    
</div>
</body>
</html>