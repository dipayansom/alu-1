<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Admin - Add Product</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<link href="styles/adminViewProduct.css" type="text/css" rel="stylesheet">
	</head>
<body>
	<div id="main" class="container-fluid row">
		<div id="top">
			<nav class="navbar navbar-default">	
    			<div id="nav" class="navbar-header">
      				<a class="navbar-brand" href="#"><img id="picture" src="images/nav_logo.jpg"/></a>
				</div>
				<form class="navbar-form navbar-left">
			 		<div class="input-group add-on">
				<input class="form-control" placeholder="Search" id="search" type="text">
					<div class="input-group-btn">
						<button type="submit" class="btn btn-default" id="searchbtn">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
   				</form>
   			
				<div id="last" class="navbar-form navbar-right">
					<form action="login.jsp">		
        					<span id="noti_icon" class="glyphicon glyphicon-bell"></span>
        					<span id="info"><b>Welcome, Admin &lt;name&gt;...</b></span>
        					<input type="submit" id="logout" value="Logout">
					</form>
        		</div>
 
  			</nav>
  		</div>
  		<div id="middle" class="row">
  			<div class="col-sm-1"></div>
			<div class="col-sm-3" id=mid_left>
				<div  align="center" id="profile_bar" class="row">
						<div align="left" id="profile" >PROFILE</div>
				</div>
				<div align="center" id="profile_contents">
					<img class="img-responsive" id="profilePicture" src="images/billgates.jpg"/>
					<h3>Helen Cho</h3>
					<h5><b>ID</b></h5><h5 id="idspace">GRZLY17234</h5>
					<h5><b>Designation</b></h5><h5 id="idspace">Sr.Admin</h5>
					<h5><b>Office</b></h5><h5 id="idspace3">NYC,NY,USA</h5>
				</div>
			</div>
			<div class="col-sm-1"></div>
			<div  class="col-sm-6">
				<div id="categories" class="row">
					<ul class="nav nav-pills nav-justified" style="background-color:#e6e6e6;">
    				<li class="active"><a data-toggle="tab" data-toggle="pill" href="#product" style="font-size:30px;" href="#">PRODUCTS</a></li>
    				<li><a data-toggle="pill" href="#vendor" style="font-size:30px;">VENDORS</a></li>
    				<li><a data-toggle="pill" href="#category" style="font-size:30px;">CATEGORY</a></li>
  				</ul>
  				</div>
				<div id="product-heading">
					<span id="product-name">Mobile  </span><span id="product-company">  by Samsung  </span><span class="glyphicon glyphicon-ok-sign"></span>
				</div>
  				<!-- carousel -->
				<div class="tab-content">
				<div id="product" class="tab-pane fade in active">
  				<div class="col-sm-5">
	 				<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
	 					<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	 						<li data-target="#myCarousel" data-slide-to="1"></li>
	  					</ol>
	  					<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img src="images/mobile.jpg" alt="Undefined">
							</div>
							
							<div class="item">
								<img src="images/mobile2.jpg" alt="Undefined">
							</div>
						</div>
						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="right carousel-control" href="#myCarousel" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
							<span class="sr-only">Next</span>
 						</a>
  					</div>
  				</div>
  				<div class="col-sm-4" id="rate-div">
  					<section>
	  					<h3>Product Description <span class="glyphicon glyphicon-ok-sign"></span></h3>
	  					<p id="description">
							Evolution of mobile phones, to an early smartphone. Several models followed, starting in 1985 with the 8000s, and continuing with periodic updates of increasing frequency until 1993's Classic II. The DynaTAC was replaced in most roles by the much smaller Motorola MicroTAC when it was first introduced in 1989, and by the time of the Motorola StarTAC's release in 1996, it was obsolete.
	  					</p>
	  				</section>
	  				<section id="rate">
	  					<b>Rs. XXXX/- 15% off <span class="glyphicon glyphicon-ok-sign"></span></b>
	  				</section>
  				</div>
  				<div class="col-sm-3">
  					<form id="button-grp" action="adminListProduct.jsp">
  						<div id="button-grp2">

	  						<input type="submit" id="finish" value="Finish" ><br />
	  						<input type="button" id="cancel" value="Cancel" >
	  					</div>
  					</form>
  				</div>
			</div>
</div>
</div>
		</div>
	</div>
	
</body>
</html>