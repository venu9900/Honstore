<?php session_start();
require('includes/config.php');
?>

<!DOCTYPE html>

<html >
<head>
		<?php
			include("includes/head.inc.php");
		?>
</head>

<body>
			
				<div id="header">
					<div id="menu">
						<?php
							include("includes/menu.inc.php");
						?>
					</div>
				</div>
				<div id="logo-wrap">
				<div id="logo">
						<?php
							include("includes/logo.inc.php");
						?>
				</div>
				</div>
				
			
			<font style="font-size:30px;margin-left:260px">Payment option</font>
<div class="container">			
			<hr style="margin-left:260px;margin-right:260px;"></hr>
			
			<div style="border-radius:5px 5px 5px 5px; background:url(images/paper.jpg);margin-left:160px;margin-right:160px;font-size:20px;"><a href="success.php">Cash On Delivery</a></div></br>