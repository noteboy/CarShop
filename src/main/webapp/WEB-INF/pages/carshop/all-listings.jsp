<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if IE 9]>					<html class="ie9 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->
<head>
	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz|Open+Sans:400,600,700|Oswald|Electrolize' rel='stylesheet' type='text/css' />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	<title>Car Dealer | All Listings</title>

	<meta name="description" content="" />
	<meta name="author" content="" />

	<link rel="shortcut" href="images/favicon.ico" />
	<link rel="stylesheet" href="css/style.css" media="screen" />
	<link rel="stylesheet" href="css/skeleton.css" media="screen" />
	<link rel="stylesheet" href="css/flexslider.css" media="screen" />
	<link rel="stylesheet" href="css/jquery.fancybox.css" media="screen" />
	<!-- HTML5 Shiv + detect touch events -->
	<script type="text/javascript" src="js/modernizr.custom.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body class="menu-1 h-style-1 text-1">

<div class="wrap">

	<!-- - - - - - - - - - - - - - Header - - - - - - - - - - - - - - - - -->

	<header id="header" class="clearfix">

		<a href="index.html" id="logo"><img src="images/logo.png" alt="Car Dealer" /></a>

		<div class="widget-container widget_search">

			<span class="call"><span>+1 234</span> 567-8901</span><br />

			<span class="adds">12 Street, Los Angeles, CA, 94101</span>

			<form action="#" id="searchform" method="get" />

				<p>
					<input type="text" id="s" placeholder="Search" />
					<button type="submit" id="searchsubmit"></button>
				</p>

			</form><!--/ #searchform-->

		</div><!--/ .widget-container-->

		<nav id="navigation" class="navigation">

			<ul>
				<li><a href="index.html">Home</a></li>
				<li class="current-menu-item"><a href="all-listings.html">Browse By</a>
					<ul>
						<li class="current-menu-item"><a href="all-listings.html">All Listings</a></li>
						<li><a href="#">Manufacturer</a>
							<ul>
								<li><a href="one-products.html">Aston Martin</a></li>
								<li><a href="one-products.html">Audi</a></li>
								<li><a href="one-products.html">BMW</a></li>
								<li><a href="one-products.html">Chevrolet</a></li>
								<li><a href="one-products.html">Mercedes Benz</a></li>
								<li><a href="one-products.html">Ferrari</a></li>
								<li><a href="one-products.html">Lexus</a></li>
								<li><a href="one-products.html">Porsche</a></li>
								<li><a href="one-products.html">Toyota</a></li>
							</ul>
						</li>
						<li><a href="#">Body Type</a></li>
						<li><a href="#">Engine Size</a></li>
						<li><a href="#">Mileage</a></li>
						<li><a href="#">Model Year</a></li>
						<li><a href="#">Price Range</a></li>
						<li><a href="#">Transmission</a></li>
					</ul>
				</li>
				<li><a href="blog.html">Blog</a>
					<ul>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="blog-single.html">Blog Single</a></li>
					</ul>
				</li>
				<li><a href="alternative-blog.html">News</a></li>
				<li><a href="sales-reps.html">Sales Reps</a></li>
				<li><a href="compare-listings.html">Pages</a>
					<ul>
						<li><a href="compare-listings.html">Compare Listings</a></li>
						<li><a href="404.html">404 Page</a></li>
						<li><a href="image-and-floats.html">Images and Floats</a></li>
						<li><a href="pricing-table.html">Pricing Tables</a></li>
						<li><a href="typography.html">Typography</a></li>
						<li><a href="../../../toggle.html">FAQ Toggle</a></li>
						<li><a href="columns.html">Column Layout</a></li>
					</ul>
				</li>
				<li><a href="contact.html">Contacts</a></li>
			</ul>

		</nav><!--/ #navigation-->

	</header><!--/ #header-->

	<!-- - - - - - - - - - - - - - end Header - - - - - - - - - - - - - - - - -->


	<div class="main">

		<!-- - - - - - - - - - - - - - - Container - - - - - - - - - - - - - - - - -->

		<section class="container sbl clearfix">

			<!-- - - - - - - - - - - - - - - Content - - - - - - - - - - - - - - - - -->

			<section id="content" class="twelve columns">

				<div class="recent-list-cars">

					<h3 class="widget-title"><span>Recent</span> Automobiles</h3>

					<ul class="recent-list-cars clearfix">

						<li>
							<a href="one-products.html" class="single-image picture">
								<img src="images/temp/thumb-1.jpg" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">2009 Aston Martin DB9</h6>
							</a>

							<div class="detailed">
								<span class="cost">$8.966</span>
								<span>1.4i TS 5Dr</span> <br />
								<b>23000 Miles</b>
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>

						<li>
							<a href="one-products.html" class="single-image picture">
								<img src="images/temp/thumb-2.jpg" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">2009 Aston Martin DB9</h6>
							</a>

							<div class="detailed">
								<span class="cost">$8.966</span>
								<span>1.4i TS 5Dr</span> <br />
								<b>23000 Miles</b>
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>

						<li>
							<a href="one-products.html" class="single-image picture video">
								<img src="images/temp/thumb-3.jpg" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">2009 Aston Martin DB9</h6>
							</a>

							<div class="detailed">
								<span class="cost">$8.966</span>
								<span>1.4i TS 5Dr</span> <br />
								<b>23000 Miles</b>
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>

						<li>
							<a href="one-products.html" class="single-image picture">
								<img src="images/temp/no-thumb.jpg" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">2009 Aston Martin DB9</h6>
							</a>

							<div class="detailed">
								<span class="cost">$8.966</span>
								<span>1.4i TS 5Dr</span> <br />
								<b>23000 Miles</b>
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>

						<li>
							<a href="one-products.html" class="single-image picture video">
								<img src="images/temp/thumb-4.jpg" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">2009 Aston Martin DB9</h6>
							</a>

							<div class="detailed">
								<span class="cost">$8.966</span>
								<span>1.4i TS 5Dr</span> <br />
								<b>23000 Miles</b>
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>

						<li>
							<a href="one-products.html" class="single-image picture">
								<img src="images/temp/thumb-5.jpg" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">2009 Aston Martin DB9</h6>
							</a>

							<div class="detailed">
								<span class="cost">$8.966</span>
								<span>1.4i TS 5Dr</span> <br />
								<b>23000 Miles</b>
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>

						<li>
							<a href="one-products.html" class="single-image picture">
								<img src="images/temp/thumb-5.jpg" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">2009 Aston Martin DB9</h6>
							</a>

							<div class="detailed">
								<span class="cost">$8.966</span>
								<span>1.4i TS 5Dr</span> <br />
								<b>23000 Miles</b>
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>

						<li>
							<a href="one-products.html" class="single-image picture">
								<img src="images/temp/no-thumb.jpg" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">2009 Aston Martin DB9</h6>
							</a>

							<div class="detailed">
								<span class="cost">$8.966</span>
								<span>1.4i TS 5Dr</span> <br />
								<b>23000 Miles</b>
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>

						<li>
							<a href="one-products.html" class="single-image picture video">
								<img src="images/temp/thumb-4.jpg" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">2009 Aston Martin DB9</h6>
							</a>

							<div class="detailed">
								<span class="cost">$8.966</span>
								<span>1.4i TS 5Dr</span> <br />
								<b>23000 Miles</b>
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>

					</ul><!--/ .recent-list-cars-->

				</div><!--/ .recent-list-cars-->

				<div class="wp-pagenavi clearfix">

					<span class="pages">Page 1 of 2</span>
					<a class="prevpostslink" href="#"></a>
					<span class="current">1</span>
					<a class="page" href="#">2</a>
					<a class="nextpostslink" href="#"></a>

				</div><!--/ .wp-pagenavi-->

			</section><!--/ #content-->

			<!-- - - - - - - - - - - - - - end Content - - - - - - - - - - - - - - - - -->


			<!-- - - - - - - - - - - - - - - Sidebar - - - - - - - - - - - - - - - - -->

			<aside id="sidebar" class="four columns">


				<div class="widget-container widget_custom_search">

					<h3 class="widget-title">Quick Search</h3>

					<form action="/" id="boxpanel" class="form-panel" />

						<fieldset>
							<label for="manufacturer">Manufacturer:</label>
							<select id="manufacturer" name="manufacturer">
								<option value="0" />Any
								<option value="1" />Lorem
								<option value="2" />Ipsum
							</select>
						</fieldset>

						<fieldset>
							<label for="minprice">Min Price:</label>
							<select id="minprice" name="minprice">
								<option value="0" />No min
								<option value="1" />Lorem
								<option value="2" />Ipsum
							</select>
						</fieldset>

						<fieldset>
							<label for="maxprice">Max Price:</label>
							<select id="maxprice" name="maxprice">
								<option value="0" />No max
								<option value="1" />Lorem
								<option value="2" />Ipsum
							</select>
						</fieldset>

						<fieldset>
							<label for="trans">Trans:</label>
							<select id="trans" name="trans">
								<option value="0" />Any
								<option value="1" />Lorem
								<option value="2" />Ipsum
							</select>
						</fieldset>

						<fieldset>
							<label for="mileage">Mileage:</label>
							<select id="mileage" name="mileage">
								<option value="0" />Any
								<option value="1" />Lorem
								<option value="2" />Ipsum
							</select>
						</fieldset>

						<fieldset>
							<label for="bodytype">Body Type:</label>
							<select id="bodytype" name="bodytype">
								<option value="0" />Any
								<option value="1" />Lorem
								<option value="2" />Ipsum
							</select>
						</fieldset>

						<div class="clear"></div>
						<button id="submitSearch" class="submit-search" type="submit">Search</button>

					</form><!--/ .form-panel-->

				</div><!--/ .widget-container-->


				<div class="widget-container widget_loan_calculator">

					<div class="widget-head">

						<h3 class="widget-title">Loan Calculator</h3>

					</div>

					<div class="entry-loan">

						<table>
							<tr>
								<td><label for="loan_amount">Loan Amount</label></td>
								<td><input id="loan_amount" type="text" value="0.00" /></td>
								<td>$</td>
							</tr>
							<tr>
								<td><label for="payment">Down Payment</label></td>
								<td><input id="payment" type="text" value="0.00" /></td>
								<td>$</td>
							</tr>
							<tr>
								<td><label for="rate">Annual Rate</label></td>
								<td><input id="rate" type="text" value="0.00" /></td>
								<td>%</td>
							</tr>
							<tr>
								<td><label for="term">Term</label></td>
								<td><input id="term" type="text" value="0.00" /></td>
								<td>Yrs</td>
							</tr>
							<tr>
								<td>
									<a id="buttonCalculate" href="#" class="button orange">Calculate</a>
								</td>
							</tr>
							<tr>
								<td><label for="payments">Payments</label></td>
								<td><input id="payments" type="text" value="0.00" /></td>
								<td></td>
							</tr>
							<tr>
								<td><label for="mpayment">Monthly Payment</label></td>
								<td><input id="mpayment" type="text" value="0.00" /></td>
								<td>$</td>
							</tr>
						</table>

					</div><!--/ .entry-loan-->

				</div><!--/ .widget-container-->

				<div class="widget-container widget_recent_entries">

					<h3 class="widget-title">Recent News</h3>

					<ul>
						<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing</a></li>
						<li><a href="#">Ipsum dolor sit amet, consectetur adipisicing</a></li>
						<li><a href="#">Set magna ipsum dolor sit amet, consectetur adipisicing</a></li>
					</ul>

					<a href="#" class="see">See all news</a>

				</div><!--/ .widget-container-->

			</aside><!--/ #sidebar-->

			<!-- - - - - - - - - - - - - end Sidebar - - - - - - - - - - - - - - - - -->

		</section><!--/.container -->

		<!-- - - - - - - - - - - - - end Container - - - - - - - - - - - - - - - - -->

	</div><!--/ .main-->


	<!-- - - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->

	<footer id="footer" class="container clearfix">

		<section class="container clearfix">

			

			<div class="adjective clearfix">

				<p class="copyright">Copyright &copy; 2013. ThemeMakers. All rights reserved.Collect from <a href="http://www.777moban.com/" title="网页模板" target="_blank">网页模板</a></p>

			</div><!--/ .adjective-->

		</section><!--/ .container-->

	</footer><!--/ #footer-->

	<!-- - - - - - - - - - - - - - - end Footer - - - - - - - - - - - - - - - - -->

</div><!--/ .wrap-->

<div class="account-wrapper">

	<form class="form-reg" method="post" action="" />

		<a href="#" class="log">Login</a>

		<p>
			<label>Username*</label>
			<input class="input-medium" type="text" />
		</p>

		<p>
			<label>Password*</label>
			<input class="input-medium" type="password" />
		</p>

		<p class="forgot-pass">
			<a href="#">Forgot your password?</a>
		</p>

		<p>
			<a href="#" class="button dark enter-btn">Login</a>
			<a href="#" class="button dark enter-btn">Create an account</a>
		</p>

	</form><!--/ .form-reg-->

</div><!--/ .account-wrapper-->

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script> -->
<script>window.jQuery || document.write('<script src="js/jquery-1.7.2.min.js"><\/script>')</script>
<!--[if lt IE 9]>
	<script src="js/selectivizr-and-extra-selectors.min.js"></script>
<![endif]-->
<script src="js/jquery.flexslider-min.js"></script>
<!-- <script src="http://maps.google.com/maps/api/js?sensor=false"></script> -->
<!-- <script src="js/jquery.gmap.min.js"></script> -->
<script src="js/custom.js"></script>

</body>
</html>
