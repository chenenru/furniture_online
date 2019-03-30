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
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Luxury Furnish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value='/js'/>/simpleCart.min.js"></script>
    <script src="<c:url value='/js'/>/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="<c:url value='/css'/>/style.css" rel='stylesheet' type='text/css' media="all"/>
    <!-- Custom Theme files -->
    <!--webfont-->
    <%--<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet'
          type='text/css'>--%>
    <!--//webfont-->
    <script src="<c:url value='/js'/>/jquery.easydropdown.js"></script>
    <!-- Add fancyBox main JS and CSS files -->
    <script src="<c:url value='/js'/>/jquery.magnific-popup.js" type="text/javascript"></script>
    <link href="<c:url value='/css'/>/magnific-popup.css" rel="stylesheet" type="text/css" media="all">
    <script>
        $(document).ready(function () {
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
</head>
<body>
<div class="header">
    <div class="container">
        <div class="header-top">
            <div class="logo">
                <a href="index">
                    <h6>Online Furnish</h6>
                    <h2>Luxury</h2></a>
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
                        <option value="2">中文</option>
                        <option value="3">German</option>
                    </select>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="banner_wrap">
            <div class="bannertop_box">
                <ul class="login">
                    <li class="login_text"><a href="login">登录</a></li>
                    <li class="wish"><a href="checkout">心愿单</a></li>
                    <div class='clearfix'></div>
                </ul>
                <div class="cart_bg">
                    <ul class="cart">
                        <a href="checkout">
                            <h4><i class="cart_icon"> </i>
                                <p>Cart: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity"
                                                                                       class="simpleCart_quantity"></span>
                                    items)</p>
                                <div class="clearfix"></div>
                            </h4>
                        </a>
                        <h5 class="empty"><a href="javascript:;" class="simpleCart_empty">清空购物车</a></h5>
                        <div class="clearfix"></div>
                    </ul>
                </div>
                <ul class="quick_access">
                    <li class="view_cart"><a href="checkout">查看购物车</a></li>
                    <li class="check"><a href="checkout">结账</a></li>
                    <div class='clearfix'></div>
                </ul>
                <div class="search">
                    <input type="text" value="Search" onFocus="this.value = '';"
                           onBlur="if (this.value == '') {this.value = 'Search';}">
                    <input type="submit" value="">
                </div>
                <div class="welcome_box">
                    <h3>欢迎来到Luxury</h3>
                    <p>您的需求就是我们的追求</p>
                </div>
            </div>
            <div class="banner_right">
                <h1>furniture online <br>网上家具商城</h1>
                <p>Luxury是家具风尚标。Luxury一直是业界的引导者。</p>
                <a href="#" class="banner_btn">立即下单</a>
            </div>
            <div class='clearfix'></div>
        </div>
    </div>
</div>
<div class="main">
    <div class="content_box">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="menu_box">
                        <h3 class="menu_head">菜单</h3>
                        <ul class="nav">
                            <li><a href="about">关于</a></li>
                            <li><a href="about">卧室</a></li>
                            <li><a href="about">办公套装</a></li>
                            <li><a href="about">沙包</a></li>
                            <li><a href="about">桌子</a></li>
                            <li><a href="about">沙发</a></li>
                            <li><a href="about">衣柜</a></li>
                            <li><a href="about">床</a></li>
                            <li><a href="typo">写字台</a></li>
                            <li><a href="about">椅子</a></li>
                            <li><a href="about">孩童暖床</a></li>
                        </ul>
                    </div>
                    <div class="side_banner">
                        <div class="banner_img"><img src="<c:url value='/images'/>/pic9.jpg" class="img-responsive" alt=""/></div>
                        <div class="banner_holder">
                            <h3>立即 <br> 开启 <br> 旅程!</h3>
                        </div>
                    </div>
                    <div class="tags">
                        <h4 class="tag_head">标签宽度</h4>
                        <ul class="tags_links">
                            <li><a href="#">办公</a></li>
                            <li><a href="#">椅子/餐椅</a></li>
                            <li><a href="#">木质</a></li>
                            <li><a href="#">金属感</a></li>
                            <li><a href="#">大小</a></li>
                            <li><a href="#">女性</a></li>
                            <li><a href="#">衣柜</a></li>
                            <li><a href="#">最新款</a></li>
                            <li><a href="#">厨具</a></li>
                            <li><a href="#">桌子</a></li>
                            <li><a href="#">现代感</a></li>
                            <li><a href="#">色彩</a></li>
                            <li><a href="#">柜子</a></li>
                            <li><a href="#">凳子</a></li>
                            <li><a href="#">大坐垫/软躺椅</a></li>
                            <li><a href="#">女人</a></li>
                            <li><a href="#">卧室</a></li>
                        </ul>
                        <a href="#" class="link1">查看所有标签</a>
                    </div>
                    <div class="tags">
                        <h4 class="tag_head">奢饰品 专家</h4>
                        <ul class="article_links">
                            <li><a href="#">Eleifend option congue nihil</a></li>
                            <li><a href="#">Investigationes demonst</a></li>
                            <li><a href="#">Qui sequitur mutationem</a></li>
                            <li><a href="#">videntur parum clar sollemnes</a></li>
                            <li><a href="#">ullamcorper suscipit lobortis</a></li>
                            <li><a href="#">commodo consequat. Duis autem</a></li>
                            <li><a href="#">Investigationes demonst</a></li>
                            <li><a href="#">ullamcorper suscipit lobortis</a></li>
                            <li><a href="#">Qui sequitur mutationem</a></li>
                            <li><a href="#">videntur parum clar sollemnes</a></li>
                            <li><a href="#">ullamcorper suscipit lobortis</a></li>
                        </ul>
                        <a href="#" class="link1">查看所有</a>
                    </div>
                </div>
                <div class="col-md-9">
                    <h3 class="m_1">新尚品</h3>
                    <div class="content_grid">
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic1.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$2300.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic2.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$1500.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem last_1">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic3.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$2000.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="content_grid">
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic4.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$1700.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic5.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$800.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem last_1">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic6.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$199.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <h3 class="m_2">热销商品</h3>
                    <div class="content_grid">
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic7.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$4500.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic8.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$1050.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem last_1">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic13.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$2000.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <h3 class="m_2">爱尚品</h3>
                    <div class="content_grid">
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic10.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$99.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic11.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$60.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem last_1">
                            <a href="single">
                                <div class="inner_content clearfix">
                                    <div class="product_image">
                                        <img src="<c:url value='/images'/>/pic12.jpg" class="img-responsive" alt=""/>
                                        <a href="" class="button item_add item_1"> </a>
                                        <div class="product_container">
                                            <div class="cart-left">
                                                <p class="title">Lorem Ipsum 2019</p>
                                            </div>
                                            <span class="amount item_price">$900.00</span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="brands">
            <%--<ul class="brand_icons">
                <li><img src='<c:url value='/images'/>/icon1.png' class="img-responsive" alt=""/></li>
                <li><img src='<c:url value='/images'/>/icon2.png' class="img-responsive" alt=""/></li>
                <li><img src='<c:url value='/images'/>/icon3.png' class="img-responsive" alt=""/></li>
                <li><img src='<c:url value='/images'/>/icon4.png' class="img-responsive" alt=""/></li>
                <li class="last"><img src='<c:url value='/images'/>/icon5.png' class="img-responsive" alt=""/></li>
            </ul>--%>
        </div>
    </div>
    <div class="container">
        <div class="instagram_top">
            <div class="instagram text-center">
                <h3>顶级商品</h3>
            </div>
            <ul class="instagram_grid">
                <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<c:url value='/images'/>/i1.jpg"
                                                                               class="img-responsive" alt=""/></a></li>
                <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<c:url value='/images'/>/i2.jpg"
                                                                               class="img-responsive" alt=""/></a></li>
                <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<c:url value='/images'/>/i3.jpg"
                                                                               class="img-responsive" alt=""/></a></li>
                <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<c:url value='/images'/>/i4.jpg"
                                                                               class="img-responsive" alt=""/></a></li>
                <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<c:url value='/images'/>/i5.jpg"
                                                                               class="img-responsive" alt=""/></a></li>
                <li class="last_instagram"><a class="popup-with-zoom-anim" href="#small-dialog1"><img
                        src="<c:url value='/images'/>/i6.jpg" class="img-responsive" alt=""/></a></li>
                <div class="clearfix"></div>
                <div id="small-dialog1" class="mfp-hide">
                    <div class="pop_up">
                        <h4>示例照片流</h4>
                        <img src="<c:url value='/images'/>/i_zoom.JPG" class="img-responsive" alt=""/>
                    </div>
                </div>
            </ul>
        </div>
        <%--<ul class="footer_social">
            <li><a href="#"><i class="tw"> </i> </a></li>
            <li><a href="#"> <i class="fb"> </i> </a></li>
            <li><a href="#"><i class="pin"> </i> </a></li>
            <div class="clearfix"></div>
        </ul>--%>
    </div>
</div>
<div class="footer">
    <div class="container">
        <div class="footer-grid">
            <h3>种类</h3>
            <ul class="list1">
                <li><a href="index">首页</a></li>
                <li><a href="about">关于我们</a></li>
                <li><a href="about">逛一逛</a></li>
                <li><a href="about">特色</a></li>
                <li><a href="about">我们收藏品</a></li>
                <li><a href="typo">示例</a></li>
                <li><a href="contact">联系我们</a></li>
            </ul>
        </div>
        <div class="footer-grid">
            <h3>我们的账号</h3>
            <ul class="list1">
                <li><a href="login">您的账号</a></li>
                <li><a href="contact">个人信息</a></li>
                <li><a href="contact">地址</a></li>
                <li><a href="#">折扣</a></li>
                <li><a href="checkout">历史订单</a></li>
                <li><a href="about">检索项目</a></li>
            </ul>
        </div>
        <div class="footer-grid">
            <h3>我们的支持</h3>
            <ul class="list1">
                <li><a href="contact">网站地图</a></li>
                <li><a href="about">检索 项目</a></li>
                <li><a href="about">高级搜索</a></li>
                <li><a href="about">移动版</a></li>
                <li><a href="contact">联系我们</a></li>
                <li><a href="contact">手机</a></li>
                <li><a href="contact">地址</a></li>
            </ul>
        </div>
        <div class="footer-grid">
            <h3>实时通讯</h3>
            <p class="footer_desc">Nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
                consequat</p>
            <div class="search_footer">
                <input type="text" class="text" value="Your Email" onFocus="this.value = '';"
                       onBlur="if (this.value == '') {this.value = 'Your Email';}">
                <input type="submit" value="Subscribe">
            </div>
            <img src="<c:url value='/images'/>/payment.png" class="img-responsive" alt=""/>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="footer_bottom">
    <div class="container">
        <div class="copy">
            <p>Copyright &copy; 2019.Company name All rights reserved.More Templates <a href="index"
                                                                                        target="_blank" title="第六小组">第六小组</a>
                - Collect from <a href="index" title="陈婉琳 赖周浩 莫宽元 陈恩如" target="_blank">陈婉琳 赖周浩 莫宽元 陈恩如</a></p>
        </div>
    </div>
</div>
</body>
</html>		