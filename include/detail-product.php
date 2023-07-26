<?php 
    // session_start();
    include '../db/connect.php';
    include 'getdetail-category.php';
    $id = $_GET['idsanpham'];
    $sql = "SELECT * FROM sanpham WHERE idsanpham = $id";
    $result = mysqli_query($conn , $sql);
    $product = mysqli_fetch_assoc($result);

    $sql1 = "SELECT * FROM danhmuc";
    $category1 = mysqli_query($conn, $sql1);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>San phm</title>
    <link rel="stylesheet" href="../style/style.css">
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
        <div class="content-section-detail">
            <div class="layout-category">
                <h3 class="heading-category"><i class="ti-menu"></i> Danh mục</h3>
                <div class="list-category">
                    <?php 
                        if( mysqli_num_rows($category1) > 0){
                            foreach( $category1 as $key => $value){
                    ?>
                            <div class="category">
                                <li><a href=""><?php echo $value['tendanhmuc'] ?></a></li>
                            </div>
                    <?php     
                            }
                        }
                        ?>
                </div>
                
            </div>
            
            <div class="img-product pad-24">
                <img src="../images/<?php echo $product['hinhanh'] ?>" alt="" class="img">
            </div>
            <div class="detail-product mt-16">
                <div class="body-product pad-24">
                    <h1> <?php echo $product['tensanpham'] ?></h1>
                    <p class="pad-16" style="font-size: 28px; font-family: serif; color: red;"><?php echo $product['gia'] ?> ₫</p>
                    <p class="pad-16"><?php echo $product['mota'] ?></p>
                    <div class="buy-form">
                        <form action="cart.php" method="POST">
                            <input type="hidden" name="idsp" value="<?php echo $product['idsanpham'] ?>">
                            <input type="hidden" name="tensp" value="<?php echo $product['tensanpham'] ?>">
                            <input type="hidden" name="giasp" value="<?php echo $product['gia'] ?>">
                            <input type="hidden" name="hinhanh" value="<?php echo $product['hinhanh'] ?>">
                            <div class="quanti-pro">
                                <input type="number" name="soluong" min="1" max="20" value="1">
                            </div>
                            <div class="btn-click">
                                <input type="submit" name="muangay" class="btn-buy mt-16" value="Mua ngay">
                                <input type="submit" name="add-cart" class="btn-buy mt-16" value="Thêm vào giỏ hàng" style="width: 180px;">
                            </div>
                        </form>
                    </div>
                </div>   
            </div>
        </div>
    </div>
</body>
</html>