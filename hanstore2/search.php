<?php session_start(); ?>

<!DOCTYPE html >

<html >
<head>
		<?php
			include("includes/head.inc.php");
		?>
</head>


<center>			
				
						<?php
						require('includes/config.php');
							if(isset($_SESSION['status']))
							{
								echo '<h2>Hello :  '.$_SESSION['unm'].'</h2>';
							}
							else
							{
								echo '<form action="process_login.php" method="POST" >
										<h2>LogIn</h2>
											<b>Username:</b>
											<input type="text" name="usernm" >
											
											
											
											<b>Password:</b>
											<input type="password" name="pwd">
											<input type="submit" id="x" value="Login" />
										</form>';
							}
						?>
			
			
			
				<h2>Search</h2>
				<form method="GET" action="search_result.php" >
					<fieldset>
					<input type="text" id="s" name="s" value="" />
					<input type="submit" id="x" value="Search" />
					</fieldset>
				</form></center>
			
			
			
		

<div id="footer">
							<?php
								include("includes/footer.inc.php");
							?>
				</div>
			