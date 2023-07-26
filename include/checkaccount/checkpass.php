<?php 
    $mark = 0; 
    if( isset($_POST['password'])){
        $password = $_POST['password'];
        if( strlen($password) < 8 ){
            echo '<p style ="color: red;">Mật khẩu phải dài hơn 8 kí tự</p>';   
            $mark = 1;
        }  
    }
    
    
    
    
?>