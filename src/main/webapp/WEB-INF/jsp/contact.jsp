<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Contact</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Luxury Furnish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/component.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//webfont-->
<script src="js/jquery.easydropdown.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
		<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		});
		</script>
<!----details-product-slider--->
</head>
<body>
	 <div class="header">
	<div class="container">
		<div class="header-top">
      		<div class="logo">
				<a href="index"><h6>Online Furnish</h6><h2>Luxury</h2></a>
			 </div>
		   <div class="header_right">
			 <ul class="social">
				<li><a href=""> <i class="fb"> </i> </a></li>
				<li><a href=""><i class="tw"> </i> </a></li>
				<li><a href=""><i class="utube"> </i> </a></li>
				<li><a href=""><i class="pin"> </i> </a></li>
				<li><a href=""><i class="instagram"> </i> </a></li>
			 </ul>
		    <div class="lang_list">
			  <select tabindex="4" class="dropdown">
				<option value="" class="label" value="">En</option>
				<option value="1">English</option>
				<option value="2">French</option>
				<option value="3">German</option>
			  </select>
   			</div>
			<div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
		 </div>  
		 <div class="about_box">
			<ul class="login">
				<li class="login_text"><a href="login">Login</a></li>
				<li class="wish"><a href="checkout">Wish List</a></li>
				<div class='clearfix'></div>
		    </ul>
		    <ul class="quick_access">
				<li class="view_cart"><a href="checkout">View Cart</a></li>
				<li class="check"><a href="checkout">Checkout</a></li>
				<div class='clearfix'></div>
		     </ul>
			<div class="search">
			   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
			   <input type="submit" value="">
			</div>
		  </div>
		</div>
    </div> 
	<div class="main">
		<div class="content_box">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="menu_box">
							<h3 class="menu_head">Menu</h3>
							 <ul class="nav">
								<li><a href="about">About</a></li>
								<li><a href="about">Living Room</a></li>
								<li><a href="about">Office Furniture</a></li>
								<li><a href="about">Bean Bags</a></li>
								<li><a href="about">Tables</a></li>
								<li><a href="about">Sofas</a></li>
								<li><a href="about">Wardrobes</a></li>
								<li><a href="about">Beds</a></li>
								<li><a href="typo">Typo</a></li>
								<li><a href="about">Chairs</a></li>
								<li><a href="about">Kids Beds</a></li>
							 </ul>
						</div>
						<div class="side_banner">
							<div class="banner_img"><img src="images/pic9.jpg" class="img-responsive" alt=""/></div>
							<div class="banner_holder">
								<h3>Now <br> is <br> Open!</h3>
							</div>
						</div>
					</div>
					<div class="col-md-9">
						<div class="dreamcrub">
							<ul class="breadcrumbs">
								<li class="home">
									<a href="index" title="Go to Home Page">Home</a>&nbsp;
									<span>&gt;</span>
								</li>
								<li class="women">Contact Us</li>
							</ul>
							<ul class="previous">
								<li><a href="index">Back to Previous Page</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="singel_right">
							<div class="lcontact span_1_of_contact">
								<div class="contact-form">
									<form>
										<p class="comment-form-author"><label for="author">Your Name:</label>
											<input type="text" class="textbox" value="Enter your name here..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your name here...';}">
										</p>
										<p class="comment-form-author"><label for="author">Email:</label>
										   <input type="text" class="textbox" value="Enter your email here..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
										</p>
										<p class="comment-form-author"><label for="author">Message:</label>
										  <textarea value="Enter your message here..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Enter your message here...</textarea>
										</p>
										<input name="submit" type="submit" id="submit" value="Submit">
									</form>
								</div>
							</div>
							<div class="contact_grid span_2_of_contact_right">
								<h3>Address</h3>
								<div class="address">
									<i class="pin_icon"></i>
									<div class="contact_address">
									  Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="address">
									<i class="phone"></i>
									<div class="contact_address">
									   1-25-2568-897
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="address">
									<i class="mail"></i>
									<div class="contact_email">
										<p>Email : <a href="mailto:example@mail.com">mail@example.com</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="map">   	 
							<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#666;text-align:left;font-size:12px"></a></small>
						</div>
					</div>
				</div>
			</div>
	    </div>
	</div>
		<div class="container">
			<div class="brands">
				<ul class="brand_icons">
					<li><img src='images/icon1.png' class="img-responsive" alt=""/></li>
					<li><img src='images/icon2.png' class="img-responsive" alt=""/></li>
					<li><img src='images/icon3.png' class="img-responsive" alt=""/></li>
					<li><img src='images/icon4.png' class="img-responsive" alt=""/></li>
					<li class="last"><img src='images/icon5.png' class="img-responsive" alt=""/></li>
				</ul>
			</div>
	    </div>
	    <div class="container">
	      <div class="instagram_top">
	      	<div class="instagram text-center">
				<h3>Our Collections</h3>
			</div>
	        <ul class="instagram_grid">
			  <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="images/i1.jpg" class="img-responsive"alt=""/></a></li>
			  <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="images/i2.jpg" class="img-responsive" alt=""/></a></li>
			  <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="images/i3.jpg" class="img-responsive" alt=""/></a></li>
			  <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="images/i4.jpg" class="img-responsive" alt=""/></a></li>
			  <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="images/i5.jpg" class="img-responsive" alt=""/></a></li>
			  <li class="last_instagram"><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="images/i6.jpg" class="img-responsive" alt=""/></a></li>
			  <div class="clearfix"></div>
			  <div id="small-dialog1" class="mfp-hide">
				<div class="pop_up">
					<h4>A Sample Photo Stream</h4>
					<img src="images/i_zoom.jpg" class="img-responsive" alt=""/>
				</div>
			  </div>
			</ul>
		  </div>
	      <ul class="footer_social">
			<li><a href="#"> <i class="fb"> </i> </a></li>
			<li><a href="#"><i class="tw"> </i> </a></li>
			<li><a href="#"><i class="pin"> </i> </a></li>
			<div class="clearfix"></div>
		   </ul>
	    </div>
        <div class="footer">
		<div class="container">
			<div class="footer-grid">
				<h3>Category</h3>
				<ul class="list1">
				  <li><a href="index">Home</a></li>
				  <li><a href="about">About us</a></li>
				  <li><a href="about">Eshop</a></li>
				  <li><a href="about">Features</a></li>
				  <li><a href="about">New Collections</a></li>
				  <li><a href="typo">Typo</a></li>
				  <li><a href="contact">Contact</a></li>
				</ul>
			</div>
			<div class="footer-grid">
				<h3>Our Account</h3>
				<ul class="list1">
				  <li><a href="login">Your Account</a></li>
				  <li><a href="contact">Personal information</a></li>
				  <li><a href="contact">Addresses</a></li>
				  <li><a href="#">Discount</a></li>
				  <li><a href="checkout">Orders history</a></li>
				  <li><a href="about">Search Terms</a></li>
				</ul>
			</div>
			<div class="footer-grid">
				<h3>Our Support</h3>
				<ul class="list1">
				  <li><a href="contact">Site Map</a></li>
				  <li><a href="about">Search Terms</a></li>
				  <li><a href="about">Advanced Search</a></li>
				  <li><a href="about">Mobile</a></li>
				  <li><a href="contact">Contact Us</a></li>
				  <li><a href="contact">Mobile</a></li>
				  <li><a href="contact">Addresses</a></li>
				</ul>
			</div>
			<div class="footer-grid">
				<h3>Newsletter</h3>
				<p class="footer_desc">Nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat</p>
				<div class="search_footer">
				  <input type="text" class="text" value="Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Email';}">
				  <input type="submit" value="Subscribe">
				</div>
				<img src="images/payment.png" class="img-responsive" alt=""/>
			</div>
			 <div class="clearfix"> </div>
		</div>
	</div>
	<div class="footer_bottom">
		<div class="container">
			<div class="copy">
			   <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
			</div>
		</div>
	</div>
</body>
</html>		