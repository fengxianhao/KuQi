<%@page import="org.apache.taglibs.standard.tag.common.core.ForEachSupport"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.Dbmanage"%>
<%@page import="model.Find"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/index.css">


</head>

<style>
* {
	margin: 0;
	padding: 0;
}

.menu {
	width: 100%;
	height: 80px;
	position: absolute;
	top:117px;
	left:149px;
	z-index: 155;
	 
}

.menu .nav {
	width: 960px;
	height: 80px;
	margin: 0 auto;
}

.menu .nav li {
	float: left;
	list-style: none;
}

.menu .nav li a {
	display: block;
	height: 80px; /*border-left:1px solid #000;*/
	padding: 0 10px;
	line-height: 90px;
	color: black;
	text-decoration: none;
	position: relative;
	overflow: hidden;
}

.menu .nav li a:hover,.menu .nav li a.current {
	color:green;
}

.menu .nav li .box {
	width: 100%;
	height: 200px;
	position: absolute;
	top: 75px;
	left: -200px;
	padding-left: 200px;
	background: white;
	display: none;
	border-left: 1px solid black; 
}

.menu .nav li .box a {
	display: block;
	height: 200px;
	float: left;
	color:black;
	border: none;
	background: none;
}

.menu .nav li .box a:hover {
	text-decoration: underline;
	color:green;
}


.phone {
	position:relative;
	top: 80px;
	left: -102px;
}

.price{
	position: relative;
	top:100px;
	left:-165px;
	color: red;
}

.search-box{
	font-size:14px;
	width:95%

}

.menu .nav li .box li {
	margin-left: -50px;
}

</style>


<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script>
$(function () {
	var navLi=$(".menu .nav li");
	navLi.mouseover(function () {
		$(this).find("a").addClass("current");
		$(this).find(".box").stop().slideDown();
	})
	navLi.mouseleave(function(){
		$(this).find("a").removeClass("current");
		$(this).find(".box").stop().slideUp();
	})
})
</script>

<body>
	<div class="mod-header">
		<div class=topbox id=gotop>
			<div class="top-container">
				<ul>
					<li class="topbox-item leftitem" style="margin-left:-10px"><a
						data-monitor=home_top_buy target=_blank
						href="//mall.360.com/help/show?id=helpcontent_14f1b541d8b87874021d0f6185fe7376">大客户采购</a>
					<li class="topbox-item leftitem"><a data-monitor=home_top_help
						target=_blank href="//mall.360.com/help">帮助中心</a>
					<li class="topbox-item leftitem"><a
						data-monitor=home_top_collect class="js-connect"
						href="javascript:;">收藏本站</a>
					<li class="topbox-item leftitem"><a data-monitor=home_top_in
						href="//mall.360.com/help/product" target=_blank>商品入驻</a>
					<li class="topbox-item leftitem"><a data-monitor=home_top_old
						href="//watch.mall.360.com/apply" target=_blank>老人手环申请</a>
					<li class="topbox-item leftitem"><a data-monitor=home_top_app
						target=_blank href="//mall.360.com/xia/zai" class=telshop><i></i>手机酷奇商城</a>
					<li class="topbox-item rightitem" style="margin-right:-10px"><a
						data-monitor=home_top_order href="//mall.360.com/user/myorder"
						target=_blank>我的订单</a>
					<li class="topbox-item rightitem hassx"><a
						href="http://mall.360.com/f" target=_blank
						data-monitor=home_top_fcode>F码购买</a>
					<li class="topbox-item rightitem navloginbox">
						<div class="loginbefore nloginWrap">
						<% 
				if(session.getAttribute("userName")!=null){
					%>
				<a style="color: white">用户：<%=session.getAttribute("userName") %></a>
				<a href="logout.jsp" style="color: white">注销</a>
				<%
				}else{
					%>
				<a href="login.jsp"style="color: white">登录</a> <a href="MyZhuCe.jsp" style="color: white">注册</a>
				<% 
				}
			 %>
							
						</div>
						<div class="loginafter loginWrap" style="display:none">
							<span class="top-uname popUsername">admin</span>
							<div class=popbox>
								<a class="top-uname popUsername" href="http://mall.360.com/user"
									target=_blank data-monitor=home_top_user>admin</a>
								<ul class=topuserbox>
									<li><a href="//mall.360.com/user/myorder" target=_blank
										data-monitor=home_top_myorder>我的订单</a>
									<li><a href="//mall.360.com/user/mycoupon" target=_blank
										data-monitor=home_top_mycoupon>我的优惠券</a>
									<li><a href="//mall.360.com/user/myfavorite" target=_blank
										data-monitor=home_top_myfavorite>我的喜欢</a>
									<li><a href="//mall.360.com/user/book" target=_blank
										data-monitor=home_top_book>我的预约</a>
									<li><a href="//mall.360.com/user/address" target=_blank
										data-monitor=home_top_address>收货地址</a>
									<li><a href="//i.360.cn/" target=_blank
										data-monitor=home_top_set>账号设置</a>
									<li><a class="btn-logout-pop" href="javascript:;"
										data-monitor=home_top_out>退出登录</a>
								</ul>
							</div>
						</div>
				</ul>
			</div>
		</div>
		<div class="top-container">
			<div class="header-logo" style="margin-top:20px;">
				<a class=sellogo href="MyFirstServlet" data-monitor=home_title_logo><img
					src="image1/2000000.png">
				</a>
			</div>
			<div class="header-tools">
				<div class="suggest-box">
					<form id=__mall_search_form__ action="//mall.360.com/search/">
						<input type=text id=__mall_search_kw__ class=suggest name=q><input
							type=submit value="" class="search-btn" id=__mall_search_btn__
							data-monitor=home_search_button>
					</form>
					<p class=searchkey>
						<a href="http://mall.360.com/ac/N4A" target=_blank>酷奇手机N4A</a> <a
							href="http://mall.360.com/ac/badilong" target=_blank>酷奇儿童手表5C</a>
						<a
							href="http://mall.360.com/shop/item?item_id=5799719b4ae38d2fa0ac5ee7"
							target=_blank>酷奇儿童机器人</a> <a
							href="http://jifen.360.cn/double11_2016.html?src=jifen-sc-tg"
							target=_blank>脱单秘籍</a> <a
							href="http://mall.360.com/shop/item?item_id=566a71c15efb11b2388b4567"
							target=_blank>酷奇安全路由5G</a>
					</p>
				</div>
				<div class=topshopcart>
					<a href="Myshop.jsp" target=_blank
						class="header-cart" data-monitor=home_title_shopcart><i
						class=icon></i>我的购物车<span class="cart-size">
						<% ResultSet rst=Dbmanage.runSelectSql("select count(*) from gouwuche");
							rst.next();
							int count=rst.getInt("count(*)");
						%>(<%=count %>)</span>
					</a>
					<div class="header-cart-popup">
						<div class="cart-tips">正在加载购物车...</div>
						<div class="cart-info"></div>
					</div>
				</div>
			</div>
		</div>
		<div class=navbox>
			<div class="top-container" style="opacity:0">
				<div class=sublistbox></div>
				<ul class="navbar column-list clearfix">
					<li class="top-item topfirst"><a
						data-monitor=home_fenlei_allgoods
						href="http://mall.360.com/search/?sort=weight" target=_blank>全部智能酷品</a>
					<li class="top-item" data-type=1><a
						href="http://mall.360.com/ac/360shouji"
						data-monitor=home_title_goods1 target=_blank>手机</a>
					<li class="top-item" data-type=2><a
						href="//che.mall.360.com/index.html"
						data-monitor=home_title_goods2 target=_blank>行车记录仪</a>
					<li class="top-item" data-type=3><a
						href="//kids.360.com/index.html?utm_source=sydbdh_03&utm_medium=inside"
						data-monitor=home_title_goods3 target=_blank>儿童手表 </a>
					<li class="top-item" data-type=4><a
						data-monitor=home_title_goods4
						href="//jia.mall.360.com/?utm_source=sydbdh_04&utm_medium=inside"
						target=_blank>摄像机</a>
					<li class="top-item" data-type=5><a
						data-monitor=home_title_goods5
						href="//luyou.mall.360.com/?utm_source=sydbdh_05&utm_medium=inside"
						target=_blank>路由器</a>
					<li class="top-item" data-type=6><a
						data-monitor=home_title_goods5 href="#" target=_blank>儿童机器人</a>
					<li class="top-item" data-type=7><a
						data-monitor=home_title_goods6 target=_blank href="#">智品牌</a>
					<li class="top-item" data-type=9><a
						data-monitor=home_title_goods8 target=_blank
						href="http://jifen.360.cn/?src=jifen-sc-dh/">积分商城</a>
					<li class="top-item" data-type=10><a
						data-monitor=home_title_goods9 href="//bbs.360.cn">社区</a>
				</ul>
				<div class=navad>
					<a data-monitor=home_menu_resource
						href="http://mall.360.com/ac/n4sxiaolong"></a>
				</div>
			</div>
		</div>
	</div>
	<script type="preload-script"
		src="https://s.ssl.qhmsg.com/static/4033f9ac27d85e53/utils.js"></script>
	<script type="preload-script"
		src="https://s.ssl.qhmsg.com/static/6e8e1d3356f960a2/jq-suggest.js"></script>
	<script type="preload-script"
		src="https://s.ssl.qhmsg.com/static/bc5e4e2e32ee35bb/jq-suggest-client.js"></script>
	<script id=tpl_nav type="text/html"><!--导航下拉 start--> 
    <ul class="sub-nav-list">
    {{each item as secondValue index}} 
        <li>
            <a href="{{secondValue.url}}" target="_blank" data-monitor='home_title_goods{{id}}v{{index+1}}'>
                <img src="{{secondValue.pic.indexOf('qhimg') ? secondValue.pic.replace('com/', 'com/dr/132_132_/') : secondValue.pic.indexOf('qhimg')}}" />
                <span>{{secondValue.name}}</span>
                <i>{{secondValue.price_sale}}元</i>
            </a>
        </li>
    {{/each}}
    </ul></script>
	<div class="product-list">
		<div class="search-box">
			<div class="search-nav">
				<span class=default_path><a href="MyFirstServlet"
					data-monitor=search_crumb_home>首页</a><i>&gt</i><a href="/search"
					data-monitor=search_crumb_all>全部搜索结果</a>
				</span>
				<div class=breadcrumbs_box></div>
				<span class=qwords></span>
			</div>
		</div>
		<div class="filter-box"></div>
		<div class="list-box">
			<div class=listwrap>
				<div class="list-container list-container-no-ret"
					data-monitor=search_goods_click></div>
				<div class="layer flexbox" style="display:none">加载中......</div>
			</div>
			<ul id=kkpager class=pagelist>
			</ul>
		</div>
	</div>
	<div class="list-item clone-item js-clone-item" style="display:none">
	</div>
	
<div id="J_selector" class="selector"  style="position: relative;top:-756px;left:229px; width: 67%;">
<div class="J_selectorLine s-brand">
	<div class="sl-wrap">
		<div class="sl-key"><strong>品牌：</strong></div>
		<div class="sl-value">
			<ul class="sl-b-letter J_brandLetter" onclick="searchlog(1,0,0,48)"><li data-initial="0" class="curr">所有品牌</li><li data-initial="a">A</li><li data-initial="c">C</li><li data-initial="d">D</li><li data-initial="f">F</li><li data-initial="h">H</li><li data-initial="j">J</li><li data-initial="k">K</li><li data-initial="l">L</li><li data-initial="m">M</li><li data-initial="n">N</li><li data-initial="o">O</li><li data-initial="p">P</li><li data-initial="s">S</li><li data-initial="t">T</li><li data-initial="v">V</li><li data-initial="w">W</li><li data-initial="x">X</li><li data-initial="y">Y</li><li data-initial="z">Z</li><li data-initial="other">其它</li></ul>
			<div class="sl-b-search J_brandSearch">
				<i></i><input type="text" class="input-txt placehoder" data-placehoder="可输入拼音、汉字查找品牌">
			</div>
			<div class="clr"></div>
			<div class="sl-v-logos">
				<ul class="J_valueList v-fixed">
					<li id="brand-8557" data-initial="h" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E5%8D%8E%E4%B8%BA%EF%BC%88HUAWEI%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,0,71,'品牌::华为（HUAWEI）')" title="华为（HUAWEI）">
							<i></i><img src="image2/huawei.PNG" width="102px" height="36">华为（HUAWEI）						</a>
					</li>
					<li id="brand-23231" data-initial="a" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_Apple%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,1,71,'品牌::Apple')" title="Apple">
							<i></i><img src="image2/bbbb.png" width="102px"  height="36">魅族（MEIZU）						</a>
					</li>
					<li id="brand-18374" data-initial="x" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E5%B0%8F%E7%B1%B3%EF%BC%88MI%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,2,71,'品牌::小米（MI）')" title="小米（MI）">
							<i></i><img src="image2/cccc.png" width="102px"  height="36">中兴（ZTE）						</a>
					</li>
					<li id="brand-142204" data-initial="s" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E4%B8%89%E6%98%9F%EF%BC%88SAMSUNG%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,3,71,'品牌::三星（SAMSUNG）')" title="三星（SAMSUNG）">
							<i></i><img src="image2/dddd.png" width="102px"  height="36">乐视（Letv）							</a>
					</li>
					<li id="brand-12669" data-initial="m" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E9%AD%85%E6%97%8F%EF%BC%88MEIZU%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,4,71,'品牌::魅族（MEIZU）')" title="魅族（MEIZU）">
							<i></i><img src="image2/eee.png" width="102px"  height="36">21KE						</a>
					</li>
					<li id="brand-21011" data-initial="z" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E4%B8%AD%E5%85%B4%EF%BC%88ZTE%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,5,71,'品牌::中兴（ZTE）')" title="中兴（ZTE）">
							<i></i><img src="image2/ffff.png" width="102px"  height="36">360						</a>
					</li>
					<li id="brand-11188" data-initial="l" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E4%B9%90%E8%A7%86%EF%BC%88Letv%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,6,71,'品牌::乐视（Letv）')" title="乐视（Letv）">
							<i></i><img src="image2/ggg.png" width="102px"  height="36">努比亚（nubia）						</a>
					</li>
					<li id="brand-43644" data-initial="other" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_21KE%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,7,71,'品牌::21KE')" title="21KE">
							<i></i><img src="image2/hhhh.png" width="102px"  height="36">金立（Gionee）					</a>
					</li>
					<li id="brand-27306" data-initial="other" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_360%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,8,71,'品牌::360')" title="360">
							<i></i><img src="image2/jjjjj.png" width="102px"  height="36">OPPO						</a>
					</li>
					<li id="brand-27094" data-initial="n" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E5%8A%AA%E6%AF%94%E4%BA%9A%EF%BC%88nubia%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,9,71,'品牌::努比亚（nubia）')" title="努比亚（nubia）">
							<i></i><img src="image2/kkkk.png" width="102px"  height="36">联想（Lenovo）						</a>
					</li>
					<li id="brand-63032" data-initial="y" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E4%B8%80%E5%8A%A0%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,10,71,'品牌::一加')" title="一加">
							<i></i><img src="image2/LLLL.png" width="102px"  height="36">一加						</a>
					</li>
					<li id="brand-2032" data-initial="o" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_OPPO%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,11,71,'品牌::OPPO')" title="OPPO">
							<i></i><img src="image2/ZZZZ.png" width="102px"  height="36">酷派（Coolpad）						</a>
					</li>
					<li id="brand-151748" data-initial="l" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E8%81%94%E6%83%B3%EF%BC%88Lenovo%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,12,71,'品牌::联想（Lenovo）')" title="联想（Lenovo）">
							<i></i><img src="image2/ZZZZ.png" width="102px"  height="36">酷派（Coolpad）						</a>
					</li>
					<li id="brand-91515" data-initial="c" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E9%94%A4%E5%AD%90%EF%BC%88smartisan%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,13,71,'品牌::锤子（smartisan）')" title="锤子（smartisan）">
							<i></i><img src="image2/VVVV.png" width="102px"  height="36">锤子（smartisan）						</a>
					</li>
					<li id="brand-10640" data-initial="k" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E9%85%B7%E6%B4%BE%EF%BC%88Coolpad%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,14,71,'品牌::酷派（Coolpad）')" title="酷派（Coolpad）">
							<i></i><img src="image2/MMMM.PNG" width="102px"  height="36">OPPO						</a>
					</li>
					<li id="brand-153237" data-initial="s" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_SONY%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,15,71,'品牌::SONY')" title="SONY">
							<i></i><img src="image2/NNNN.png" width="102px"  height="36">美图（Meitu）						</a>
					</li>
					<li id="brand-211779" data-initial="j" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E9%87%91%E7%AB%8B%EF%BC%88Gionee%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,16,71,'品牌::金立（Gionee）')" title="金立（Gionee）">
							<i></i><img src="image2/aaaa.png" width="102px"  height="36">三星（SAMSUNG）					</a>
					</li>
					<li id="brand-38126" data-initial="m" style="display:block;">
						<a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exbrand_%E7%BE%8E%E5%9B%BE%EF%BC%88Meitu%EF%BC%89%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,17,71,'品牌::美图（Meitu）')" title="美图（Meitu）">
							<i></i><img src="image2/IIIII.png" width="102px"  height="36">SONY						</a>
					</li>
					
				</ul>
			</div>
			<div class="sl-b-selected J_brandSelected"><span class="sl-b-key">已选条件：</span><ul class="sl-v-list brand-selected"></ul></div>
			<div class="sl-btns">
				<a class="btn btn-primary J_btnsConfirm disabled" href="javascript:;">确定</a>
				<a class="btn btn-default J_btnsCancel" href="javascript:;">取消</a>
			</div>
		</div>
		<div class="sl-ext">
			<a class="sl-e-more J_extMore" href="javascript:;" data-url="brand.php?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655">更多<i></i></a>
			<a class="sl-e-multiple J_extMultiple" href="javascript:;">多选<i></i></a>
		</div>
	</div>
</div>
<div class="J_selectorLine s-line"><div class="sl-wrap"><div class="sl-key"><span>网络：</span></div><div class="sl-value"><div class="sl-v-list"><ul class="J_valueList"><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2943_11%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,10000,71,'网络::其他')"><i></i>其他</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2943_85077%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,10001,71,'网络::双卡单4G')"><i></i>双卡单4G</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2943_85078%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,10002,71,'网络::双卡双4G')"><i></i>双卡双4G</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2943_71593%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,10003,71,'网络::联通4G')"><i></i>联通4G</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2943_74712%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,10004,71,'网络::电信4G')"><i></i>电信4G</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2943_67233%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,10005,71,'网络::移动4G')"><i></i>移动4G</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2943_77734%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,10006,71,'网络::移动4G\/联通4G\/电信4G')"><i></i>移动4G/联通4G/电信4G</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2943_17812%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,10007,71,'网络::双卡')"><i></i>双卡</a></li></ul></div>
						<div class="sl-btns">
							<a class="btn btn-primary J_btnsConfirm disabled" href="javascript:;">确定</a>
							<a class="btn btn-default J_btnsCancel" href="javascript:;">取消</a>
						</div>
					</div>
						<div class="sl-ext">
							<a class="sl-e-more J_extMore" href="javascript:;">更多<i></i></a>
							<a class="sl-e-multiple J_extMultiple" href="javascript:;">多选<i></i></a>
						</div>
					</div>
				</div><div class="J_selectorLine s-line"><div class="sl-wrap"><div class="sl-key"><span>屏幕尺寸：</span></div><div class="sl-value"><div class="sl-v-list"><ul class="J_valueList"><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=244_30814%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,20000,71,'屏幕尺寸::3.0英寸及以下')"><i></i>3.0英寸及以下</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=244_30815%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,20001,71,'屏幕尺寸::4.5-3.1英寸')"><i></i>4.5-3.1英寸</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=244_30988%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,20002,71,'屏幕尺寸::5.0-4.6英寸')"><i></i>5.0-4.6英寸</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=244_30816%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,20003,71,'屏幕尺寸::5.5-5.1英寸')"><i></i>5.5-5.1英寸</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=244_64693%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,20004,71,'屏幕尺寸::5.6英寸及以上')"><i></i>5.6英寸及以上</a></li></ul></div>
						<div class="sl-btns">
							<a class="btn btn-primary J_btnsConfirm disabled" href="javascript:;">确定</a>
							<a class="btn btn-default J_btnsCancel" href="javascript:;">取消</a>
						</div>
					</div>
						<div class="sl-ext">
							<a class="sl-e-more J_extMore" href="javascript:;">更多<i></i></a>
							<a class="sl-e-multiple J_extMultiple" href="javascript:;">多选<i></i></a>
						</div>
					</div>
				</div><div class="J_selectorLine s-line"><div class="sl-wrap"><div class="sl-key"><span>系统：</span></div><div class="sl-value"><div class="sl-v-list"><ul class="J_valueList"><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2_75970%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,30000,71,'系统::安卓（Android）')"><i></i>安卓（Android）</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2_75972%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,30001,71,'系统::苹果（IOS）')"><i></i>苹果（IOS）</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2_19380%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,30002,71,'系统::微软（WindowsPhone）')"><i></i>微软（WindowsPhone）</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2_9898%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,30003,71,'系统::无')"><i></i>无</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=2_11%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,30004,71,'系统::其他')"><i></i>其他</a></li></ul></div>
						<div class="sl-btns">
							<a class="btn btn-primary J_btnsConfirm disabled" href="javascript:;">确定</a>
							<a class="btn btn-default J_btnsCancel" href="javascript:;">取消</a>
						</div>
					</div>
						<div class="sl-ext">
							<a class="sl-e-more J_extMore" href="javascript:;">更多<i></i></a>
							<a class="sl-e-multiple J_extMultiple" href="javascript:;">多选<i></i></a>
						</div>
					</div>
				</div><div id="J_selectorSenior" class="J_selectorLine s-line s-senior">
	<div class="sl-wrap">
		<div class="sl-key"><span>高级选项：</span></div>
		<div class="sl-value">
			<div class="sl-v-tab">
				<div class="sl-tab-trigger clearfix">
					<a class="trig-item" href="javascript:;"><span class="text">运行内存</span><i class="arrow"></i></a>
					<a class="trig-item" href="javascript:;"><span class="text">价格</span><i class="arrow"></i></a>
					<a class="trig-item" href="javascript:;"><span class="text">机身内存</span><i class="arrow"></i></a>
					<a class="trig-item" href="javascript:;"><span class="text">热点</span><i class="arrow"></i></a>
					<a class="trig-item" href="javascript:;"><span class="text">像素</span><i class="arrow"></i></a>
				</div>
			</div>
		</div>
		<div class="sl-tab-cont">
			<div class="sl-tab-cont-item" style="display: none;">
				<div class="sl-v-list">
					<ul class="J_valueList clearfix">
<li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3753_172%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,40000,71,'运行内存::2GB')"><i></i>2GB</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3753_1097%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,40001,71,'运行内存::3GB')"><i></i>3GB</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3753_173%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,40002,71,'运行内存::4GB')"><i></i>4GB</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3753_2007%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,40003,71,'运行内存::6GB')"><i></i>6GB</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3753_9898%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,40004,71,'运行内存::无')"><i></i>无</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3753_11%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,40005,71,'运行内存::其他')"><i></i>其他</a></li>					</ul>
					<a class="btn-multiple J_tabMultiple" href="javascript:;">多选<i></i></a>
				</div>
				<div class="sl-btns">
					<a class="btn btn-primary J_btnsConfirm disabled" href="javascript:;">确定</a>
					<a class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
				</div>
			</div>
			<div class="sl-tab-cont-item" style="display: none;">
				<div class="sl-v-list">
					<ul class="J_valueList clearfix">
<li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exprice_0-599%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,50000,71,'价格::0-599')"><i></i>0-599</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exprice_600-1099%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,50001,71,'价格::600-1099')"><i></i>600-1099</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exprice_1100-1799%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,50002,71,'价格::1100-1799')"><i></i>1100-1799</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exprice_1800-2899%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,50003,71,'价格::1800-2899')"><i></i>1800-2899</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exprice_2900-4899%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,50004,71,'价格::2900-4899')"><i></i>2900-4899</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exprice_4900-7199%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,50005,71,'价格::4900-7199')"><i></i>4900-7199</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=exprice_7200gt%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,50006,71,'价格::7200以上')"><i></i>7200以上</a></li>					</ul>
				</div>
				<div class="sl-btns">
					<a class="btn btn-primary J_btnsConfirm disabled" href="javascript:;">确定</a>
					<a class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
				</div>
			</div>
			<div class="sl-tab-cont-item" style="display: none;">
				<div class="sl-v-list">
					<ul class="J_valueList clearfix">
<li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3751_85088%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,60000,71,'机身内存::8GB以下')"><i></i>8GB以下</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3751_76033%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,60001,71,'机身内存::8GB')"><i></i>8GB</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3751_76034%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,60002,71,'机身内存::16GB')"><i></i>16GB</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3751_76035%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,60003,71,'机身内存::32GB')"><i></i>32GB</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3751_9898%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,60004,71,'机身内存::无')"><i></i>无</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3751_76036%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,60005,71,'机身内存::64GB')"><i></i>64GB</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3751_73965%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,60006,71,'机身内存::128GB')"><i></i>128GB</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=3751_85089%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,60007,71,'机身内存::支持内存卡')"><i></i>支持内存卡</a></li>					</ul>
					<a class="btn-multiple J_tabMultiple" href="javascript:;">多选<i></i></a>
				</div>
				<div class="sl-btns">
					<a class="btn btn-primary J_btnsConfirm disabled" href="javascript:;">确定</a>
					<a class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
				</div>
			</div>
			<div class="sl-tab-cont-item" style="display: none;">
				<div class="sl-v-list">
					<ul class="J_valueList clearfix">
<li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_78025%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70000,71,'热点::双卡双待')"><i></i>双卡双待</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_6447%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70001,71,'热点::拍照神器')"><i></i>拍照神器</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_30984%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70002,71,'热点::老人手机')"><i></i>老人手机</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_64675%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70003,71,'热点::支持NFC')"><i></i>支持NFC</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_9004%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70004,71,'热点::指纹识别')"><i></i>指纹识别</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_30808%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70005,71,'热点::直板键盘')"><i></i>直板键盘</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_26089%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70006,71,'热点::非智能机')"><i></i>非智能机</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_2083%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70007,71,'热点::翻盖')"><i></i>翻盖</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_77715%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70008,71,'热点::2K屏')"><i></i>2K屏</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_78355%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70009,71,'热点::金属机身')"><i></i>金属机身</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_85259%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70010,71,'热点::骁龙芯片')"><i></i>骁龙芯片</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_83792%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70011,71,'热点::以旧换新')"><i></i>以旧换新</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_26800%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70012,71,'热点::女性手机')"><i></i>女性手机</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_85082%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70013,71,'热点::快速充电')"><i></i>快速充电</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_78045%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70014,71,'热点::儿童手机')"><i></i>儿童手机</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_11668%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70015,71,'热点::合约机')"><i></i>合约机</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_85079%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70016,71,'热点::三防手机')"><i></i>三防手机</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=559_84555%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,70017,71,'热点::VoLTE')"><i></i>VoLTE</a></li>					</ul>
					<a class="btn-multiple J_tabMultiple" href="javascript:;">多选<i></i></a>
				</div>
				<div class="sl-btns">
					<a class="btn btn-primary J_btnsConfirm disabled" href="javascript:;">确定</a>
					<a class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
				</div>
			</div>
			<div class="sl-tab-cont-item" style="display: none;">
				<div class="sl-v-list">
					<ul class="J_valueList clearfix">
<li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=399_85092%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,80000,71,'像素::500万以下')"><i></i>500万以下</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=399_85091%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,80001,71,'像素::500-1000万')"><i></i>500-1000万</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=399_85090%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,80002,71,'像素::1000-1600万')"><i></i>1000-1600万</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=399_9048%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,80003,71,'像素::1600万以上')"><i></i>1600万以上</a></li><li><a href="search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&offset=2&wq=%E6%89%8B%E6%9C%BA&cid2=653&cid3=655&ev=399_9898%40&uc=0#J_crumbsBar" rel="nofollow" onclick="searchlog(1,0,80004,71,'像素::无')"><i></i>无</a></li>					</ul>
					<a class="btn-multiple J_tabMultiple" href="javascript:;">多选<i></i></a>
				</div>
				<div class="sl-btns">
					<a class="btn btn-primary J_btnsConfirm disabled" href="javascript:;">确定</a>
					<a class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
            <%
			List<Find> list =(List<Find>)request.getAttribute("list");
			
		
		%>
		<div style="position: relative;top:-1200px;left:268px;width:1000px;">
		<form action="Myservlet" method="post">
		<ul style="position: relative;top:500px;left:-50px">
		
			<%
			for(Find find:list){
			 %>
				<li style="float:left;padding-left: 55px;padding-top: 40px;">
					<div style="height: 192px; width: 192px;">
						<a href="ShopingServlet?id=<%=find.getId() %>&method=addGood">
						<img src="image2/<%=find.getImgAddress()%>" style="border: 1px solid gray;">
						</a>
						<div style="position: relative;left:-3px;top:20px">
							<a href="ShopingServlet?id=<%=find.getId() %>&method=addGood">
							<label>品牌:</label><%=find.getName() %>
							<label>价格:</label><span style="color: red"><%=find.getPrice() %>元</span>
							</a>
						</div>
					</div>
				</li>
			<%
			
				}
			 %>
    
    	</ul>
    	</form>
    	</div>
            
            
	<div class="mod-footer">
		<div class="foot-bannerw">
			<div class="foot-banner clearfix" style="margin-top:-600px;margin-right:400px;">
				<div class="banner-item">
					<a
						href="http://mall.360.com/help/show?id=helpcontent_52efb0302e80307378d75a52ad77dcfe"
						target=_blank data-monitor=home_foot_days7><i class=icon1>7</i>7天无理由退货</a>
				</div>
				<div class="banner-item">
					<a
						href="http://mall.360.com/help/show?id=helpcontent_39b7f4bf73e2cda4f61f7b446e9a4307"
						target=_blank data-monitor=home_foot_days15><i class=icon2>15</i>15天免费换货</a>
				</div>
				<div class="banner-item">
					<i class=icon3>包</i>满99元包邮
				</div>
				<div class="banner-item">
					<a href="http://www.360shouji.com/service" target=_blank
						data-monitor=home_foot_moblie><i class=icon4>服</i>手机特色服务</a>
				</div>
			</div>
		</div>
		<div class="foot-containerw" style="margin-top:-550px;">
			<div class="foot-container clearfix">
				<dl class="foot-con">
					<dt data-monitor=home_foot_freshman>帮助中心
					<dd data-monitor=home_help_freshman>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_32c2c1641fce863c6644f3b0586b98ab"
							rel=nofollow>用户注册</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_76072e16da4630f693343cafeecb5ba7"
							rel=nofollow>用户登录与密码找回</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_5e06b37bfc5656aed67b5752f2d7277e"
							rel=nofollow>购买指南</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_5cee349b1e43e02edaf7000e7c48133c"
							rel=nofollow>支付方式</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_b9b28247bc968beae4fbfedea0a2351d"
							rel=nofollow>配送与说明</a>
				</dl>
				<dl class="foot-con">
					<dt data-monitor=home_foot_help>售后服务
					<dd data-monitor=home_help_help>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_52efb0302e80307378d75a52ad77dcfe"
							rel=nofollow>7 日无理由退货</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_39b7f4bf73e2cda4f61f7b446e9a4307"
							rel=nofollow>质量问题 15 日内换货</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_23c08f5b301ff1a516b9e3efab21b4c1"
							rel=nofollow>保修条款</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_cb7bcabc741d372350d7fcceefbba3bf"
							rel=nofollow>服务流程</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_cd2440c9bbb1d5ff8b5d7aefbeda45e0"
							rel=nofollow>安迷之家</a>
				</dl>
				<dl class="foot-con">
					<dt data-monitor=home_foot_guide>特色服务
					<dd data-monitor=home_help_guide>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_c8f1421544bce489096c17a24923e27c"
							rel=nofollow>F码通道</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_3376b002ed5680d84f8147660ed3638f"
							rel=nofollow>免费试用</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_073f7b9ffce194e182bd931873f787fe"
							rel=nofollow>360 生态</a>
				</dl>
				<dl class="foot-con">
					<dt data-monitor=home_foot_tuiguang>推广合作
					<dd data-monitor=home_help_try>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_ff0d456a829c36f2f0580431b69fe913"
							rel=nofollow>商品入驻</a>
					<dd>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_14f1b541d8b87874021d0f6185fe7376"
							rel=nofollow>大客户采购</a>
				</dl>
				<dl class="foot-con">
					<dt data-monitor=home_foot_try>关注酷奇商城
					<dd data-monitor=home_help_try>
						<a target=_blank
							href="http://mall.360.com/help/show?id=helpcontent_18959af0598dbe134c057f211ba0c583"
							rel=nofollow>酷奇商城大事记</a>
				</dl>
				<dl class="foot-con contactus">
					<dt>联系我们
					<dd class=servicebox>
						<a href="javascript:;"
							onclick="showServiceSelector(); return false" class="inline-kefu"><img
							src="image2/t019c3c42d7b0ea4f41.png">
						</a> <a href="javascript:;" target=_blank class=weixin><img
							src="image2/t0113493aa732f72837.png"> <span class=wxtips>
								<img src="image1/t01d06b994b8798623c.jpg"> </span>
						</a> <a class=weibo data-monitor=home_foot_weibo
							href="http://weibo.com/qikoo360" target=_blank><img
							src="image2/t0128093bd494ffc7e9.png"> <span class=wxtips>
								<img src="image1/t013f6db48422a373d6.jpg">
						</span>
						</a>
				</dl>
			</div>
		</div>
		<div class="footer-copyright" >酷奇商城©2013-2016 酷奇公司版权所有
			京ICP备08010314号-43 京公网安备11000002000006号</div>
	</div>
	<div class=slidebar id=slidebar>
		<ul>
			<li class=rfeedback><a target=_blank
				href="http://mall.360.com/feedback" data-monitor=right_fankui_click>用户体验</a>
			<li class="rtips rWeChat"><a href="javascript:;">微信关注</a>
				<div class="rtipscont rWeChattips">
					<span class="arrowr-bg"></span> <span class=arrowr></span> <img
						src="image1/t01d06b994b8798623c.jpg">
					<p class=tiptext>
						扫码关注官方微信<br>先人一步知晓促销活动
					</p>
				</div>
			<li class="rtips rstore"><a href="javascript:;">手机商城</a>
				<div class="rtipscont rstoretips">
					<span class="arrowr-bg"></span> <span class=arrowr></span> <img
						src="image1/t013df41dbfac4d5924.jpg">
					<p class=tiptext>
						客户端首次登录<span>送188元现金券礼包</span>
					</p>
				</div>
			<li class=topback><a data-monitor=right_top_click
				href="javascript:;" class=gotop>返回顶部</a>
		</ul>
	</div>
	<div id=serviceSelectorMask></div>
	<div class="fixed dialog" id=serviceSelector>
		<span class="icon close" onclick="hideServiceSelector()"></span>
		<p class=title>产品咨询</p>
		<p class=description>
			咨询时间 <em>8:00-22:00</em>
		</p>
		<ul class=flex>
			<li class=phone onclick="openNtalker(true)">360手机&amp;配件
			<li class=watch onclick="openNtalker()">360儿童手表
			<li class=recorder onclick="openNtalker()">360行车记录仪
			<li class=camera onclick="openNtalker()">360智能摄像头
			<li class=more onclick="openNtalker()">其他产品
		</ul>
		<div class="bg-shadow"></div>
	</div>
	
	
	<div class="menu">
		<ul class="nav">
			<li>
				<a href="#">手机</a>
				<div class="box">
					<ul>
						<li>
							<a href="#"><img src="image2/t0113645192065f59a4.jpg"><span class="phone">360手机N4S</span><span class="price">1299元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/8888.jpg"><span class="phone">360全网通N4</span><span class="price">1299元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/999.jpg"><span class="phone">小米手机N4S</span><span class="price">1299元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/101.jpg"><span class="phone">华为NAS4aS</span><span class="price">1299元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/8888.jpg"><span class="phone">三星SAJ52h</span><span class="price">1299元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/t0113645192065f59a4.jpg"><span class="phone">360手机N4S</span><span class="price">1299元</span></a>
						</li>
						
					</ul>
					
				</div>
			</li>
			<li><a href="#">行车记录仪</a></li>
			<li>
				<a href="#">儿童手表</a>
				<div class="box">
					<ul style="margin-left:-30px;">
						<li>
							<a href="#"><img src="image2/102.jpg"><span class="phone">巴迪龙儿童手表N4S</span><span class="price">899元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/103.jpg"><span class="phone">巴迪龙儿童手表N4S尊享版</span><span class="price">499元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/104.jpg"><span class="phone">巴迪龙儿童手表5</span><span class="price">699元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/105.jpg"><span class="phone">巴迪龙儿童手表5c</span><span class="price">199元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/106.jpg"><span class="phone">巴迪龙儿童手表N4S</span><span class="price">599元</span></a>
						</li>
						
					</ul>
				</div>
			</li>
			<li>
				<a href="#">摄像机</a>
				<div class="box">
					<ul>
						<li>
							<a href="#"><img src="image2/205.jpg"><span class="phone">摄像机安全套装</span><span class="price">1299元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/206.jpg"><span class="phone">摄像机安全套装1080p</span><span class="price">1299元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/207.jpg"><span class="phone">摄像机高清摄像机</span><span class="price">1299元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/208.jpg"><span class="phone">摄像机安全套装1080p</span><span class="price">1299元</span></a>
						</li>
						<li>
							<a href="#"><img src="image2/209.jpg"><span class="phone">摄像机安全套装</span><span class="price">1299元</span></a>
						</li>
						
					</ul>
				</div>
			</li>
			<li><a href="#">路由器</a></li>
			<li><a href="#">儿童机器人</a></li>
			<li><a href="#">智品牌</a></li>
			<li><a href="#">积分商城</a></li>
			<li><a href="#">社区</a></li>
		</ul>
	</div>
	
		
	
	<script>var qhPassIntv = setInterval(function () {
    if (window.QHPass == undefined) return;
    clearInterval(qhPassIntv);

    // 小能默认参数
    window.NTKF_PARAM = {
      siteid: 'kf_9758',
      settingid: 'kf_9758_1431680295244',
      uid: null,
      uname: null,
      itemid: '', // 商品ID，商品详情页用
      orderid: '', // 订单ID，支付页用
      orderprice: '', // 订单总价，支付页用
      isvip: '0',
      userlevel: ''
    };
    QHPass.getUserInfo(function (data) {
      NTKF_PARAM.uid = data.qid;
      NTKF_PARAM.uname = data.username;
      $.getScript('//dl.ntalker.com/js/xn6/ntkfstat.js?siteid=kf_9758');
    }, function (err) {
      $.getScript('//dl.ntalker.com/js/xn6/ntkfstat.js?siteid=kf_9758');
    });
  }, 50);
    function showServiceSelector() {
        $('#serviceSelectorMask').show();
        $('#serviceSelector').show();
    }
    function hideServiceSelector() {
        $('#serviceSelector').hide();
        $('#serviceSelectorMask').hide();
    }
    function openNtalker(isPhoneBusiness) {
        NTKF.im_openInPageChat(isPhoneBusiness ? 'kf_9758_1459242784970' : 'kf_9758_1431680295244');
        hideServiceSelector();
    }</script>
    
    
    	
</body>
</html>
