<?php
    include '../funcion/control.php';

    $con = new control();
    $donhangs = $con -> getBill();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý đơn hàng</title>
    <link rel="stylesheet" href="../style/style.css">
    <!-- <link rel="stylesheet" href="../style/qlsp.css"> -->
    <link rel="stylesheet" href="../images/icons/themify-icons/themify-icons.css">

</head>
<body>
<header>
        <div class="container-header">
            <img id="logo" src="../images/logo.png" alt="#">
            <ul id="nav-left">
                <li><a href="../index.php">Trang chủ</a></li>
                <li><a href="add-product.php">Thêm sản phẩm</a></li>
                <li><a href="qlsp.php">Danh sách sản phẩm</a></li>
                <li><a href="#">Quản lý đơn hàng</a></li>               
            </ul>
            <div class="nav-right">
                <a href="logout.php"class="log-in" href="">Log out</a>
            </div>
        </div>
</header>
    <div id="content">
        <div class="content-section-product">
        <table>
                <tr>
                    <th>Mã đơn</th>
                    <th>Tên</th>
                    <th>Địa chỉ</th>
                    <th>SĐT</th>
                    <th>Tổng tiền</th>
                    <th>Trạng thái</th>
                </tr>
                <?php 
                    if( mysqli_num_rows($donhangs) > 0 ){
                        while( $donhang = mysqli_fetch_array($donhangs)) {
                ?>
                <tr>
                    <td>  <?php echo $donhang['idbill'];?>   </td>
                    <td>  <?php echo $donhang['ten'];?>      </td>
                    <td>  <?php echo $donhang['diachi'];?>   </td>
                    <td>  <?php echo $donhang['sdt'];?>      </td>
                    <td>  <?php echo $donhang['tongtien'];?> </td>
                    <td> 
                        <?php 
                            if($donhang['trangthai'] == 0){
                                echo '<div style="color: red;">Chưa gửi</div>';
                            } else {
                                echo '<div style="color: green;">Đã gửi</div>';
                            }
                        ?>
                    </td>
                    <td> <a href="detailbill.php?iddh=<?php echo $donhang['idbill'];?>">Chi tiết</a></td>
                </tr>
                <?php       
                        }
                    }
                ?>
                
            </table>   
        </div> 
    </div>

</body>
</html>