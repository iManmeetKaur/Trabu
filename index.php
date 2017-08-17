<!DOCTYPE HTML>
<html>
<head>
<title>TRABU | Login :: TER-X</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Augment Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<script src="js/jquery-1.10.2.min.js"></script>
<!--clock init-->
</head> 
<body>
								<!--/login-->
								
									   <div class="error_page">
												<!--/login-top-->
												
													<div class="error-top">
													<center>
													<h2 class="inner-tittle page">TRABU</h2>
													</center>
													<?php
														session_start();
														if(isset($_POST['btnlogin']))
														{
															require 'connect.php';

															$username=$_POST['username'];
															$password=$_POST['password'];

															$result=mysqli_query($con,'Select * from users where username="'.$username.'" and password="'.$password.'"');

															if($result->num_rows==1)
															{
																$_SESSION['username']=$username;
																header('Location:welcome.php');
															}
															else
																echo "Account's invalid!";
														}
														if(isset($_GET['logout']))
														{
															session_unregister('username');
															session_destroy();
														}
													?>
													<div class="login">
													<h3 class="inner-tittle t-inner">Login</h3>
														<form method="POST" action="index.php?action=login">
															<input type="text" class="text" value="username" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
															<input type="password" name="password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
															<div class="submit">
																<input type="submit" name="btnlogin" onclick="myFunction()" value="Login" >
															</div>
															<div class="clearfix"></div>
														</form>
													</div>
												</div>
										   </div>
						
										  	<!--//login-->
										    <!--footer section start-->
										<div class="footer">
										</div>
									<!--footer section end-->
									<!--/404-->
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>