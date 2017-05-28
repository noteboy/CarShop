<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%--<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->--%>
<%--<!--[if IE 9]>					<html class="ie9 no-js" lang="en">     <![endif]-->--%>
<%--<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->--%>
<head>
	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz|Open+Sans:400,600,700|Oswald|Electrolize' rel='stylesheet' type='text/css' />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	<title>Car Dealer | One Products</title>

	<meta name="description" content="" />
	<meta name="author" content="" />
	<link rel="stylesheet" href="css/button.css">
	<link rel="shortcut" href="images/favicon.ico" />
	<link rel="stylesheet" href="css/style.css" media="screen" />
	<link rel="stylesheet" href="css/galleriffic.css" media="screen" />
	<link rel="stylesheet" href="css/skeleton.css" media="screen" />
	<link rel="stylesheet" href="css/jquery.fancybox.css" media="screen" />
	<link rel="stylesheet" href="css/cartstyle.css" />

	<!-- HTML5 Shiv + detect touch events -->
	<script type="text/javascript" src="js/modernizr.custom.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body class="menu-1 h-style-1 text-1">

<div class="wrap">

	<!-- - - - - - - - - - - - - - Header - - - - Q- - - - - - - - - - - - -->

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
						<li><a href="all-listings.html">All Listings</a></li>
						<li class="current-menu-item"><a href="#">Manufacturer</a>
							<ul>
								<li class="current-menu-item"><a href="one-products.html">Aston Martin</a></li>
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
						<li><a href="toggle.html">FAQ Toggle</a></li>
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

				<article class="item clearfix">

					<h2 class="title">Ferrari F12 Berlinetta 2012</h2>
					<div id="gallery" class="gallery">

						<div class="slideshow-container">
							<div id="loading" class="loader"></div>
							<div id="slideshow" class="slideshow clearfix"></div>
						</div><!--/ .slideshow-container-->

						<div id="thumbs" class="clearfix">

							<ul class="thumbs list-image clearfix">

								<li>
									<a class="thumb" name="leaf" href="images/temp/item-1.jpg" title="Title 0">
										<img src="images/temp/list-thumb-1.jpg" alt="Title #1" />
									</a>
								</li>

								<li>
									<a class="thumb" name="drop" href="images/temp/item-2.jpg" title="Title 1">
										<img src="images/temp/list-thumb-2.jpg" alt="Title #2" />
									</a>
								</li>

								<li>
									<a class="thumb" name="leaf" href="images/temp/item-3.jpg" title="Title 2">
										<img src="images/temp/list-thumb-3.jpg" alt="Title #3" />
									</a>
								</li>

								<li>
									<a class="thumb" name="leaf" href="images/temp/item-4.jpg" title="Title 3">
										<img src="images/temp/list-thumb-4.jpg" alt="Title #4" />
									</a>
								</li>

								<li>
									<a class="thumb" name="leaf" href="images/temp/item-5.jpg" title="Title 4">
										<img src="images/temp/list-thumb-5.jpg" alt="Title #5" />
									</a>
								</li>

								<li>
									<a class="thumb" name="leaf" href="images/temp/item-6.jpg" title="Title 5">
										<img src="images/temp/list-thumb-6.jpg" alt="Title #6" />
									</a>
								</li>

							</ul><!--/ .thumbs-->

						</div><!--/ #thumbs-->

					</div><!--/ #gallery-->

					<div class="extra">

						<b class="heading">Price:</b>

						<span class="cost">$8,896.99</span>

						<ul class="list type-1">
							<li><b>Reg Number: </b><span>423423</span></li>
							<li><b>Mileage: </b><span>20650</span></li>
							<li><b>Body Type: </b><span>Sports</span></li>
							<li><b>Model Year: </b><span>2002</span></li>
							<li><b>Engine Size: </b><span>3.8L</span></li>
							<li><b>Trans: </b><span>Manual</span></li>
							<li><b>Fuel Type: </b><span>Gas</span></li>
							<li><b>Owners: </b><span>1</span></li>
						</ul>
						<button href="#0" class="button button-caution button-box button-jumbo add-button" data-price="8896.99" data-proid="4" data-proname="Ferrari F12" data-proimg="images\temp\item-1.jpg">添加到购物车</button>

						<!-- <ul class="addthis-toolbox clearfix">
                           <li><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a></li>
                           <li><a class="addthis_button_tweet"></a></li>
                           <li><a class="addthis_button_google_plusone" g:plusone:size="medium"></a></li>
                           <li><a class="addthis_counter addthis_pill_style"></a></li>
                       </ul>

                       <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4f3c188f442f3bf2"></script> -->

					</div><!--/ .extra-->

					<div class="entry-item">

						<div class="video-box">

							<b class="heading">Video:</b>

							<a href="http://www.youtube.com/embed/CNP8DMCDjgw?feature=player_detailpage" class="video-image video-icon">
								<img src="images/temp/list-thumb-1.jpg" alt="" />
							</a>

						</div><!--/ .video-box-->

						<h3 class="section-title">VIN Information</h3>

						<p>
							Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat
							nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
							mollit anim. Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
							magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.
						</p>

						<p>
							Labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt
							in culpa qui officia deserunt mollit anim. Consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
						</p>

						<div class="entry-tabs">

							<ul class="tabs-nav">

								<li><a href="#tab1">Specifications</a></li>
								<li><a href="#tab2">Safety</a></li>
								<li><a href="#tab3">Convenience</a></li>
								<li><a href="#tab4">Comfort</a></li>
								<li><a href="#tab5">Entertainment</a></li>

							</ul><!--/ .tabs-nav -->

							<div class="tabs-container">

								<div class="tab-content clearfix" id="tab1">

									<div class="five columns">

										<ul class="list type-1">
											<li><b>Body Style: </b><span>SEDAN 4-DR</span></li>
											<li><b>Driveline: </b><span>FWD</span></li>
											<li><b>Fuel Economy-city: </b><span>30-32 miles/gallon</span></li>
											<li><b>Anti-Brake System: </b><span>Non-ABS | 4-Wheel | ABS</span></li>
											<li><b>Front Brake Type: </b><span>Disc</span></li>
											<li><b>Turning Diameter: </b><span>36.10 in.</span></li>
											<li><b>Rear Suspension: </b><span>Semi</span></li>
											<li><b>Rear Spring Type: </b><span>Coil</span></li>
											<li><b>Front Headroom: </b><span>39.10 in.</span></li>
											<li><b>Front Legroom: </b><span>41.30 in.</span></li>
											<li><b>Front Shoulder Room: </b><span>53.10 in.</span></li>
											<li><b>Front Hip Room: </b><span>51.90 in.</span></li>
											<li><b>Curb Weight-automatic: </b><span>2568 lbs</span></li>
											<li><b>Overall Length: </b><span>178.30 in.</span></li>
										</ul>

									</div>

									<div class="five columns">

										<ul class="list type-1">
											<li><b>Overall Height: </b><span>58.50 in.</span></li>
											<li><b>Ground Clearance: </b><span>5.70 in.</span></li>
											<li><b>Track Front: </b><span>58.30 in.</span></li>
											<li><b>Standard Seating: </b><span>5</span></li>
											<li><b>Cargo Volume: </b><span>13.60 ft.</span></li>
											<li><b>Maximum Towing: </b><span>1500 lbs</span></li>
											<li><b>Basic-distance: </b><span>36.000 mile</span></li>
											<li><b>Engine Type: </b><span>1.8L L4 DOHC 16V</span></li>
										</ul>

									</div>

								</div><!--/ .tab-content -->

								<div class="tab-content clearfix" id="tab2">

									<div class="five columns">

										<ul class="list type-1">
											<li><b>Fuel Economy-city: </b><span>30-32 miles/gallon</span></li>
											<li><b>Anti-Brake System: </b><span>Non-ABS | 4-Wheel | ABS</span></li>
											<li><b>Front Brake Type: </b><span>Disc</span></li>
											<li><b>Turning Diameter: </b><span>36.10 in.</span></li>
											<li><b>Rear Suspension: </b><span>Semi</span></li>
										</ul>

									</div>

									<div class="five columns">

										<ul class="list type-1">
											<li><b>Overall Height: </b><span>58.50 in.</span></li>
											<li><b>Ground Clearance: </b><span>5.70 in.</span></li>
											<li><b>Track Front: </b><span>58.30 in.</span></li>
											<li><b>Standard Seating: </b><span>5</span></li>
											<li><b>Cargo Volume: </b><span>13.60 ft.</span></li>
											<li><b>Maximum Towing: </b><span>1500 lbs</span></li>
											<li><b>Basic-distance: </b><span>36.000 mile</span></li>
											<li><b>Engine Type: </b><span>1.8L L4 DOHC 16V</span></li>
										</ul>

									</div>

								</div><!--/ .tab-content -->

								<div class="tab-content clearfix" id="tab3">

									<div class="five columns">

										<ul class="list type-1">
											<li><b>Body Style: </b><span>SEDAN 4-DR</span></li>
											<li><b>Driveline: </b><span>FWD</span></li>
											<li><b>Fuel Economy-city: </b><span>30-32 miles/gallon</span></li>
											<li><b>Anti-Brake System: </b><span>Non-ABS | 4-Wheel | ABS</span></li>
											<li><b>Rear Suspension: </b><span>Semi</span></li>
											<li><b>Rear Spring Type: </b><span>Coil</span></li>
											<li><b>Front Headroom: </b><span>39.10 in.</span></li>
											<li><b>Front Legroom: </b><span>41.30 in.</span></li>
											<li><b>Front Shoulder Room: </b><span>53.10 in.</span></li>
											<li><b>Front Hip Room: </b><span>51.90 in.</span></li>
											<li><b>Curb Weight-automatic: </b><span>2568 lbs</span></li>
										</ul>

									</div>

									<div class="five columns">

										<ul class="list type-1">

											<li><b>Cargo Volume: </b><span>13.60 ft.</span></li>
											<li><b>Maximum Towing: </b><span>1500 lbs</span></li>
											<li><b>Basic-distance: </b><span>36.000 mile</span></li>
											<li><b>Engine Type: </b><span>1.8L L4 DOHC 16V</span></li>
										</ul>

									</div>

								</div><!--/ .tab-content -->

								<div class="tab-content clearfix" id="tab4">

									<div class="five columns">

										<ul class="list type-1">
											<li><b>Rear Suspension: </b><span>Semi</span></li>
											<li><b>Rear Spring Type: </b><span>Coil</span></li>
											<li><b>Front Headroom: </b><span>39.10 in.</span></li>
											<li><b>Front Legroom: </b><span>41.30 in.</span></li>
											<li><b>Front Shoulder Room: </b><span>53.10 in.</span></li>
											<li><b>Front Hip Room: </b><span>51.90 in.</span></li>
											<li><b>Curb Weight-automatic: </b><span>2568 lbs</span></li>
											<li><b>Overall Length: </b><span>178.30 in.</span></li>
										</ul>

									</div>

									<div class="five columns">

										<ul class="list type-1">
											<li><b>Overall Height: </b><span>58.50 in.</span></li>
											<li><b>Ground Clearance: </b><span>5.70 in.</span></li>
											<li><b>Track Front: </b><span>58.30 in.</span></li>
											<li><b>Standard Seating: </b><span>5</span></li>
											<li><b>Cargo Volume: </b><span>13.60 ft.</span></li>
											<li><b>Maximum Towing: </b><span>1500 lbs</span></li>
											<li><b>Basic-distance: </b><span>36.000 mile</span></li>
											<li><b>Engine Type: </b><span>1.8L L4 DOHC 16V</span></li>
										</ul>

									</div>

								</div><!--/ .tab-content -->

								<div class="tab-content clearfix" id="tab5">

									<div class="five columns">

										<ul class="list type-1">
											<li><b>Body Style: </b><span>SEDAN 4-DR</span></li>
											<li><b>Driveline: </b><span>FWD</span></li>
											<li><b>Fuel Economy-city: </b><span>30-32 miles/gallon</span></li>
											<li><b>Anti-Brake System: </b><span>Non-ABS | 4-Wheel | ABS</span></li>
											<li><b>Rear Spring Type: </b><span>Coil</span></li>
											<li><b>Front Headroom: </b><span>39.10 in.</span></li>
											<li><b>Front Legroom: </b><span>41.30 in.</span></li>
											<li><b>Front Shoulder Room: </b><span>53.10 in.</span></li>
											<li><b>Front Hip Room: </b><span>51.90 in.</span></li>
											<li><b>Curb Weight-automatic: </b><span>2568 lbs</span></li>
										</ul>

									</div>

									<div class="five columns">

										<ul class="list type-1">
											<li><b>Track Front: </b><span>58.30 in.</span></li>
											<li><b>Standard Seating: </b><span>5</span></li>
											<li><b>Cargo Volume: </b><span>13.60 ft.</span></li>
											<li><b>Maximum Towing: </b><span>1500 lbs</span></li>
											<li><b>Basic-distance: </b><span>36.000 mile</span></li>
											<li><b>Engine Type: </b><span>1.8L L4 DOHC 16V</span></li>
										</ul>

									</div>

								</div><!--/ .tab-content -->

							</div><!--/ .tabs-container -->

						</div><!--/ .entry-tabs-->

						<h3 class="section-title">Contact Us regarding this car</h3>

						<form method="post" action="" class="comments-form" />

						<p class="input-block">
							<label for="name">Your Name (required)</label>
							<input type="text" name="name" id="name" />
						</p>

						<p class="input-block">
							<label for="email">Your Email (required)</label>
							<input type="text" name="email" id="email" />
						</p>

						<p class="input-block">
							<label for="web">Website</label>
							<input type="text" name="web" id="web" />
						</p>

						<p class="input-block">
							<label for="comments">You Message: (required)</label>
							<textarea name="comments" id="comments" cols="30" rows="10"></textarea>
						</p>

						<p class="input-block">
							<label>&nbsp;</label>
							<button class="button orange" type="submit" id="submit">Submit</button>
						</p>

						</form><!--/ .contact-form-->

					</div><!--/ .entry-item-->

				</article><!--/ .item-->

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

<div class="cd-cart-container empty">
	<a href="#0" class="cd-cart-trigger">
		购物车
		<ul class="count"> <!-- cart items count -->
			<li>0</li>
			<li>0</li>
		</ul> <!-- .count -->
	</a>

	<div class="cd-cart">
		<div class="wrapper">
			<header>
				<h2>购物车</h2>
				<span class="undo">已删除 <a href="#0">恢复</a></span>
			</header>

			<div class="body">
				<ul>
					<!-- products added to the cart will be inserted here using JavaScript -->
				</ul>
			</div>

			<footer>
				<a href="#0" class="checkout"><em>&nbsp &nbsp结算 - $<span>0</span></em></a>
			</footer>
		</div>
	</div> <!-- .cd-cart -->
</div>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script> -->
<script>window.jQuery || document.write('<script src="js/jquery-1.7.2.min.js"><\/script>')</script>
<!--[if lt IE 9]>
<script src="js/selectivizr-and-extra-selectors.min.js"></script>
<![endif]-->
<script src="js/jquery.flexslider-min.js"></script>
<!-- <script src="http://maps.google.com/maps/api/js?sensor=false"></script> -->
<!-- <script src="js/jquery.gmap.min.js"></script> -->
<script src="js/custom.js"></script>
<script src="js/jquery.galleriffic.js"></script>
<!-- <script src="js/jquery.min.js"></script> -->
<script src="js/main.js"></script>
</body>
</html>

