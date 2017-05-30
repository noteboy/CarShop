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

	<title>汽车商城 | 搜索结果</title>

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
                <li class="current-menu-item"><a href="index.html">首页</a></li>
                <li class="current-menu-item"><a href="all-listings.html">浏览</a>
                    <ul>
                        <li class="current-menu-item"><a href="all-listings.html">所有列表</a></li>
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

				<div class="recent-list-cars">

					<h3 class="widget-title"><span>所有</span>搜索结果</h3>

					<ul class="recent-list-cars clearfix">
					<c:forEach items="${allSearchCar}" var="car">
						<li>
							<a href="one-products.html" class="single-image picture">
								<img src="${car.imgurl}" alt="" />
							</a>

							<a href="one-products.html" class="list-meta">
								<h6 class="title-list-item">${car.cName}</h6>
							</a>

							<div class="detailed">
								<span class="cost">$${car.cPrice}万</span>
								<span>${car.cBand}</span> <br />
							</div><!--/ .detailed-->

							<a href="one-products.html" class="button orange">Details</a>
							<label class="compare"><input type="checkbox" />Compare</label>

						</li>
					</c:forEach>
						<%--<li>--%>
							<%--<a href="one-products.html" class="single-image picture">--%>
								<%--<img src="images/temp/thumb-2.jpg" alt="" />--%>
							<%--</a>--%>

							<%--<a href="one-products.html" class="list-meta">--%>
								<%--<h6 class="title-list-item">2009 Aston Martin DB9</h6>--%>
							<%--</a>--%>

							<%--<div class="detailed">--%>
								<%--<span class="cost">$8.966</span>--%>
								<%--<span>1.4i TS 5Dr</span> <br />--%>
								<%--<b>23000 Miles</b>--%>
							<%--</div><!--/ .detailed-->--%>

							<%--<a href="one-products.html" class="button orange">Details</a>--%>
							<%--<label class="compare"><input type="checkbox" />Compare</label>--%>

						<%--</li>--%>

						<%--<li>--%>
							<%--<a href="one-products.html" class="single-image picture video">--%>
								<%--<img src="images/temp/thumb-3.jpg" alt="" />--%>
							<%--</a>--%>

							<%--<a href="one-products.html" class="list-meta">--%>
								<%--<h6 class="title-list-item">2009 Aston Martin DB9</h6>--%>
							<%--</a>--%>

							<%--<div class="detailed">--%>
								<%--<span class="cost">$8.966</span>--%>
								<%--<span>1.4i TS 5Dr</span> <br />--%>
								<%--<b>23000 Miles</b>--%>
							<%--</div><!--/ .detailed-->--%>

							<%--<a href="one-products.html" class="button orange">Details</a>--%>
							<%--<label class="compare"><input type="checkbox" />Compare</label>--%>

						<%--</li>--%>

						<%--<li>--%>
							<%--<a href="one-products.html" class="single-image picture">--%>
								<%--<img src="images/temp/no-thumb.jpg" alt="" />--%>
							<%--</a>--%>

							<%--<a href="one-products.html" class="list-meta">--%>
								<%--<h6 class="title-list-item">2009 Aston Martin DB9</h6>--%>
							<%--</a>--%>

							<%--<div class="detailed">--%>
								<%--<span class="cost">$8.966</span>--%>
								<%--<span>1.4i TS 5Dr</span> <br />--%>
								<%--<b>23000 Miles</b>--%>
							<%--</div><!--/ .detailed-->--%>

							<%--<a href="one-products.html" class="button orange">Details</a>--%>
							<%--<label class="compare"><input type="checkbox" />Compare</label>--%>

						<%--</li>--%>

						<%--<li>--%>
							<%--<a href="one-products.html" class="single-image picture video">--%>
								<%--<img src="images/temp/thumb-4.jpg" alt="" />--%>
							<%--</a>--%>

							<%--<a href="one-products.html" class="list-meta">--%>
								<%--<h6 class="title-list-item">2009 Aston Martin DB9</h6>--%>
							<%--</a>--%>

							<%--<div class="detailed">--%>
								<%--<span class="cost">$8.966</span>--%>
								<%--<span>1.4i TS 5Dr</span> <br />--%>
								<%--<b>23000 Miles</b>--%>
							<%--</div><!--/ .detailed-->--%>

							<%--<a href="one-products.html" class="button orange">Details</a>--%>
							<%--<label class="compare"><input type="checkbox" />Compare</label>--%>

						<%--</li>--%>

						<%--<li>--%>
							<%--<a href="one-products.html" class="single-image picture">--%>
								<%--<img src="images/temp/thumb-5.jpg" alt="" />--%>
							<%--</a>--%>

							<%--<a href="one-products.html" class="list-meta">--%>
								<%--<h6 class="title-list-item">2009 Aston Martin DB9</h6>--%>
							<%--</a>--%>

							<%--<div class="detailed">--%>
								<%--<span class="cost">$8.966</span>--%>
								<%--<span>1.4i TS 5Dr</span> <br />--%>
								<%--<b>23000 Miles</b>--%>
							<%--</div><!--/ .detailed-->--%>

							<%--<a href="one-products.html" class="button orange">Details</a>--%>
							<%--<label class="compare"><input type="checkbox" />Compare</label>--%>

						<%--</li>--%>

						<%--<li>--%>
							<%--<a href="one-products.html" class="single-image picture">--%>
								<%--<img src="images/temp/thumb-5.jpg" alt="" />--%>
							<%--</a>--%>

							<%--<a href="one-products.html" class="list-meta">--%>
								<%--<h6 class="title-list-item">2009 Aston Martin DB9</h6>--%>
							<%--</a>--%>

							<%--<div class="detailed">--%>
								<%--<span class="cost">$8.966</span>--%>
								<%--<span>1.4i TS 5Dr</span> <br />--%>
								<%--<b>23000 Miles</b>--%>
							<%--</div><!--/ .detailed-->--%>

							<%--<a href="one-products.html" class="button orange">Details</a>--%>
							<%--<label class="compare"><input type="checkbox" />Compare</label>--%>

						<%--</li>--%>

						<%--<li>--%>
							<%--<a href="one-products.html" class="single-image picture">--%>
								<%--<img src="images/temp/no-thumb.jpg" alt="" />--%>
							<%--</a>--%>

							<%--<a href="one-products.html" class="list-meta">--%>
								<%--<h6 class="title-list-item">2009 Aston Martin DB9</h6>--%>
							<%--</a>--%>

							<%--<div class="detailed">--%>
								<%--<span class="cost">$8.966</span>--%>
								<%--<span>1.4i TS 5Dr</span> <br />--%>
								<%--<b>23000 Miles</b>--%>
							<%--</div><!--/ .detailed-->--%>

							<%--<a href="one-products.html" class="button orange">Details</a>--%>
							<%--<label class="compare"><input type="checkbox" />Compare</label>--%>

						<%--</li>--%>

						<%--<li>--%>
							<%--<a href="one-products.html" class="single-image picture video">--%>
								<%--<img src="images/temp/thumb-4.jpg" alt="" />--%>
							<%--</a>--%>

							<%--<a href="one-products.html" class="list-meta">--%>
								<%--<h6 class="title-list-item">2009 Aston Martin DB9</h6>--%>
							<%--</a>--%>

							<%--<div class="detailed">--%>
								<%--<span class="cost">$8.966</span>--%>
								<%--<span>1.4i TS 5Dr</span> <br />--%>
								<%--<b>23000 Miles</b>--%>
							<%--</div><!--/ .detailed-->--%>

							<%--<a href="one-products.html" class="button orange">Details</a>--%>
							<%--<label class="compare"><input type="checkbox" />Compare</label>--%>

						<%--</li>--%>

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


                <div class="widget_custom_search">

                    <h3 class="widget-title">快捷搜索</h3>

                    <form action="/quickSearch" id="boxpanel" class="form-panel" />

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
                            <option value="50" />￥500000
                        </select>
                    </fieldset>

                    <fieldset>
                        <label for="maxprice">最高价：</label>
                        <select id="maxprice" name="maxprice">
                            <option value="100" />1000000
                            <option value="500" />5000000
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

    <form class="form-reg" method="post" action="/user/dologin" />

    <a href="#" class="log">登陆</a>

    <p>
        <label>用户名*</label>
        <input class="input-medium" type="text" name="username"/>
    </p>

    <p>
        <label>密码*</label>
        <input class="input-medium" type="password" name="password" />
    </p>

    <p class="forgot-pass">
        <a href="#">忘记密码？</a>
    </p>

    <p>
        <input type="submit" class="button dark enter-btn" value="Login" >
        <a href="/user/register" class="button dark enter-btn">立即创建账户！</a>
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
