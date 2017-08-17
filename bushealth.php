<?php
	session_start();
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Trabu Bus Health :: TER-X</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="TRABU is a real-time tracking system used to track the bus and let you know about its health. The users can avail booking and cancellation facilities on the app and the admin can control all the functionalities of the system as well as monitor the bus in real-time." />
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
<script src="js/amcharts.js"></script>	
<script src="js/serial.js"></script>	
<script src="js/light.js"></script>	
<script src="js/radar.js"></script>	
<link href="css/barChart.css" rel='stylesheet' type='text/css' />
<link href="css/fabochart.css" rel='stylesheet' type='text/css' />
<!--clock init-->
<script src="js/css3clock.js"></script>
<!--Easy Pie Chart-->
<!--skycons-icons-->
<script src="js/skycons.js"></script>

<script src="js/jquery.easydropdown.js"></script>
<!--//skycons-icons-->
<style>
	html,body{
		background:url(images/bg2.png);
		background-size:cover;
		opacity: 1.5;
	}
	.view-box{
		padding:10px;
		width:400px ;
		height:auto;
		background:#231f20;
		opacity:0.9;
		border:2px black solid;
	}
	label{
	    display:inline-block;
	    width:150px;
	    font-size:17px;
	    font-style:bold;
	    color:#f7931d;
	    text-transform:uppercase;
	    font-weight:500;
	    margin:0px;
	}
</style>
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
	<div class="left-content">
	   <div class="inner-content">
		<!-- header-starts -->
			<div class="header-section">
						<!--menu-right-->
						<div class="top_menu">
						        <div class="main-search">
											<form>
											   <input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" class="text"/>
												<input type="submit" value="">
											</form>
									<div class="close"><img src="images/cross.png" /></div>
								</div>
									<div class="srch"></div>
									<script type="text/javascript">
										 $('.main-search').hide();
										$('button').click(function (){
											$('.main-search').show();
											$('.main-search text').focus();
										}
										);
										$('.close').click(function(){
											$('.main-search').hide();
										});
									</script>

							

				<!--footer section start-->
					<footer>
						<p>&copy 2017 Trabu . All Rights Reserved | Design by TER-X.</p>
					</footer>
									<!--footer section end-->
				</div>
			</div>
			<!--//content-inner-->

			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo">
					<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="index.php"> <span id="logo"> <h1>TRABU</h1></span> 
					<!--<img id="logo" src="" alt="Logo"/>--> 
				  </a> 
				</header>
			<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
							<div class="down">	
									  <a href="index.php"><img src="images/admin.jpg" style="height:100px; width:70px;"></a>
									  <a href="index.php"><span class=" name-caret">
									  <?php
									  	echo "Welcome, ".$_SESSION['username'];
									  ?>
									  </span></a>
									 <p>System Administrator in RSRTC</p>
									<ul>
									<li><a class="tooltips" href="welcome.php"><span>Profile</span><i class="lnr lnr-user"></i></a></li>
										<li><a class="tooltips" href="index.php?action=logout"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
										</ul>
									</div>
							   <!--//down-->
                           <div class="menu">
								<ul id="menu" >
									<li><a href="welcome.php"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>
									<li><a href="bushealth.php"><i class="fa fa-tachometer"></i> <span>Bus Health</span></a></li>
									<li><a href="bus.php"><i class="fa fa-tachometer"></i> <span>Bus</span></a></li>
									<li><a href="employee.php"><i class="fa fa-tachometer"></i> <span>Employee</span></a></li>
									<li><a href="welcome.php"><i class="fa fa-tachometer"></i> <span>Time Table</span></a></li>
									<li id="menu-academico" ><a href="#"><i class="lnr lnr-book"></i> <span>Services</span> <span class="fa fa-angle-right" style="float: right"></span></a>
										  <ul id="menu-academico-sub" >
										    <li id="menu-academico-avaliacoes" ><a href="login.html">Book Tickets</a></li>
										    <li id="menu-academico-boletim" ><a href="register.html">Cancel Tickets</a></li>
										</ul>
									</li>
									<li><a href="welcome.php"><i class="fa fa-tachometer"></i> <span>Payments</span></a></li>
									<li><a href="welcome.php"><i class="fa fa-tachometer"></i> <span>Customers</span></a></li>
									<li><a href="welcome.php"><i class="fa fa-tachometer"></i> <span>Queries</span></a></li>
								</ul>
							</div>
						</div>

						<!--Main Body-->
						<?php 
							require "connect.php";
						?>
						<h2 style="margin-left:300px; margin-right:50px;margin-top:50px;"> View bus id...</h2>
						<form action="bushealth.php" method="GET" style="margin-left:300px;">
							<select name="bus_id">
							<?php 
							$result=$con->query("Select * from iot");
							while($r=$result->fetch_assoc()){ ?>
							<option value="<?php echo $r['bus_id']; ?>"><?php echo $r['bus_id']; ?></option><?php } ?>
							</select>
							<input type="submit" name="id" value="View">
						</form>
						<br><br>

						<?php 
						if(isset($_GET["bus_id"]))
						{
							$id=$_GET["bus_id"];
							$result=$con->query("Select * from iot where id='$id' ");
						if($r=$result->fetch_assoc())
						{
							?>

						<div class="view-box" style="margin-left:300px;">	
							<label>Bus Id:</label>
							<input type="text" name="bus_id" value="<?php echo $r['bus_id']; ?>"><br><br>
							<label>Location:</label>
							<input type="text" name="location" value="<?php echo $r['location']; ?>"><br><br>
							<label>Temperature:</label>
							<input type="text" name="temperature1" value="<?php echo $r['temperature_1']; ?>"><br><br>
							<label>Humidity:</label>
							<input type="text" name="humidity1" value="<?php echo $r['humidity_1']; ?>"><br><br>
							<label>Timestamp:</label>
							<input type="text" name="timestamp" value="<?php echo $r['timestamp']; ?>"><br><br>
							<label>Gyroscopic Readings:</label>
							<input type="text" name="gyro-x" value="<?php echo $r['gyro-x']." , ".$r['gyro-y']." , ".$r['gyro-z']; ?>"><br><br>
							<label>Accelerometer Readings:</label>
							<input type="text" name="accelero-x" value="<?php echo $r['accelero-x']." , ".$r['accelero-y']." , ".$r['accelero-z']; ?>"><br><br>
						</div>
						<?php }} ?>

						<div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<link rel="stylesheet" href="css/vroom.css">
<script type="text/javascript" src="js/vroom.js"></script>
<script type="text/javascript" src="js/TweenLite.min.js"></script>
<script type="text/javascript" src="js/CSSPlugin.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>