<?php
require('includes/config.php');
 session_start();


	
	$cat=$_GET['catnm'];
	
	$q = "select * from subcat where parent_id = ".$_GET['cat'];
	$res = mysqli_query($conn,$q) or die("Can't Execute Query..");
	
	$row1 = mysqli_fetch_assoc($res);
	
	if($_GET['catnm']==$row1['subcat_nm'])
	{
		header("location:booklist.php?subcatid=".$row1['subcat_id']."&subcatnm=".$row1["subcat_nm"]);
		
	}
?>

<!DOCTYPE html>

<html >
<head>
		<?php
			include("includes/head.inc.php");
		?>
</head>

<body>
			
				
				

				<div id="page">
					
					<div id="content">
						<div class="post">
							<h1 class="title"><?php echo $_GET['catnm'];?></h1>
							<div class="entry">
						
								<?php
									Do
									{
										
										echo '<li><a href="booklist.php?subcatid='.$row1['subcat_id'].'&subcatnm='.$row1["subcat_nm"].'">'.$row1['subcat_nm'].'</a></li>';
										
									}while($row1 = mysqli_fetch_assoc($res))
								?>
							
							</div>
							
						</div>
						
					</div>
					
					
					
					<div style="clear: both;">&nbsp;</div>
				</div>
			
				<div id="footer">
							<?php
								include("includes/footer.inc.php");
							?>
				</div>
			
</body>
</html>
