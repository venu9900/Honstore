<?php session_start(); ?>

<!DOCTYPE html >

<html >
<head>
		<?php
			include("includes/head.inc.php");
		?>
</head>

<body>
			
<?php
			include("includes/mid.inc.php");
		?>				
				
				

				<div id="page">
					
					<div id="content">
						<div class="post">
							<h1 class="title">Welcome to 
							<?php 
								if(isset($_SESSION['status']))
								{
									echo $_SESSION['unm']; 
								}
								else
								{	
									echo 'HanStore';
								}
							?>
							</h1>
							<div class="entry">
								<br>
								
								<br>		
								
								<object width="550" height="400">
								
								<embed src="HotHotSoftware3DMenu.swf" width="550" height="400">
								</embed>
								</object>
								<br><br>
								
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
