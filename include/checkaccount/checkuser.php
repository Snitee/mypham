<?php 
    include '../db/connect.php';
    include '../funcion/control.php';
    
    
        $con = new control();
        $checku = 0;
        if( isset($_POST['email'])){
            $user_name = $_POST['email'];
            $result = $con ->getAccountbyUser($user_name);
            // echo mysqli_num_rows($result);
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
        
       
    

?>