<?php 
    session_start();
    // $con = new control();
    // $product_cate = 0;
    // $idtemp = null;
    if( isset($_GET['idcate'])){
        $idtemp = $_GET['idcate'];
        $product_cate = $con -> getproductID( $idtemp );
        // echo mysqli_num_rows($product_cate);
        // $sql = "SELECT * FROM sanpham WHERE iddanhmuc = '$idtemp' ";
        // $product_cate = mysqli_query($conn ,$sql );
        while ( $product = mysqli_fetch_array($product_cate)) {
            echo '   
                <div class="row product-list">
                    <div class="col mt-16 product-inf">
                        <img src="../images/'.$product['hinhanh'].' " class="product-img"></img>
                        <div class="product-body">
                            <a href="detail-product.php?idsanpham='.$product['idsanpham'].'"><p class="name-product">'.$product['tensanpham'].'</p></a>
                            <a href="detail-product.php?idsanpham='.$product['idsanpham'].'"><p class="price-product mt-16">'.$product['gia'].'</p></a>
                        </div>
                    </div>   
                </div>';            
        }

    }

   
    
    
?>