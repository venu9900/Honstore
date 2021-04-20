<?php
require('includes/config.php');

			$query="delete from product where b_id =".$_GET['id'];
		
			mysqli_query($conn,$query) or die("can't Execute...");
			
			
			header("location:all_book.php.php");

?>