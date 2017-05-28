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

			<li class="adds">
				<c:if test="${!empty sessionScope.user}">
					<a href="" style="color: #ab8071">${sessionScope.user["uName"]}</a>
					欢迎您!
				</c:if>

				<span  id="user_name_text"></span>
			</li>

			<form action="#" id="searchform" method="get" />

			<p>
				<input type="text" id="s" placeholder="搜索" />
				<button type="submit" id="searchsubmit" ></button>
			</p>

			</form><!--/ #searchform-->

		</div><!--/ .widget-container-->

		<nav id="navigation" class="navigation">

			<ul>
				<li><a href="index.html">首页</a></li>
				<li><a href="all-listings.html">浏览</a>
					<ul>
						<li><a href="all-listings.html">所有列表</a></li>
						<li><a href="#">厂商</a>
							<ul>
								<li><a href="one-products.html">阿斯顿马丁</a></li>
								<li><a href="one-products.html">奥迪</a></li>
								<li><a href="one-products.html">宝马</a></li>
								<li><a href="one-products.html">雪佛兰</a></li>
								<li><a href="one-products.html">梅赛德斯奔驰</a></li>
								<li><a href="one-products.html">法拉利</a></li>
								<li><a href="one-products.html">雷克萨斯</a></li>
								<li><a href="one-products.html">保时捷</a></li>
								<li><a href="one-products.html">丰田</a></li>
							</ul>
						</li>
						<li><a href="#">车型</a></li>
						<li><a href="#">发动机尺寸</a></li>
						<li><a href="#">公里数</a></li>
						<li><a href="#">年型</a></li>
						<li><a href="#">价格幅度</a></li>
						<li><a href="#">传动装置</a></li>
					</ul>
				</li>
				<li><a href="blog.html">博客</a>
					<ul>
						<li><a href="blog.html">博客</a></li>
						<li><a href="blog-single.html">博客</a></li>
					</ul>
				</li>
				<li><a href="alternative-blog.html">新闻</a></li>
				<li><a href="sales-reps.html">价格报道</a></li>
				<li><a href="compare-listings.html">页面</a>
					<ul>
						<li><a href="compare-listings.html">比较列表</a></li>
						<li><a href="404.html">404页面</a></li>
						<li><a href="image-and-floats.html">图片</a></li>
						<li><a href="pricing-table.html">价格表</a></li>
						<li><a href="typography.html">排版</a></li>
						<li><a href="../../../toggle.html">FAQ 标签</a></li>
						<li><a href="columns.html">栅格布局</a></li>
					</ul>
				</li>
				<li><a href="contact.html">联系我们</a></li>
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

					<h2 class="title">法拉利 F12 伯林尼塔 2012款</h2>
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

						<b class="heading">价格:</b>

						<span class="cost">$8,896.99</span>

						<ul class="list type-1">
							<li><b>车型号: </b><span>423423</span></li>
							<li><b>公里数: </b><span>20650</span></li>
							<li><b>车型: </b><span>运动型</span></li>
							<li><b>车型年份: </b><span>2002年</span></li>
							<li><b>发动机尺寸: </b><span>3.8L</span></li>
							<li><b>变速器: </b><span>手动档</span></li>
							<li><b>燃料: </b><span>汽油</span></li>
							<li><b>已出售： </b><span>1辆</span></li>
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

							<b class="heading">视频预览:</b>

							<a href="http://www.youtube.com/embed/CNP8DMCDjgw?feature=player_detailpage" class="video-image video-icon">
								<img src="images/temp/list-thumb-1.jpg" alt="" />
							</a>

						</div><!--/ .video-box-->

						<h3 class="section-title">车辆信息</h3>

						<p>
							法拉利（Ferrari）是一家意大利汽车生产商，1929年由恩佐·法拉利（Enzo Ferrari）创办，
							主要制造一级方程式赛车、赛车及高性能跑车。法拉利是世界闻名的赛车和运动跑车的生产厂家，
							早期的法拉利赞助赛车手及生产赛车，1947年独立生产汽车。菲亚特（FIAT）拥有法拉利90%的股权，
							但法拉利却能独立于菲亚特运营。法拉利汽车大部分采用手工制造，产量很低，截至2011年法拉利共交付7195台新车，
							为法拉利史上最佳销售业绩。公司总部在意大利的马拉内罗（Maranello)。
						</p>

						<p>
							法拉利F12 Berlinetta是新一代的前置6.3升 V12动力车款，车头设计将与FF系出同门，经由在风洞中精雕细琢的车身造型，
							车这款全新法拉利12缸跑车从静止加速到100km/h只需3.1秒，而0-200km/h仅需8.5秒。最大马力达到740Ps，最大功率740马力/8000rpm，最高时速将达到350km/h。
						</p>

						<div class="entry-tabs">

							<ul class="tabs-nav">

								<li><a href="#tab1">规格</a></li>
								<li><a href="#tab2">安全设备</a></li>
								<li><a href="#tab3">便捷性</a></li>
								<li><a href="#tab4">舒适性</a></li>
								<li><a href="#tab5">娱乐性</a></li>

							</ul><!--/ .tabs-nav -->

							<div class="tabs-container">

								<div class="tab-content clearfix" id="tab1">

									<div class="five columns">

										<ul class="list type-1">
											<li><b>车型风格: </b><span>SEDAN 4-DR</span></li>
											<li><b>传动装置: </b><span>FWD</span></li>
											<li><b>耗油: </b><span>30-32 miles/gallon</span></li>
											<li><b>防抱死制动系统: </b><span>Non-ABS | 4-Wheel | ABS</span></li>
											<li><b>前制动类型: </b><span>Disc</span></li>
											<li><b>转弯直径: </b><span>36.10 in.</span></li>
											<li><b>后悬挂装置: </b><span>Semi</span></li>
											<li><b>后弹簧类型: </b><span>Coil</span></li>
											<li><b>前空间: </b><span>39.10 in.</span></li>
											<li><b>前座腿部空间: </b><span>41.30 in.</span></li>
											<li><b>前座肩部空间: </b><span>53.10 in.</span></li>
											<li><b>前座股部空间: </b><span>51.90 in.</span></li>
											<li><b>路边自重: </b><span>2568 lbs</span></li>
											<li><b>总长度: </b><span>178.30 in.</span></li>
										</ul>

									</div>

									<div class="five columns">

										<ul class="list type-1">
											<li><b>总高度: </b><span>58.50 in.</span></li>
											<li><b>离地净高: </b><span>5.70 in.</span></li>
											<li><b>前轮距: </b><span>58.30 in.</span></li>
											<li><b>标准化座位配置: </b><span>5</span></li>
											<li><b>货量: </b><span>13.60 ft.</span></li>
											<li><b>最大牵引力: </b><span>1500 lbs</span></li>
											<li><b>基本距离: </b><span>36.000 mile</span></li>
											<li><b>发动机类型: </b><span>1.8L L4 DOHC 16V</span></li>
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

						<h3 class="section-title">关于本车更多详细参数请联系我们</h3>

						<form method="post" action="" class="comments-form" />

						<p class="input-block">
							<label for="name">您的名字 (必填)</label>
							<input type="text" name="name" id="name" />
						</p>

						<p class="input-block">
							<label for="email">您的邮箱 (必填)</label>
							<input type="text" name="email" id="email" />
						</p>

						<p class="input-block">
							<label for="web">网站</label>
							<input type="text" name="web" id="web" />
						</p>

						<p class="input-block">
							<label for="comments">您需要了解的信息: (必填)</label>
							<textarea name="comments" id="comments" cols="30" rows="10"></textarea>
						</p>

						<p class="input-block">
							<label>&nbsp;</label>
							<button class="button orange" type="submit" id="submit">提交</button>
						</p>

						</form><!--/ .contact-form-->

					</div><!--/ .entry-item-->

				</article><!--/ .item-->

			</section><!--/ #content-->

			<!-- - - - - - - - - - - - - - end Content - - - - - - - - - - - - - - - - -->


			<!-- - - - - - - - - - - - - - - Sidebar - - - - - - - - - - - - - - - - -->

			<aside id="sidebar" class="four columns">

				<div class="widget_custom_search">

					<h3 class="widget-title">快捷搜索</h3>

					<form action="/" id="boxpanel" class="form-panel" />

					<fieldset>
						<label for="manufacturer">厂商:</label>
						<select id="manufacturer" name="manufacturer">
							<c:forEach items="${allBank}" var="bank">
								<option value="${bank}" name="${bank}"/>${bank}
								<%--<option value="1" />宝马--%>
								<%--<option value="2" />奥迪--%>
							</c:forEach>
						</select>
					</fieldset>

					<fieldset>
						<label for="minprice">最低价:</label>
						<select id="minprice" name="minprice">
							<option value="1" />￥10000
							<option value="2" />￥500000
						</select>
					</fieldset>

					<fieldset>
						<label for="maxprice">最高价：</label>
						<select id="maxprice" name="maxprice">
							<option value="1" />1000000
							<option value="2" />5000000
						</select>
					</fieldset>

					<fieldset>
						<label for="bodytype">车型:</label>
						<select id="bodytype" name="type">
							<c:forEach items="${allCarType}" var="carType">
								<option value="${carType}" name="${carType}"/>${carType}
								<%--<option value="1" />宝马--%>
								<%--<option value="2" />奥迪--%>
							</c:forEach>
						</select>
					</fieldset>

					<div class="clear"></div>
					<button id="submitSearch" class="submit-search" type="submit">搜索</button>

					</form><!--/ .form-panel-->

				</div><!--/ .main-search-panel-->

				<div class="widget-container widget_loan_calculator">

					<div class="widget-head">
						<h3 class="widget-title">贷款计算器</h3>
					</div>

					<div class="entry-loan">

						<table>
							<tr>
								<td><label for="loan_amount">贷款额</label></td>
								<td><input id="loan_amount" type="text" value="0.00" /></td>
								<td>$</td>
							</tr>
							<tr>
								<td><label for="payment">预付定金</label></td>
								<td><input id="payment" type="text" value="0.00" /></td>
								<td>$</td>
							</tr>
							<tr>
								<td><label for="rate">年付</label></td>
								<td><input id="rate" type="text" value="0.00" /></td>
								<td>%</td>
							</tr>
							<tr>
								<td><label for="term">期限</label></td>
								<td><input id="term" type="text" value="0.00" /></td>
								<td>Yrs</td>
							</tr>
							<tr>
								<td>
									<a id="buttonCalculate" href="#" class="button orange">计算</a>
								</td>
							</tr>
							<tr>
								<td><label for="payments">支付</label></td>
								<td><input id="payments" type="text" value="0.00" /></td>
								<td></td>
							</tr>
							<tr>
								<td><label for="mpayment">每月支付</label></td>
								<td><input id="mpayment" type="text" value="0.00" /></td>
								<td>$</td>
							</tr>
						</table>

					</div><!--/ .entry-loan-->

				</div><!--/ .widget-container-->

				<div class="widget-container widget_recent_entries">

					<h3 class="widget-title">最新车闻</h3>

					<ul>
						<li><a href="#">降价榜:蒙迪欧降至15.48万</a></li>
						<li><a href="#">吉利远景X1上市3.99万起</a></li>
						<li><a href="#">优惠:2017款奥迪Q5直降7万</a></li>
					</ul>

					<a href="#" class="see">查看所有新闻</a>

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

				<p class="copyright">版权所有 &copy; 2017. 内蒙古大学. 技术支持 <a href="http://www.imudges.com/" title="网页模板" target="_blank">IMUDGES</a></p>

			</div><!--/ .adjective-->

		</section><!--/ .container-->

	</footer><!--/ #footer-->

	<!-- - - - - - - - - - - - - - - end Footer - - - - - - - - - - - - - - - - -->

</div><!--/ .wrap-->

<div class="account-wrapper">

	<form class="form-reg" method="post" action="" />

	<a href="#" class="log" style="width: 70px">Login</a>

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

