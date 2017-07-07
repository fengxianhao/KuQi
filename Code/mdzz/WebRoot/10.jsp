<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.Dbmanage"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>



<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="edge">
		<link rel="dns-prefetch" href="http://s0.qhmsg.com/">
		<link rel="dns-prefetch" href="http://s6.qhimg.com/">
		<link rel="dns-prefetch" href="http://s7.qhimg.com/">
		<link rel="dns-prefetch" href="http://s8.qhimg.com/">
		<link rel="dns-prefetch" href="http://s10.qhimg.com/">
		<link rel="dns-prefetch" href="http://s11.qhimg.com/">
		<link rel="dns-prefetch" href="http://s12.qhimg.com/">
		<link rel="search" type="application/opensearchdescription+xml"
			href="http://mall.360.com/resource/other/opensearch.xml"
			title="酷奇商城">
		<meta name="Keywords" content="酷奇商城，智能硬件，免费试用，智能家居，智能手表，智能家电">
		<meta name="Description"
			content="360商城是一家智能硬件体验平台。这里能免费试用智能硬件，查看全方位试用报告，还可以预约、抢购并体验新上市的智能产品。">
		<meta property="wb:webmaster" content="82757f177989599b">
		<meta name="renderer" content="webkit">
		<title>GeckoEye摄像头_ 酷奇商城</title>
		<link rel="shortcut icon"
			href="./GeckoEye摄像头_ 酷奇商城_files/favicon.ico">
		<script type="text/javascript" async=""
			src="js/mba_ka.js"></script>
		<script src="js/1102.js"></script>
		<script src="js/5.0.3.js"></script>
		<link type="text/css" rel="stylesheet"
			href="css/b6663fe1ab955e43.css">
		<script charset="utf-8"
			src="js/47df8040b0059b65.js"></script>
		<script>
	var mall_page = {
		qtoken : '',
		real_qtoken : '',
		qtoken_timestamp : '',
		sb_param : 'd5fe7b3bb151dc2af487d5429d09101c'
	};
	String.prototype.protocol = function() {

		var str = this;

		str = window.isSupportWebp ? (str.replace(/(\.jpg|\.png)/g, ".webp"))
				: str;

		return str.replace(/http:\/\/p\d\.qh[imgs]{3}/, "https://p.ssl.qhmsg");
	};
	window.isSupportWebp = false;
	void function() {

		var webpTestsUri = 'data:image1/webp;base64,UklGRiQAAABXRUJQVlA4IBgAAAAwAQCdASoBAAEAAwA0JaQAA3AA/vuUAAA=';

		var image1 = new image1();

		function addResult(event) {
			// if the event is from 'onload', check the see if the image1's width is
			// 1 pixel (which indiciates support). otherwise, it fails

			window.isSupportWebp = event && event.type === 'load' ? image1.width == 1
					: false;
		}

		image1.onerror = addResult;
		image1.onload = addResult;

		image1.src = webpTestsUri;
	}();
</script>
		<link rel="stylesheet" href="css/qikoo-v.css">
		<link rel="stylesheet"
			href="css/index_item.css">
		<script type="text/javascript" async="async" charset="utf-8"
			src="http://dl.ntalker.com/js/xn6/zh_cn.js?siteid=kf_9758&v=nt6.8.5.2&t=2016.11.05_013222"
			data-requiremodule="lang"></script>
		<script type="text/javascript" async="async" charset="utf-8"
			src="http://dl.ntalker.com/js/xn6/chat.in.js?siteid=kf_9758&v=nt6.8.5.2&t=2016.11.05_013222"
			data-requiremodule="chatManage"></script>
		<script type="text/javascript" async="async" charset="utf-8"
			src="http://dl.ntalker.com/js/xn6/mqtt31.js?siteid=kf_9758&v=nt6.8.5.2&t=2016.11.05_013222"
			data-requiremodule="MQTT"></script>
		<script type="text/javascript" async="async" charset="utf-8"
			src="http://dl.ntalker.com/js/xn6/mqtt.chat.js?siteid=kf_9758&v=nt6.8.5.2&t=2016.11.05_013222"
			data-requiremodule="Connection"></script>
		<script type="text/javascript" async="async" charset="utf-8"
			src="http://dl.ntalker.com/js/xn6/robot.js?siteid=kf_9758&v=nt6.8.5.2&t=2016.11.05_013222"
			data-requiremodule="Robot"></script>
	</head>
	<body id="body" style="">
		<div id="nt-flash-div"
			style="position: absolute; z-index: 9996; top: -200px;">
			<embed id="ntkf_flash_ntid" name="ntkf_flash_ntid"
				src="http://dl.ntalker.com/js/xn6/siteid/respack_nt6.8.5.2/fs/NTID.swf?2016.09.06"
				width="1" height="1" style=""
				flashvars="siteid=kf_9758&amp;loadnid=1" wmode="opaque"
				allowscriptaccess="always"
				pluginspage="https://www.macromedia.com/go/getflashplayer"
				type="application/x-shockwave-flash">
		</div>
		<script>
	var _isindex = 0;
</script>
		<div class="mod-header">
			<div class="topbox" id="gotop">
				<div class="top-container">
					<ul>
						<li class="topbox-item leftitem" style="margin-left: -10px">
							<a data-monitor="home_top_buy" target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_14f1b541d8b87874021d0f6185fe7376">大客户采购</a>
						</li>
						<li class="topbox-item leftitem">
							<a data-monitor="home_top_help" target="_blank"
								href="http://mall.360.com/help">帮助中心</a>
						</li>
						<li class="topbox-item leftitem">
							<a data-monitor="home_top_collect" class="js-connect"
								href="javascript:;">收藏本站</a>
						</li>
						<li class="topbox-item leftitem">
							<a data-monitor="home_top_in"
								href="http://mall.360.com/help/product" target="_blank">商品入驻</a>
						</li>
						<li class="topbox-item leftitem">
							<a data-monitor="home_top_old"
								href="http://watch.mall.360.com/apply" target="_blank">老人手环申请</a>
						</li>
						<li class="topbox-item leftitem">
							<a data-monitor="home_top_app" target="_blank" href="http://mall.360.com/xia/zai" class="telshop">酷奇商城</a>
						</li>
						<li class="topbox-item rightitem" style="margin-right: -10px">
							<a data-monitor="home_top_order"
								href="http://mall.360.com/user/myorder" target="_blank">我的订单</a>
						</li>
						<li class="topbox-item rightitem hassx">
							<a href="http://mall.360.com/f" target="_blank"
								data-monitor="home_top_fcode">F码购买</a>
						</li>
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
							<div class="loginafter loginWrap" style="display: none">
								<span class="top-uname popUsername">admin</span>
								<div class="popbox">
									<a class="top-uname popUsername"
										href="http://mall.360.com/user" target="_blank"
										data-monitor="home_top_user">admin</a>
									<ul class="topuserbox">
										<li>
											<a href="http://mall.360.com/user/myorder" target="_blank"
												data-monitor="home_top_myorder">我的订单</a>
										</li>
										<li>
											<a href="http://mall.360.com/user/mycoupon" target="_blank"
												data-monitor="home_top_mycoupon">我的优惠券</a>
										</li>
										<li>
											<a href="http://mall.360.com/user/myfavorite" target="_blank"
												data-monitor="home_top_myfavorite">我的喜欢</a>
										</li>
										<li>
											<a href="http://mall.360.com/user/book" target="_blank"
												data-monitor="home_top_book">我的预约</a>
										</li>
										<li>
											<a href="http://mall.360.com/user/address" target="_blank"
												data-monitor="home_top_address">收货地址</a>
										</li>
										<li>
											<a href="http://i.360.cn/" target="_blank"
												data-monitor="home_top_set">账号设置</a>
										</li>
										<li>
											<a class="btn-logout-pop" href="javascript:;"
												data-monitor="home_top_out">退出登录</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<a data-monitor="huodong_top_top" class="mod-topbar"
				href="http://mall.360.com/ac/1111khj" target="_blank"
				data-src="https://image1/t0138be8bfe6e524f6c.jpg"
				style="background-image1: url(https://image1/t0138be8bfe6e524f6c.jpg);"><img
					src="image1/t0138be8bfe6e524f6c.jpg">
			</a>
			<div class="top-container">
				<div class="header-logo">
					<a class="sellogo" href="MyFirstServlet"
						data-monitor="home_title_logo"><img src="image1/2000000.png">
					</a>
				</div>
				<div class="header-tools">
					<div class="suggest-box">
						<form id="__mall_search_form__"
							action="http://mall.360.com/search/">
							<input type="text" id="__mall_search_kw__" class="suggest"
								name="q" autocomplete="off" placeholder="请输入关键字">
							<input type="submit" value="" class="search-btn"
								id="__mall_search_btn__" data-monitor="home_search_button">
						</form>
						<p class="searchkey">
							<a href="http://mall.360.com/ac/N4A" target="_blank">酷奇手机N4A</a>
							<a href="http://mall.360.com/ac/badilong" target="_blank">酷奇儿童手表5C</a>
							<a
								href="http://mall.360.com/shop/item?item_id=5799719b4ae38d2fa0ac5ee7"
								target="_blank">酷奇儿童机器人</a>
							<a href="http://jifen.360.cn/double11_2016.html?src=jifen-sc-tg"
								target="_blank">脱单神器</a>
							<a
								href="http://mall.360.com/shop/item?item_id=566a71c15efb11b2388b4567"
								target="_blank">酷奇安全路由5G</a>
						</p>
					</div>
					<div class="topshopcart">
						<a href="Myshop.jsp" target=_blank
						class="header-cart" data-monitor=home_title_shopcart><i
						class=icon></i>我的购物车<span class="cart-size">
						<% ResultSet rst=Dbmanage.runSelectSql("select count(*) from gouwuche");
							rst.next();
							int count=rst.getInt("count(*)");
						%>(<%=count %>)</span>
					</a>
						<div class="header-cart-popup">
							<div class="cart-tips">
								正在加载购物车...
							</div>
							<div class="cart-info">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="navbox">
				<div class="top-container">
					<div class="sublistbox"
						style="opacity: 0; height: 0px; display: none;"></div>
					<ul class="navbar column-list clearfix">
						<li class="top-item topfirst">
							<a data-monitor="home_fenlei_allgoods"
								href="http://mall.360.com/search/?sort=weight" target="_blank">全部智能酷品</a>
						</li>
						<li class="top-item" data-type="1">
							<a href="http://mall.360.com/shouji/"
								data-monitor="home_title_goods1" target="_blank">手机</a>
						</li>
						<li class="top-item" data-type="2">
							<a href="http://che.mall.360.com/"
								data-monitor="home_title_goods2" target="_blank">行车记录仪</a>
						</li>
						<li class="top-item" data-type="3">
							<a
								href="http://kids.360.com/index.html?utm_source=sydbdh_03&utm_medium=inside"
								data-monitor="home_title_goods3" target="_blank">儿童手表</a>
						</li>
						<li class="top-item" data-type="4">
							<a data-monitor="home_title_goods4"
								href="http://jia.mall.360.com/?utm_source=sydbdh_04&utm_medium=inside"
								target="_blank">摄像机</a>
						</li>
						<li class="top-item" data-type="5">
							<a data-monitor="home_title_goods5"
								href="http://luyou.mall.360.com/?utm_source=sydbdh_05&utm_medium=inside"
								target="_blank">路由器</a>
						</li>
						<li class="top-item topnew" data-type="6">
							<a data-monitor="home_title_goods5"
								href="http://mall.360.com/rush/item?item_id=5799719b4ae38d2fa0ac5ee7"
								target="_blank">儿童机器人</a>
						</li>
						<li class="top-item" data-type="7">
							<a data-monitor="home_title_goods6" target="_blank"
								href="http://mall.360.com/brand/show_detail?id=66">智品牌</a>
						</li>
						<li class="top-item" data-type="9">
							<a data-monitor="home_title_goods8" target="_blank"
								href="http://jifen.360.cn/?src=jifen-sc-dh/">积分商城</a>
						</li>
						<li class="top-item" data-type="10">
							<a data-monitor="home_title_goods9" href="http://bbs.360.cn/">社区</a>
						</li>
					</ul>
					<div class="navad">
						<a data-monitor="home_menu_resource"
							href="http://mall.360.com/ac/n4sxiaolong"><img
								src="image1/t01c983c3efe100f7d6.gif">
						</a>
					</div>
				</div>
			</div>
		</div>
		<script type="preload-script"
			src="js/utils.js"></script>
		<script type="preload-script"
			src="js/jq-suggest.js"></script>
		<script type="preload-script"
			src="js/jq-suggest-client.js"></script>
		<script id="tpl_nav" type="text/html"><!--导航下拉 start--> 
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
		<div class="special-banner"></div>
		<div class="page-main">
			<div class="main-head">
				<img class="head-pic"
					src="image1/t010fc11fa373fba1a4.jpg">
				<div class="head-desc">
					<h2>
						GeckoEye摄像头
					</h2>
					<p>
						产品团队：网络
					</p>
					<p>
						产品类型：智能家居
					</p>
					<div class="head-console">
						<a class="head-like icon-like"
							href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
							data-id="53eb1c8d2979b14660000034">喜欢(<em>190</em>)</a>
						<a class="head-comment icon-comment"
							href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#comment">评论(<em
							class="tab_comment_num">31</em>)</a>
						<a class="head-share icon-share"
							href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#">分享</a>
					</div>
				</div>
				<div class="head-status creativing"></div>
				<div class="head-feature-creative"></div>
				<div id="creativingHammer"
					style="-webkit-transform: rotate(0deg); -webkit-transform-origin: 0px 50%;"></div>
				<div id="creativingStarBox">
					<div class="c-star"
						style="width: 1px; height: 1px; opacity: 1; left: 0px; bottom: 0px;"></div>
					<div class="c-star"
						style="width: 1px; height: 1px; opacity: 1; left: 0px; bottom: 0px;"></div>
					<div class="c-star"
						style="width: 2px; height: 2px; opacity: 1; left: 0px; bottom: 0px;"></div>
				</div>
			</div>
			<div class="main-body m-t-10 clearfix_new">
				<div class="body-left m-r-10">
					<div class="main-content">
						<h3>
							酷品介绍
						</h3>
						<div class="content-container">
							<p>
								<br>
							</p>
							<p>
								安防摄像头的作用非常明显，那就是保护我们的私有财产。随着技术的发展，这些摄像头也正在变得更加小巧和实用。GeckoEye就是这样一款摄像头，其迷你的机身可以被放置在任何表面，并可直接从阳光中获取电能。
							</p>
							<p>
								<br>
							</p>
							<p>
								<img src="image1/t01ac282dae9b6531c2.jpg"
									title="9_1407574114.jpg_600x600.jpg">
							</p>
							<p>
								<br>
							</p>
							<p>
								GeckoEye采用了圆盘形的机身设计，直径为45mm。其表面嵌入了一块太阳能板，中间则是摄像头。制作者表示，GeckoEye可以使用双面胶被固定在任何表面，而阳光就可以为其提供足够的工作电源。
							</p>
							<p>
								<br>
							</p>
							<p>
								<img src="image1/t01a8fed19ac16d1b57.jpg"
									title="81_1407574108.jpg_600x600.jpg">
							</p>
							<p>
								<br>
							</p>
							<p>
								这款设备拥有2枚高清摄像头和1枚动作传感器，可将录制的视频画面存储在云端或本机，其机身内部还有一个GSM槽。和其他联网摄像头一样，GeckoEye也会和自己的应用程序配合工作。
							</p>
							<p>
								<br>
							</p>
							<p>
								<img src="image1/t01a69af72a457068ca.jpg"
									title="85_1407574109.jpg_600x600.jpg">
							</p>
							<p>
								<br>
							</p>
							<p>
								用户可以通过应用看到实时画面，或者是档案库当中查看之前所录制的视频。当有异常情况出现时，GeckoEye可通过邮件、短信或Facebook信息对用户发出提醒。
							</p>
							<p>
								<br>
							</p>
							<p>
								<img src="image1/t0197c17ba525ebc506.jpg"
									title="15_1407574112.jpg_600x600.jpg">
							</p>
							<p>
								<br>
							</p>
							<p>
								GeckoEye目前正在Indiegogo进行筹款，其目前的价格是189美元（约合人民币1163元）。
							</p>
							<p>
								<br>
							</p>
							<p>
								来源：
								<a href="http://digi.tech.qq.com/a/20140811/008359.htm"
									target="_blank">腾讯数码</a>
							</p>
							<p>
								<br>
							</p>
						</div>
					</div>
					<div class="main-comment m-t-10">
						<div
							style="height: 0; overflow: hidden; position: relative; top: -60px"
							id="comment"></div>
						<h3 class="m-b-10">
							评论
						</h3>
						<div class="mod-comment">
							<div class="com_edit">
								<textarea placeholder="输入评论..." id="writeComment"></textarea>
								<a href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
									class="btn" id="writeCommentBtn">发表评论</a>
								<span id="review-warn">还可以输入<em>200</em>字</span>
							</div>
							<div class="com_list">
								<ul id="qikuComment">
									<li>
										<div class="pic">
											<img src="image1/t0146b84a047a799077.jpg"
												alt="l37i87" title="l37i87">
										</div>
										<div class="txt">
											<div class="nick">
												l37i87
											</div>
											<div class="quote">
												<span class="time">九霄20141110发表于 2014-10-21 14:08</span>
												<div class="con">
													我家有做WiFi摄像机 需要可以联系我 705140936&nbsp;
												</div>
											</div>
											<div class="content">
												你家做的有没有像这款一样又隐敝、又能吸在玻璃或者墙上。还有一假如把Wⅰfⅰ摄像机安装在室外能不能防雨水。&nbsp;
											</div>
											<div class="info">
												<span class="time">2015-05-27 09:15</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtn1d0a5d05630ae462">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：l37i87
												</div>
												<div class="rzo">
													<textarea rid="55651accebd5ffa77100002f"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="pic">
											<img src="image1/t00df551a583a87f4e9.jpg"
												alt="feelfrisky0510" title="feelfrisky0510">
										</div>
										<div class="txt">
											<div class="nick">
												feelfrisky0510
											</div>
											<div class="content">
												请问如何购买？&nbsp;
											</div>
											<div class="info">
												<span class="time">2015-03-16 12:29</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtn9d64a0197748a687">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：feelfrisky0510
												</div>
												<div class="rzo">
													<textarea rid="55065c2585e7372045000009"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="pic">
											<img src="image1/t01ae9ef373aaac0e34.jpg"
												alt="王787228" title="王787228">
										</div>
										<div class="txt">
											<div class="nick">
												王787228
											</div>
											<div class="content">
												怎么购买啊&nbsp;
											</div>
											<div class="info">
												<span class="time">2014-11-01 15:21</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtne4569d097945b542">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：王787228
												</div>
												<div class="rzo">
													<textarea rid="545489fbc84a8a8237000121"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="pic">
											<img src="image1/t0135b924322571fb38.jpg"
												alt="我慢熟" title="我慢熟">
										</div>
										<div class="txt">
											<div class="nick">
												我慢熟
											</div>
											<div class="content">
												这个要怎么看两边死角的位置，求体验。&nbsp;
											</div>
											<div class="info">
												<span class="time">2014-11-01 13:58</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtncca9052bc277b278">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：我慢熟
												</div>
												<div class="rzo">
													<textarea rid="5454767bc84a8a9d04000021"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="pic">
											<img src="image1/t01465587679ac34a22.jpg"
												alt="九霄20141110" title="九霄20141110">
										</div>
										<div class="txt">
											<div class="nick">
												九霄20141110
											</div>
											<div class="quote">
												<span class="time">fanyu0816发表于 2014-10-20 11:16</span>
												<div class="con">
													我好像要呀 怎么买呀 在那卖呀&nbsp;
												</div>
											</div>
											<div class="content">
												我家有做WiFi摄像机 需要可以联系我 705140936&nbsp;
											</div>
											<div class="info">
												<span class="time">2014-10-21 14:08</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtnf1942ae14d745407">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：九霄20141110
												</div>
												<div class="rzo">
													<textarea rid="5445f84185e7373f4d00004d"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="pic">
											<img src="image1/t01f4e26caaf56e0f7b.jpg"
												alt="fanyu0816" title="fanyu0816">
										</div>
										<div class="txt">
											<div class="nick">
												fanyu0816
											</div>
											<div class="content">
												我好像要呀 怎么买呀 在那卖呀&nbsp;
											</div>
											<div class="info">
												<span class="time">2014-10-20 11:16</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtnfd4c13234682de9c">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：fanyu0816
												</div>
												<div class="rzo">
													<textarea rid="54447e85c84a8a6b1d000024"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="pic">
											<img src="image1/t00df551a583a87f4e9.jpg"
												alt="360U750952126" title="360U750952126">
										</div>
										<div class="txt">
											<div class="nick">
												360U750952126
											</div>
											<div class="quote">
												<span class="time">九霄20141110发表于 2014-09-12 10:36</span>
												<div class="con">
													我家有WiFi摄像机 150左右 需要可以联系我的哦&nbsp;
												</div>
											</div>
											<div class="content">
												怎么联系你？&nbsp;
											</div>
											<div class="info">
												<span class="time">2014-10-17 15:55</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtn44d1846eb78c7e81">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：360U750952126
												</div>
												<div class="rzo">
													<textarea rid="5440cb7fc84a8a6277000006"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="pic">
											<img src="image1/t01582eef684cc12aeb.jpg"
												alt="骑着奔奔看夕阳" title="骑着奔奔看夕阳">
										</div>
										<div class="txt">
											<div class="nick">
												骑着奔奔看夕阳
											</div>
											<div class="quote">
												<span class="time">九霄20141110发表于 2014-09-12 10:36</span>
												<div class="con">
													我家有WiFi摄像机 150左右 需要可以联系我的哦&nbsp;
												</div>
											</div>
											<div class="content">
												怎么找你？ &nbsp;
											</div>
											<div class="info">
												<span class="time">2014-10-17 13:53</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtnb461460ea21132da">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：骑着奔奔看夕阳
												</div>
												<div class="rzo">
													<textarea rid="5440aec985e737315f000282"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="pic">
											<img src="image1/t00df551a583a87f4e9.jpg"
												alt="360U1302223401" title="360U1302223401">
										</div>
										<div class="txt">
											<div class="nick">
												360U1302223401
											</div>
											<div class="content">
												这款GeckoEye摄像头那里有卖的？&nbsp;
											</div>
											<div class="info">
												<span class="time">2014-10-11 10:50</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtn47a4b611fad5b8f3">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：360U1302223401
												</div>
												<div class="rzo">
													<textarea rid="54389ae38aa7d8963500011c"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="pic">
											<img src="image1/t01386b81c31e58d8dd.jpg"
												alt="邦然" title="邦然">
										</div>
										<div class="txt">
											<div class="nick">
												邦然
											</div>
											<div class="content">
												东西不错，不过这价格也不低啊！&nbsp;
											</div>
											<div class="info">
												<span class="time">2014-09-25 08:49</span><a
													href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
													class="breply" title="回复"
													id="commentReplyBtneac99414d3071c2f">回复</a>
											</div>
											<div class="reply">
												<div class="cor"></div>
												<div class="rto">
													回复：邦然
												</div>
												<div class="rzo">
													<textarea rid="542366afebd5ff05410000fc"></textarea>
													<a
														href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
														class="btn_reply" title="回复">回复</a>
												</div>
											</div>
										</div>
									</li>
								</ul>
								<div class="comment-pagebar">
									<div class="mod-pagebar">
										<span class="pagebar-curr">1</span><a class="pagebar-number"
											href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
											data-go="2">2</a><a class="pagebar-number"
											href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
											data-go="3">3</a><a class="pagebar-number"
											href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
											data-go="4">4</a><a class="pagebar-step box-right"
											href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
											data-go="2">下一页<i class="step-right">&gt;</i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="body-right">
					<div class="main-introduce m-b-10">
						<h3>
							酷品推荐
						</h3>
						<ul class="introduce-list clearfix_new">
							<li class="introduce-item m-b-10">
								<a href="http://mall.360.com/item?id=547543b658d4a6722700007b"
									target="_blank"> <img
										src="image1/t014bba419a2163a576.jpg">
								</a>
								<a href="http://mall.360.com/item?id=547543b658d4a6722700007b"
									target="_blank">易事关怀 手机消毒香薰SPA屋</a>
							</li>
							<li class="introduce-item m-b-10">
								<a href="http://mall.360.com/item?id=5473fb3d58d4a6bf0100002f"
									target="_blank"> <img
										src="image1/t01ce0eae1f7fc144cd.jpg">
								</a>
								<a href="http://mall.360.com/item?id=5473fb3d58d4a6bf0100002f"
									target="_blank">绎美全智能蓝牙音乐设备</a>
							</li>
							<li class="introduce-item m-b-10">
								<a href="http://mall.360.com/item?id=546f22f058d4a66f2700006c"
									target="_blank"> <img
										src="image1/t01294d5f88c87460dd.png">
								</a>
								<a href="http://mall.360.com/item?id=546f22f058d4a66f2700006c"
									target="_blank">360安全路由P1</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="page-bar" style="top: 0px; display: none;">
			<div class="bar-console">
				<a class="head-like icon-like-big"
					href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#"
					data-id="53eb1c8d2979b14660000034">喜欢(<em>190</em>)</a>
				<a class="head-comment icon-comment-big"
					href="#comment">评论(<em
					class="tab_comment_num">31</em>)</a>
				<a class="head-share icon-share-big"
					href="http://mall.360.com/item?id=53eb1c8d2979b14660000034#">分享</a>
			</div>
		</div>
		<div class="mod-footer">
			<div class="foot-bannerw">
				<div class="foot-banner clearfix">
					<div class="banner-item">
						<a
							href="http://mall.360.com/help/show?id=helpcontent_52efb0302e80307378d75a52ad77dcfe"
							target="_blank" data-monitor="home_foot_days7"><i
							class="icon1">7</i>7天无理由退货</a>
					</div>
					<div class="banner-item">
						<a
							href="http://mall.360.com/help/show?id=helpcontent_39b7f4bf73e2cda4f61f7b446e9a4307"
							target="_blank" data-monitor="home_foot_days15"><i
							class="icon2">15</i>15天免费换货</a>
					</div>
					<div class="banner-item">
						<i class="icon3">包</i>满99元包邮
					</div>
					<div class="banner-item">
						<a href="http://www.360shouji.com/service" target="_blank"
							data-monitor="home_foot_moblie"><i class="icon4">服</i>手机特色服务</a>
					</div>
				</div>
			</div>
			<div class="foot-containerw">
				<div class="foot-container clearfix">
					<dl class="foot-con">
						<dt data-monitor="home_foot_freshman">
							帮助中心
						</dt>
						<dd data-monitor="home_help_freshman">
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_32c2c1641fce863c6644f3b0586b98ab"
								rel="nofollow">用户注册</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_76072e16da4630f693343cafeecb5ba7"
								rel="nofollow">用户登录与密码找回</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_5e06b37bfc5656aed67b5752f2d7277e"
								rel="nofollow">购买指南</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_5cee349b1e43e02edaf7000e7c48133c"
								rel="nofollow">支付方式</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_b9b28247bc968beae4fbfedea0a2351d"
								rel="nofollow">配送与说明</a>
						</dd>
					</dl>
					<dl class="foot-con">
						<dt data-monitor="home_foot_help">
							售后服务
						</dt>
						<dd data-monitor="home_help_help">
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_52efb0302e80307378d75a52ad77dcfe"
								rel="nofollow">7 日无理由退货</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_39b7f4bf73e2cda4f61f7b446e9a4307"
								rel="nofollow">质量问题 15 日内换货</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_23c08f5b301ff1a516b9e3efab21b4c1"
								rel="nofollow">保修条款</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_cb7bcabc741d372350d7fcceefbba3bf"
								rel="nofollow">服务流程</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_cd2440c9bbb1d5ff8b5d7aefbeda45e0"
								rel="nofollow">安迷之家</a>
						</dd>
					</dl>
					<dl class="foot-con">
						<dt data-monitor="home_foot_guide">
							特色服务
						</dt>
						<dd data-monitor="home_help_guide">
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_c8f1421544bce489096c17a24923e27c"
								rel="nofollow">F码通道</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_3376b002ed5680d84f8147660ed3638f"
								rel="nofollow">免费试用</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_073f7b9ffce194e182bd931873f787fe"
								rel="nofollow">360 生态</a>
						</dd>
					</dl>
					<dl class="foot-con">
						<dt data-monitor="home_foot_tuiguang">
							推广合作
						</dt>
						<dd data-monitor="home_help_try">
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_ff0d456a829c36f2f0580431b69fe913"
								rel="nofollow">商品入驻</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_14f1b541d8b87874021d0f6185fe7376"
								rel="nofollow">大客户采购</a>
						</dd>
					</dl>
					<dl class="foot-con">
						<dt data-monitor="home_foot_try">
							酷奇商城
						</dt>
						<dd data-monitor="home_help_try">
							<a target="_blank"
								href="http://mall.360.com/help/show?id=helpcontent_18959af0598dbe134c057f211ba0c583"
								rel="nofollow">酷奇商城大事记</a>
						</dd>
					</dl>
					<dl class="foot-con contactus">
						<dt>
							联系我们
						</dt>
						<dd class="servicebox">
							<a href="javascript:;" class="inline-kefu"><img
									src="image1/t019c3c42d7b0ea4f41.png">
							</a>
							<a href="javascript:;" target="_blank" class="weixin"><img
									src="image1/t0113493aa732f72837.png">
								<span class="wxtips"> <img
										src="image1/t01d06b994b8798623c.jpg">
							</span>
							</a>
							<a class="weibo" data-monitor="home_foot_weibo"
								href="http://weibo.com/qikoo360" target="_blank"><img
									src="image1/t0128093bd494ffc7e9.png">
								<span class="wxtips"> <img
										src="image1/t013f6db48422a373d6.jpg">
							</span>
							</a>
						</dd>
					</dl>
				</div>
			</div>
			<div class="footer-copyright">
				酷奇商城©2013-2016 360公司版权所有 京ICP备08010314号-43 京公网安备11000002000006号
			</div>
		</div>
		<div class="slidebar" id="slidebar">
			<ul>
				<li class="rfeedback">
					<a target="_blank" href="http://mall.360.com/feedback"
						data-monitor="right_fankui_click">用户体验</a>
				</li>
				<li class="rtips rWeChat">
					<a href="javascript:;">微信关注</a>
					<div class="rtipscont rWeChattips">
						<span class="arrowr-bg"></span>
						<span class="arrowr"></span>
						<img src="image1/t01d06b994b8798623c.jpg">
						<p class="tiptext">
							扫码关注官方微信
							<br>
							先人一步知晓促销活动
						</p>
					</div>
				</li>
				<li class="rtips rstore">
					<a href="javascript:;">手机商城</a>
					<div class="rtipscont rstoretips">
						<span class="arrowr-bg"></span>
						<span class="arrowr"></span>
						<img src="image1/t013df41dbfac4d5924.jpg">
						<p class="tiptext">
							客户端首次登录
							<span>送188元现金券礼包</span>
						</p>
					</div>
				</li>
				<li class="topback" style="visibility: hidden;">
					<a data-monitor="right_top_click" href="javascript:;" class="gotop">返回顶部</a>
				</li>
			</ul>
		</div>
		<div id="serviceSelectorMask"></div>
		<div class="fixed dialog" id="serviceSelector">
			<span class="icon close"></span>
			<p class="title">
				产品咨询
			</p>
			<p class="description">
				咨询时间
				<em>8:00-22:00</em>
			</p>
			<ul class="flex">
				<li class="phone">
					酷奇手机&amp;配件
				</li>
				<li class="watch">
					酷奇儿童手表
				</li>
				<li class="recorder">
					酷奇行车记录仪
				</li>
				<li class="camera">
					酷奇智能摄像头
				</li>
				<li class="more">
					其他产品
				</li>
			</ul>
			<div class="bg-shadow"></div>
		</div>
		<script>
	var qhPassIntv = setInterval(function() {
		if (window.QHPass == undefined)
			return;
		clearInterval(qhPassIntv);

		// 小能默认参数
		window.NTKF_PARAM = {
			siteid : 'kf_9758',
			settingid : 'kf_9758_1431680295244',
			uid : null,
			uname : null,
			itemid : '', // 商品ID，商品详情页用
			orderid : '', // 订单ID，支付页用
			orderprice : '', // 订单总价，支付页用
			isvip : '0',
			userlevel : ''
		};
		QHPass.getUserInfo(function(data) {
			NTKF_PARAM.uid = data.qid;
			NTKF_PARAM.uname = data.username;
			$.getScript('//dl.ntalker.com/js/xn6/ntkfstat.js?siteid=kf_9758');
		}, function(err) {
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
		NTKF.im_openInPageChat(isPhoneBusiness ? 'kf_9758_1459242784970'
				: 'kf_9758_1431680295244');
		hideServiceSelector();
	}
</script>
		<script>
	var _mvq = _mvq || [];
			_mvq.push([ "$setAccount", "m-251506-0" ]),
			_mvq.push([ "$logConversion" ]),
			+function() {
				var e = document.createElement("script");
						e.type = "text/javascript",
						e.async = !0,
						e.src = "https:" == document.location.protocol ? "https://material-ssl.mediav.com/bjjs/mba_ka.js"
								: "http://material.mediav.com/bjjs/mba_ka.js";
				var t = document.getElementsByTagName("script")[0];
				t.parentNode.insertBefore(e, t)
			}()
</script>
		<style>
#page_mall360footer {
	overflow: visible
}
</style>
		<input type="hidden" class="qtoken" name="qtoken" value="">
		<input type="hidden" class="real_qtoken" name="real_qtoken" value="">
		<input type="hidden" class="qtokentimestamp" name="qtokentimestamp"
			value="">
		<input type="hidden" class="sb_param" name="sb_param"
			value="d5fe7b3bb151dc2af487d5429d09101c">
		<script src="jsj/qikoo-v.js"></script>
		<ul id="search-suggest-1478520920146" class="__mall_suggest__"
			style="width: 462px;"></ul>
		<script src="js/jquery.rotate.js"></script>
		<script src="js/qikoo_page_item.js"></script>
		<script>
	widgetComment.init({
		id : '53eb1c8d2979b14660000034',
		tag : 2
	});

	qikoo && qikoo.like && qikoo.like.init('.head-like');

	qikoo
			&& qikoo.share
			&& qikoo.share.init('.head-share', {
				title : '《'
						+ $('.head-desc h2').text()
						+ '》'
						+ $('.content-container').text().replace(/\n/g, '')
								.trim().substr(0, 200),
				pic : $('.content-container').find('img').attr('src')
			})

	qikooPageItem.play('creative')
</script>
		<script>
	$
			.getScript(
					"https://s.ssl.qhmsg.com/monitor/;monitor/8e133f74.js",
					function() {
						function t() {
							var e = window.location.search.substring(1).split(
									"&"), t = {}, n, r;
							for (r in e) {
								if (e[r] === "")
									continue;
										n = e[r].split("="),
										t[decodeURIComponent(n[0])] = decodeURIComponent(n[1])
							}
							return t
						}
						if (location.protocol == "https:")
							for ( var e in monitor.config)
								typeof monitor.config[e] == "string"
										&& (monitor.config[e] = monitor.config[e]
												.replace("http://", "https://"));
								monitor.data.getTrack = function() {
									var e = document.cookie
											.match(/qid%3D([\d]*)/), n = t();
									return e && (n.qid = e[1]),
											n.b = monitor.util.getBrowser(),
											n.c = monitor.util.getCount(),
											n.r = monitor.util.getReferrer(),
											n.fl = monitor.util.getFlashVer(),
											n
								},
								monitor.setProject("360_qikoo").getTrack()
										.getClickAndKeydown(),
								$("body")
										.on(
												"click",
												"[data-monitor]",
												function() {
													var e = $(this).data(
															"monitor")
															+ "", t = e
															.split("_");
													if (t.length != 3)
														return;
													$.each(t, function(e, n) {
														t[e] = n
													});
													var n = "//s.360.cn/mall360/clk.htm?page="
															+ t[0]
															+ "&board="
															+ t[1]
															+ "&place="
															+ t[2]
															+ "&guid="
															+ monitor.util
																	.getGuid()
															+ "&port=pc";
													$.ajax({
														dataType : "jsonp",
														url : n
													})
												})
					})
</script>
		<script src="js/mall_monitor.js"></script>
		<script>
	$(window).load(
			function() {
				(function(i, s, o, g, r, a, m) {
					i['GoogleAnalyticsObject'] = r;
					i[r] = i[r] || function() {
						(i[r].q = i[r].q || []).push(arguments)
					}, i[r].l = 1 * new Date();
					a = s.createElement(o), m = s.getElementsByTagName(o)[0];
					a.async = 'async';
					a.src = g;
					m.parentNode.insertBefore(a, m)
				})(window, document, 'script',
						'//www.google-analytics.com/analytics.js', 'ga');
				ga('create', "UA-63895592-1", 'auto');
				ga('set', '&uid', '');
				ga('send', 'pageview');
			})
</script>
		<iframe src="./GeckoEye摄像头_ 酷奇商城_files/b.htm" id="mv_cm"
			style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe>
	</body>
</html>