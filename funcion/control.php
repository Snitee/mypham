<?php 

    include '../db/connect.php';
    include '../db/connect_link.php';

    class control extends connect_link {
        function taoDonhang($ten,$diachi,$sdt,$email,$tongdonhang){
            $sql = "INSERT INTO bill(ten,diachi,sdt,email,tongtien) VALUES ('$ten','$diachi','$sdt','$email','$tongdonhang')";
            //  $this->link->query($sql);
            if(  $this->link->query($sql) === true) {
                $last_id = $this->link->insert_id;
            }
            return $last_id;
        }

        function taochitietDonhang( $idsanpham , $tensp, $giasp , $soluong , $hinhsp , $dongia , $idbill)  {
            $sql = "INSERT INTO detailbill( idsanpham ,tensp, giasp , soluong , hinhsp , dongia , idbill) VALUES ('$idsanpham','$tensp', '$giasp' , '$soluong' , '$hinhsp' , '$dongia' , '$idbill')";
            $this->link->query($sql); 
        }

        // function getdetailBill(){
        //     $sql = "SELECT * FROM detailbill";
        //     return $this->link->query($sql); 
        // }

        function getproductID( $idcate ){
            $sql = "SELECT * FROM sanpham 
            WHERE iddanhmuc = '$idcate' ";
            return $this->link->query($sql); 
        }

        function getAccountbyUser($user_name){
            $sql = "SELECT * FROM khachhang WHERE email = '$user_name'";
            return $this->link->query($sql); 
        }
        
        
        function taoAccount($ten,$user_name,$password,$sdt,$diachi){
            $sql = "INSERT INTO khachhang(ten,email, password ,sdt, diachi ) VALUES ('$ten','$user_name','$password','$sdt','$diachi')";
            $this->link->query($sql); 
        }

        function getProduct(){
            $sql = "SELECT * FROM sanpham";
            return $this->link->query($sql); 
        }

        function getdetailBill( $idbill){
            $sql = "SELECT * FROM detailbill WHERE idbill = $idbill";
            return $this->link->query($sql); 

        }

        function getBill(){
            $sql = "SELECT * FROM bill";
            return $this->link->query($sql); 
        }

        function getProductByID( $idsp ){
            $sql = "SELECT * FROM sanpham WHERE idsanpham = $idsp";
            return $this->link->query($sql); 
        }

        function getCategory(){
            $sql = "SELECT * FROM danhmuc";
            return $this->link->query($sql); 
        }


        function getBrand(){
            $sql = "SELECT * FROM thuonghieu";
            return $this->link->query($sql); 
        }

        function getCategoryOfProduct($iddm){
            $sql = "SELECT * FROM danhmuc WHERE iddanhmuc = $iddm";
            return $this->link->query($sql); 
        }

        function getBrandOfProduct($idth){
            $sql = "SELECT * FROM thuonghieu WHERE idthuonghieu = $idth";
            return $this->link->query($sql); 
        }

        function updateProduct($idsp,$tensp,$giasp,$id_cate,$id_brand,$mota,$hinhanh){
            $sql = "UPDATE sanpham SET tensanpham='$tensp', gia='$giasp',
            mota='$mota',hinhanh='$hinhanh',iddanhmuc='$id_cate',
            idthuonghieu='$id_brand' WHERE idsanpham = $idsp";
            $this->link->query($sql); 
        }

        function getStatusBill($idbill){
            $sql = "SELECT trangthai FROM bill WHERE idbill = $idbill";
            return $this->link->query($sql); 
        }

        function SuccessBill($idbill,$statusbill){
            $sql = "UPDATE bill SET trangthai = '$statusbill' WHERE idbill = $idbill";
            $this->link->query($sql); 

        }
    }
    
    

    
    // function ketnoidtb(){
    //     $dbhost = "localhost";
    //     $dbuser = "root";
    //     $dbpass = "";
    //     $dbname = "mypham1";

    //     $conn = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
    //     return $conn;
    // }
    // function laySizeCart(){
    //     if(isset($_SESSION['giohang']) && (is_array($_SESSION['giohang']))) {

    //     }
    // } 
    function showGiohang() {
        if(isset($_SESSION['giohang']) && (is_array($_SESSION['giohang']))) {
            $tong = 0;
            for( $i = 0; $i < sizeof($_SESSION['giohang']) ; $i++ ){
                $tongtien = $_SESSION['giohang'][$i][2] * $_SESSION['giohang'][$i][1];
                $tong += $tongtien;
                echo '
                <style> 
                    .cart-detail {
                        display: flex;
                        flex-direction: row;
                    }
                    .tong {
                        background-color: #ccc;
                        display: flex; flex-direction: row; justify-content: space-between;
                    }
                    .pd-24 {
                        padding: 8px 16px; 
                    }
                </style>
                    <div class="cart-detail">
                        <div> <img src="../images/'.$_SESSION['giohang'][$i][3].' " alt="" style="width: 100px; text-align: center;"></div>
                        <div style="width: 250px; display:block; text-align: center;"> '.$_SESSION['giohang'][$i][0].' </div>
                        <div style="width: 82px; text-align: center;"> 
                            '.$_SESSION['giohang'][$i][2].' 
                            <div> <a href="cart.php?delproduct='.$i.'">Xóa sản phẩm</a></div>
                        </div>
                        <div style="width: 82px; text-align: center;"> '.$_SESSION['giohang'][$i][1].' </div>
                        <div style="width: 82px; text-align: center;"> '.$tongtien.' </div>
                    </div>
                    
                ';
                $sizeCart = sizeof($_SESSION['giohang']);
            }
            echo '
                <div class="tong"> 
                    <div class="pd-24"> Tổng: </div>
                    <div class="pd-24"> '.$tong.'</div>
                </div>
            ';
        }
        
        
    }
    function tonggiatridonhang() {
        $tongdonhang = 0;

        if(isset($_SESSION['giohang']) && (is_array($_SESSION['giohang']))) {
            for( $i = 0; $i < sizeof($_SESSION['giohang']) ; $i++ ){
                $tongtien = $_SESSION['giohang'][$i][2] * $_SESSION['giohang'][$i][1];
                $tongdonhang += $tongtien;
            }
        }
        return $tongdonhang;
    }

    function showdonhang() {
        $tongdonhang = tonggiatridonhang();

        if(isset($_SESSION['giohang']) && (is_array($_SESSION['giohang']))) {
            if( sizeof($_SESSION['giohang']) == 0 ){
                echo 'Giỏ hàng rỗng. <a href ="product.php"> Tiếp tục mua sắm </a>';
            } else {
                for( $i = 0; $i < sizeof($_SESSION['giohang']) ; $i++ ) {
                    echo '
                    <style> 
                        .cart-detail {
                            display: flex;
                            flex-direction: row;
                        }
                        .tong {
                            background-color: #ccc;
                            display: flex; flex-direction: row; justify-content: space-between;
                        }
                        .pd-24 {
                            padding: 8px 16px; 
                        }
                    </style>
                        <div class="cart-detail">
                            <div> <img src="../images/'.$_SESSION['giohang'][$i][3].' " alt="" style="width: 100px; text-align: center;"></div>
                            <div style="width: 250px; display:block; text-align: center;"> '.$_SESSION['giohang'][$i][0].' </div>
                            <div style="width: 82px; text-align: center;"> 
                                '.$_SESSION['giohang'][$i][2].' 
                            </div>
                            <div style="width: 82px; text-align: center;"> '.$_SESSION['giohang'][$i][1].' </div>
                        </div>
                    ';
                }
                echo '
                    <div class="tong">
                        <div class ="pd-24">Tổng cộng:</div>
                        <div class ="pd-24">'.$tongdonhang.'</div>
                    </div>
                ';

                
            }
        }
    }

    // function showdonhangsuccess($ten,$diachi,$sdt,$email,$tongdonhang,$idbill) {
    //     echo '
    //         <h2>Bạn đã dặt hàng thành công</h2>
    //         <h3>Mã đơn hàng: '.$idbill.' </h3>
    //         <h4>Thông tin nhận hàng</h4>
    //     ';
    //     showdonhang();
    // } 
   
    function checkuser(){
        $conuser = new control();
        $checku = 0;
        if( isset($_POST['email'])){
            $user_name = $_POST['email'];
            $result =  $conuser->getAccountbyUser($user_name);
            if( $user_name != '' ){
                if( strlen($user_name) < 5 ){
                    echo '<p style ="color: red;">Tên đăng nhập phải nhiều hơn 5 kí tự </p>';
                    $checku = 1;
                } else {
                    if( mysqli_num_rows($result) > 0){
                        echo '<p style ="color: red;"> Tên đăng nhập đã tồn tại. Vui lòng nhập lại </p>';
                        $checku = 1;
                    } 
                }
            }
        }
        return $checku;
    }
        
    function checkpass(){
        $checkp = 0;
        if( isset($_POST['password'])){
            $password = $_POST['password'];
            if( strlen($password) < 8 ){
                 echo '<p style ="color: red;">Mật khẩu phải dài hơn 8 kí tự</p>'; 
                 $checkp = 1;    
            }  
        }
        return $checkp;
    }

    function deleteProduct( $idsp ){
        include '../db/connect.php';
        $sql = "DELETE FROM sanpham WHERE idsanpham = '$idsp'";
        mysqli_query($conn , $sql );
        header('location: ../include/qlsp.php');
    } 
?>