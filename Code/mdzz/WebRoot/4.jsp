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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="Keywords"
	content="奇酷网,Qikoo,智能硬件,免费试用,智能手环,智能家居,智能手表,智能电视,智能家电,奇酷试用,360硬件专区,奇酷达人,评测,测评,">
<meta name="Description"
	content="奇酷网是一个酷品曝光平台，在这里，你可以看到国内外最新的智能设备以及最详细的产品介绍，你也可以与众多极客分享你的想法、创意。">
<!--<meta property="wb:webmaster" content="82757f177989599b">
		-->
<meta name="renderer" content="webkit">
<title>索尼全高清3D投影仪_ 酷奇网 - 中国最大的智能硬件体验平台</title>
<link rel="shortcut icon" href="image1/favicon.ico">
<script src="js/analytics.js"></script>
<script src="js/analytics(1).js"></script>
<script src="js/190.js"></script>
<link rel="stylesheet" href="css/index_item.css">
<link rel="stylesheet" href="css/qikoo.css">
<style type="text/css">
.one {
	position: relative;
	top: -325px;
	left: 800px;
}
</style>
</head>
<body style="zoom: 1;">
	<div class="mod-header">
		<div class="header-container">
			<a class="header-logo" href="MyFirstServlet"> <img
				src="image/t0137d45493656b77d1.png">
			</a>
			<div class="header-search" id="qHeaderSearch">
				<input class="search-input" placeholder="输入酷品关键词" id="opt" style="padding:15px 0px;;">
				<a class="search-submit" id="shous" onclick="a()">搜&nbsp;&nbsp;&nbsp;索</a>

			</div>
			<div>
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
		</div>
	</div>
	<script>
	$(document).ready(function() {
		qikoo.search.init();
	});
</script>
	<div class="special-banner"></div>
	<div class="page-main">
		<div class="main-head">
			<img class="head-pic" src="image1/t011a2a3eef03bc028f.jpg">
			<div class="head-desc">
				<h2>索尼全高清3D投影仪</h2>
				<p>产品团队：网络</p>
				<p>产品类型：娱乐生活</p>
				<div class="head-console">
					<a class="head-like icon-like"
						href="file:///G:/JSP%E9%A1%B9%E7%9B%AE/C%E9%85%B7%E5%A5%87/%E4%BB%A3%E7%A0%81/%E9%85%B7%E5%A5%87/page1/1.html"
						data-id="53f314c82979b12631000001">喜欢(<em>99</em>)
					</a> <a class="head-comment icon-comment"
						href="http://www.qikoo.com/item?id=53f314c82979b12631000001#comment">评论(<em
						class="tab_comment_num">13</em>)
					</a>&nbsp;
				</div>
			</div>
			<div class="head-status creativing"></div>
			<div class="head-feature-creative"></div>
			<div id="creativingHammer"
				style="-webkit-transform: rotate(-30deg); -webkit-transform-origin: 0px 50%;"></div>
			<div id="creativingStarBox"></div>
		</div>
		<div class="main-body m-t-10 clearfix_new">
			<div class="body-left m-r-10">
				<div class="main-content">
					<h3>酷品介绍</h3>
					<div class="content-container">
						<p>
							<br>
						</p>
						<p>
							很多家庭都希望通过投影仪来代替传统电视，实现更震撼的影像输出效果，索尼今年发布的VPL-HW40ES全高清投影仪就是一个不错的解决方案。这款投影仪拥有1080P分辨率、支持三组SXRD面板显示技术，并拥有1700流明亮度，最低12000元的价格显然也要比此前产品更为亲民。下面，就一起来看看它的实际效果如何。
						</p>
						<p>
							<br>
						</p>
						<p>
							<strong>机身设计及配件</strong>
						</p>
						<p>
							<strong> <br>
							</strong>
						</p>
						<p>
							<strong> <img src="image1/t01a63a98618a6ab154.jpg"
								title="109331237.jpg">
							</strong>
						</p>
						<p>
							<br>
						</p>
						<p>
							<img src="image1/t0132f36f52e125252e.jpg" style="float: none;"
								title="Sony_VPL-HW40ES_lens-shift.jpg">
						</p>
						<p>
							<img src="image1/t01083844f3308624a4.jpg" style="float: none;"
								title="Sony_VPL-HW40ES_connectique.jpg">
						</p>
						<p>
							<img src="image1/t014e864c64a3f07c70.jpg" style="float: none;"
								title="Sony_VPL-HW40ES_telecommande.jpg">
						</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>
							索尼VPL-HW40ES延续了此前HW30系列的设计，拥有黑色机身，形状四方，适合家庭使用。接口方面，内置了两个HDMI、一个VGA、分量接口、以太网等，并具备手动镜头对焦环及变焦环，可实现1.6倍光学变焦功能。遥控器部分与前作一致，具有背光功能，操作感受良好。
						</p>
						<p>
							<br>
						</p>
						<p>
							<strong>2D画质表现</strong>
						</p>
						<p>
							<br>
						</p>
						<p>
							<img src="image1/t01bdd570dd0d9289a2.jpg"
								title="Sony_VPL-HW40ES_film_gamma.jpg">
						</p>
						<p>
							<br>
						</p>
						<p>索尼VPL-HW40ES拥有不俗的2D画质表现，其平均Delta
							E数值为2，颜色准确率非常高，肉眼几乎无法识别出色差。投影仪的黑色表现一流，对比度也令人满意，即便没有提供所谓的动态虹膜效果，但在实际使用中基本不需要。
						</p>
						<p>
							<br>
						</p>
						<p>
							索尼VPL-HW40ES的伽玛值在测试中的成绩为2.2，意味着画面不会失去任何细节，不论是明亮处还是暗处。同时，其色温为6300K，非常接近6500K的标准。投影仪还提供了运动补偿功能，设置为低可以成功消除颤抖，但不足之处还是会出现一些轻微的肥皂剧效果。
						</p>
						<p>
							<br>
						</p>
						<p>
							玩家同样可以使用索尼VPL-HW40ES获得极为出色的游戏效果，输入延迟十分低。在我们的测试中，开启游戏模式后输入延迟率仅为28毫秒（电影模式则为65毫秒），在实际游戏中的拖慢不会超过每秒2帧。
						</p>
						<p>
							<br>
						</p>
						<p>
							<strong>3D画质表现</strong>
						</p>
						<p>
							<br>
						</p>
						<p>
							<img src="image1/t01579d87db2c05f009.jpg"
								title="Sony_VPL-jeux.jpg">
						</p>
						<p>
							<br>
						</p>
						<p>
							索尼VPL-HW40ES的3D画质表现也是极为出众的，你甚至会认为自己是在电影院。唯一的问题是一些深色画面会出现轻微重叠，在这一方面明基W1070做得更好一些。为了降低成本，该机并没有配备3D眼镜，所以用户还需自行购买。
						</p>
						<p>
							<br>
						</p>
						<p>
							<strong>总结</strong>
						</p>
						<p>
							<span id="_baidu_bookmark_start_7"
								style="display: none; line-height: 0px;">‍</span>
						</p>
						<p>
							<br>
						</p>
						<p>
							显然，索尼VPL-HW40ES是一款极为出色的全高清3D投影仪，不论是观看蓝光电影、玩游戏都拥有极为出色的效果，黑色水平在同类产品中尤为出众。尽管3D画质略有瑕疵，但它仍是目前最好的全高清投影仪。另外，相对前作来说，价格也适当降低，适合家庭作为娱乐设备购入。
						</p>
						<p>
							<br>
						</p>
						<p>
							来源： <a href="http://digi.tech.qq.com/a/20140816/007398.htm"
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
					<h3 class="m-b-10">评论</h3>
					<div class="qikoo_comment">
						<div class="com_edit">
							<textarea placeholder="输入评论..." id="writeComment"></textarea>
							<a href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
								class="btn" id="writeCommentBtn">发表评论</a> <span id="review-warn">还可以输入<em>200</em>字
							</span>
						</div>
						<div class="com_list">
							<ul id="qikuComment">
								<li>
									<div class="pic">
										<img src="image1/t01834d76c3ab552f76.jpg" alt="赶路pro"
											title="赶路pro">
									</div>
									<div class="txt">
										<div class="nick">赶路pro</div>
										<div class="content">好贵呀呀呀&nbsp;</div>
										<div class="info">
											<span class="time">2014-08-21 09:12</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：赶路pro</div>
											<div class="rzo">
												<textarea rid="53f54784c84a8a347b000189"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="pic">
										<img src="image1/220255dq9816.e804ee.jpg" alt="BOTYW1"
											title="BOTYW1">
									</div>
									<div class="txt">
										<div class="nick">BOTYW1</div>
										<div class="content">不错不错。&nbsp;</div>
										<div class="info">
											<span class="time">2014-08-21 08:18</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：BOTYW1</div>
											<div class="rzo">
												<textarea rid="53f53aef85e7377118000668"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="pic">
										<img src="image1/t03bc81fe3f550df42c.jpg" alt="zcxiaobobo"
											title="zcxiaobobo">
									</div>
									<div class="txt">
										<div class="nick">zcxiaobobo</div>
										<div class="content">高大上的说，用这个玩游戏会不会活到游戏里去&nbsp;</div>
										<div class="info">
											<span class="time">2014-08-21 07:53</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：zcxiaobobo</div>
											<div class="rzo">
												<textarea rid="53f53518c84a8a3f6d0002ab"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="pic">
										<img src="image1/t0343fbd6642bfd180e.jpg" alt="楼主999"
											title="楼主999">
									</div>
									<div class="txt">
										<div class="nick">楼主999</div>
										<div class="content">家庭影院系统就差它了&nbsp;</div>
										<div class="info">
											<span class="time">2014-08-21 07:25</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：楼主999</div>
											<div class="rzo">
												<textarea rid="53f52e57c84a8acc760001d0"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="pic">
										<img src="image1/t01386b81c31e58d8dd.jpg" alt="360U272814845"
											title="360U272814845">
									</div>
									<div class="txt">
										<div class="nick">360U272814845</div>
										<div class="content">dgdfg &nbsp;</div>
										<div class="info">
											<span class="time">2014-08-21 00:24</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：360U272814845</div>
											<div class="rzo">
												<textarea rid="53f4cbc0c84a8ae21b000227"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="pic">
										<img src="image1/t01386b81c31e58d8dd.jpg" alt="360U272814845"
											title="360U272814845">
									</div>
									<div class="txt">
										<div class="nick">360U272814845</div>
										<div class="content">这东西好啊 玩游戏的话 那简直没的说的 只要机器配置够高
											把一切调到最高 那简直就是在边看电影，边玩游戏&nbsp;</div>
										<div class="info">
											<span class="time">2014-08-21 00:24</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：360U272814845</div>
											<div class="rzo">
												<textarea rid="53f4cbb1c84a8a822d000209"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="pic">
										<img src="image1/220255dq9816.e804ee.jpg" alt="sonocaddie"
											title="sonocaddie">
									</div>
									<div class="txt">
										<div class="nick">sonocaddie</div>
										<div class="content">高大上，炫，酷。&nbsp;</div>
										<div class="info">
											<span class="time">2014-08-20 19:15</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：sonocaddie</div>
											<div class="rzo">
												<textarea rid="53f4835385e73750180005fb"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="pic">
										<img src="image1/t01a56b8c9e86251e23.jpg" alt="麻辣小火锅110"
											title="麻辣小火锅110">
									</div>
									<div class="txt">
										<div class="nick">麻辣小火锅110</div>
										<div class="content">这东西好啊 玩游戏的话 那简直没的说的 只要机器配置够高
											把一切调到最高 那简直就是在边看电影，边玩游戏。&nbsp;</div>
										<div class="info">
											<span class="time">2014-08-20 19:03</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：麻辣小火锅110</div>
											<div class="rzo">
												<textarea rid="53f4808ec84a8a48540001cf"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="pic">
										<img src="image1/t00df551a583a87f4e9.jpg" alt="sisi_liangzi"
											title="sisi_liangzi">
									</div>
									<div class="txt">
										<div class="nick">sisi_liangzi</div>
										<div class="content">感觉好高大上啊，希望可以拥有一台&nbsp;</div>
										<div class="info">
											<span class="time">2014-08-20 10:25</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：sisi_liangzi</div>
											<div class="rzo">
												<textarea rid="53f40700c84a8a3136000186"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="pic">
										<img src="image1/220255dq9816.e804ee.jpg" alt="厦门林雷"
											title="厦门林雷">
									</div>
									<div class="txt">
										<div class="nick">厦门林雷</div>
										<div class="content">什么样价位很关键&nbsp;</div>
										<div class="info">
											<span class="time">2014-08-20 10:23</span><a
												href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
												class="breply" title="回复">回复</a>
										</div>
										<div class="reply">
											<div class="cor"></div>
											<div class="rto">回复：厦门林雷</div>
											<div class="rzo">
												<textarea rid="53f406a9c84a8a78400001a0"></textarea>
												<a
													href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
													class="btn_reply" title="回复">回复</a>
											</div>
										</div>
									</div>
								</li>
								<li class="nobdr"><a
									href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
									class="moreComment">更多评论&gt;&gt;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="body-right">
				<div class="main-introduce m-b-10">
					<h3>酷品推荐</h3>
					<ul class="introduce-list clearfix_new">
						<li class="introduce-item m-b-10"><a
							href="http://www.qikoo.com/item?id=53df36bb2979b19870000004"
							target="_blank"> <img src="image1/t01c3c3d1091949277f.jpg">
						</a><a href="http://www.qikoo.com/item?id=53df36bb2979b19870000004"
							target="_blank">Kepler 智能燃气报警器</a></li>
						<li class="introduce-item m-b-10"><a
							href="http://www.qikoo.com/item?id=53defeba2979b16170000006"
							target="_blank"> <img src="image1/t01387c73ba189f606e.jpg">
						</a><a href="http://www.qikoo.com/item?id=53defeba2979b16170000006"
							target="_blank">LifeSmart智能家居关爱组合</a></li>
						<li class="introduce-item m-b-10"><a
							href="http://www.qikoo.com/item?id=53d9bfbe2979b16b70000002"
							target="_blank"> <img src="image1/t01b48cca38997c7a39.jpg">
						</a><a href="http://www.qikoo.com/item?id=53d9bfbe2979b16b70000002"
							target="_blank">Star.21 智能健康手环</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="page-bar" style="top: 0px; display: none;">
		<div class="bar-console">
			<a class="head-like icon-like-big"
				href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
				data-id="53f314c82979b12631000001">喜欢(<em>99</em>)
			</a> <a class="head-comment icon-comment-big"
				href="#comment">评论(<em
				class="tab_comment_num">13</em>)
			</a>
		</div>
	</div>
	<div class="mod-footer">
		<div class="footer-copyright">奇酷网©2013-2014 奇虎360版权所有 |
			京ICP备11014623号-3</div>
	</div>
	<a href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
		class="two_code" style="display: none"></a>
	<a href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
		class="two_code_btn"></a>
	<a href="http://bbs.360safe.com/thread-3533640-1-1.html"
		target="_blank" class="qiku_fk"></a>
	<a href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"
		class="qiku_sc"></a>
	<input type="hidden" class="qtoken" name="qtoken" value="">
	<script src="./索尼全高清3D投影仪_ 酷奇网 - 中国最大的智能硬件体验平台_files/saved_resource"></script>
	<script src="js/common.js"></script>
	<script src="js/qikoo.js"></script>

	<script>
	qiku.init();
</script>
	<a id="ScrollToTop"
		href="file:///G:/JSP%E9%A1%B9%E7%9B%AE/C%E9%85%B7%E5%A5%87/%E4%BB%A3%E7%A0%81/%E9%85%B7%E5%A5%87/page1/%E7%B4%A2%E5%B0%BC%E5%85%A8%E9%AB%98%E6%B8%853D%E6%8A%95%E5%BD%B1%E4%BB%AA.htm#"
		style="display: none;"></a>
	<a id="ScrollToTop"
		href="http://www.qikoo.com/item?id=53f314c82979b12631000001#"></a>
	<script src="js/jquery.rotate.js"></script>
	<script src="js/qikoo_page_item.js"></script>
	<script>
	widgetComment.init({
		id : '53f314c82979b12631000001',
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
			});

	qikooPageItem.play('creative');
</script>
	<script>
	$(".mod-header")[0] != undefined
			&& QHPass.Cookie.get("Q")
			&& qikoo.msgTips.init()
</script>
	<script>
	(
					function(e, t, n, r, i, s, o) {
						e.GoogleAnalyticsObject = i, e[i] = e[i] || function() {
							(e[i].q = e[i].q || []).push(arguments);
						}, e[i].l = 1 * new Date, s = t.createElement(n), o = t
								.getElementsByTagName(n)[0], s.async = 1,
								s.src = r, o.parentNode.insertBefore(s, o);
					})(window, document, "script",
					"js/analytics.js", "ga"), ga(
			"create", "UA-42461445-1", "auto"), ga("send", "pageview");
</script>
	<script src="js/saved_resource(1)"></script>
	<script>
	monitor.setProject("360_qikoo").getTrack().getClickAndKeydown();
</script>


</body>
</html>