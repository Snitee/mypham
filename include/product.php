<?php 
    session_start();
    include '../db/connect.php';
    include '../funcion/control.php';
    $con = new control();

    $pro_in_page = 9;
    $page = $_GET['page'];
    // $pro_in_page = 9;
    // $page = 1;
    $ofset = ($page - 1 ) * $pro_in_page;
    // sql này là gì dị
    $sql = "SELECT * FROM sanpham ORDER BY idsanpham ASC LIMIT  $pro_in_page  OFFSET $ofset ";
    $result = mysqli_query($conn , $sql );

    $allproducts = $con -> getProduct();
    $allproducts = $allproducts->num_rows;
    $totalPages = ceil($allproducts / $pro_in_page);

    $sql1 = "SELECT * FROM danhmuc";
    $category1 = mysqli_query($conn, $sql1);


    // phân trang
    // $pro_in_page = 9;
    // $page = 1;
    // $ofset = ($page - 1 ) * $pro_in_page;

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
                <li><a href="#">Sản phẩm</a></li>
                <li><a href="">Tin tức</a></li>
                <li><a href="cart.php">Giỏ hàng ( <?php if(isset($_SESSION['giohang'])){echo sizeof($_SESSION['giohang']); } else { echo '0';}?> ) </a></li>
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
                if( mysqli_num_rows($result) > 0 ){
                    while( $row = mysqli_fetch_array($result)) {
            ?>
                        <div class="row product-list">
                            <div class="col mt-16 product-inf">
                                <img src="../images/<?php echo $row['hinhanh']?>" class="product-img"></img>
                                <div class="product-body">
                                    <a href="detail-product.php?idsanpham=<?php echo $row['idsanpham'] ?>"><p class="name-product"><?php echo $row['tensanpham'] ?> </p></a>
                                    <a href="detail-product.php?idsanpham=<?php echo $row['idsanpham'] ?>"><p class="price-product mt-16"><?php echo $row['gia'] ?> ₫</p> </a>
                                </div>
                            </div>   
                         </div>            
            <?php       
                    }
                }
            ?>

            <?php include 'phantrang.php'   ?>
        </div>
    </div>    
</div>

</body>
</html>