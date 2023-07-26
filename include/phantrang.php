<?php 
    for( $i = 1 ; $i <$totalPages ; $i++ ){
?>
        <a href="#?proinpage=<?php echo $pro_in_page?>&page=<?php echo $i?>"><?php echo $i?></a>
<?php
    }
?>