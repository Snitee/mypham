<?php 
    session_start();

    include '../db/connect.php';

    include '../funcion/control.php';
    $con = new control();

    $allproducts = $con -> getProduct();
    $idsptemp = null;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QUẢN LÝ SẢN PHẨM</title>
    <link rel="stylesheet" href="../style/style.css">
    <link rel="stylesheet" href="../style/qlsp.css">
    <link rel="stylesheet" href="../images/icons/themify-icons/themify-icons.css">
</head>
<body>
<header>
        <div class="container-header">
            <img id="logo" src="../images/logo.png" alt="#">
            <ul id="nav-left">
                <li><a href="../index.php">Trang chủ</a></li>
                <li><a href="add-product.php">Thêm sản phẩm</a></li>
                <li><a href="">Sửa sản phẩm</a></li>
                <li><a href="">Xóa sản phẩm</a></li>
                <li><a href="#">Danh sách sản phẩm</a></li>
                <li><a href="../admin.php">Quản lý</a></li>
            </ul>
            <div class="nav-right">
                <a class="log-in" href="logout.php">Log out</a>
            </div>
        </div>
</header>
    <div id="content">
        <div class="content-section-product">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Sản phẩm</th>
                    <th></th>
                    <th>Giá</th>
                    <th></th>
                </tr>
                <?php 
                    if( mysqli_num_rows($allproducts) > 0 ){
                        while( $allproduct = mysqli_fetch_array($allproducts)) {
                ?>
                <tr>
                    <td> <?php  $idsptemp=$allproduct['idsanpham'];  echo $allproduct['idsanpham'];?></td>
                    <td style="width: 245px"> <img src="../images/<?php echo $allproduct['hinhanh']?>" class="product-img" style="width: 100%;"></img></td>
                    <td> <?php echo $allproduct['tensanpham'];?></td>
                    <td> <?php echo $allproduct['gia'];?></td>
                    <td> <button class="js-btn-delpr">Xóa sản phẩm</button> </td>
                    <td> <a href="update-product.php?idsp=<?php echo $allproduct['idsanpham']; ?>">Sửa sản phẩm</a> </td>
                    <div class="js-modal">
                        <div class="js-modal_container">
                            <div class="title-heading">
                                <h2 > Xác nhận xóa sản phâm</h2>
                            </div>
                            <div class="choice">
                                <div class="js-btn-cancel"> 
                                    <a href="">Hủy</a>
                                </div>
                                <div class="btn-confirm"> 
                                    <a class="" href="deleteproduct.php?idsp=<?php echo $idsptemp;?>">Đồng ý</a>    
                                </div>
                            </div>
                        </div> 
                    </div>
                </tr>
                <?php       
                        }
                    }
                ?>
                
            </table>   
        </div> 
    </div>
            


    <script>
        const delprBtns =document.querySelectorAll('.js-btn-delpr');
        const modalComfirm =document.querySelector('.js-modal');
        const modalContainer =document.querySelector('.js-modal_container')
        const modalClose =document.querySelector('.js-btn-cancel')
        function showBoxConfirm( ) {
            modalComfirm.classList.add('open')
        }

        function cancelDele(){
            modalComfirm.classList.remove('open')
        }

        function dungnoibot(){
            modalComfirm.stopPropagation()
        }
        for ( const delprBtn of delprBtns ){
            delprBtn.addEventListener('click',showBoxConfirm)
        }

        modalClose.addEventListener('click', cancelDele() )

        modalContainer.addEventListener('click', dungnoibot())
    </script>
</body>
</html>