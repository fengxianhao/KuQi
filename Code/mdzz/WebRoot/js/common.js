QHPass.resConfig.src="pcw_qikoo",QHPass.resConfig.loginOpts.thirdLogin=[],QHPass.resConfig.loginStatus=!0,QHPass.resConfig.callback=!0,QHPass.resConfig.postCharset="utf-8",QHPass.resConfig.reloadAfterLogout=!0,QHPass.resConfig.cookie_domains=["qiku|1360|360|qikoo"];var browser={versions:function(){var e=navigator.userAgent,t=navigator.appVersion;return{trident:e.indexOf("Trident")>-1,presto:e.indexOf("Presto")>-1,webKit:e.indexOf("AppleWebKit")>-1,gecko:e.indexOf("Gecko")>-1&&e.indexOf("KHTML")==-1,mobile:!!e.match(/AppleWebKit.*Mobile.*/),ios:!!e.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/),android:e.indexOf("Android")>-1||e.indexOf("Linux")>-1,iPhone:e.indexOf("iPhone")>-1,iPad:e.indexOf("iPad")>-1,webApp:e.indexOf("Safari")==-1,symbian:e.indexOf("Symbian")>-1,mac:e.indexOf("Mac OS X")>-1,linux:e.indexOf("Linux")>-1,ie6:e.indexOf("MSIE 6.0")>-1}}(),language:(navigator.browserLanguage||navigator.language).toLowerCase()},qiku=function(){return{init:function(){qiku.slideInfo(),qiku.fliter(),$(".two_code_btn").mouseenter(function(){$(".two_code").show()}),$(".two_code_btn").mouseleave(function(){$(".two_code").hide()}),qiku.initScrollToTop(),$(".qiku_sc").click(function(){try{window.sidebar&&"object"==typeof window.sidebar&&"function"==typeof window.sidebar.addPanel?window.sidebar.addPanel("\u5947\u9177_\u4e2d\u56fd\u6700\u5927\u667a\u80fd\u786c\u4ef6\u4f53\u9a8c\u5e73\u53f0","http://www.qikoo.com",""):document.all&&"object"==typeof window.external?window.external.addFavorite("http://www.qikoo.com","\u5947\u9177_\u4e2d\u56fd\u6700\u5927\u667a\u80fd\u786c\u4ef6\u4f53\u9a8c\u5e73\u53f0"):alert("\u60a8\u4f7f\u7528\u7684\u6d4f\u89c8\u5668\u4e0d\u652f\u6301\u6b64\u529f\u80fd\uff0c\u8bf7\u6309\u201cCtrl + D\u201d\u952e\u624b\u5de5\u52a0\u5165\u6536\u85cf")}catch(e){alert("\u60a8\u4f7f\u7528\u7684\u6d4f\u89c8\u5668\u4e0d\u652f\u6301\u6b64\u529f\u80fd\uff0c\u8bf7\u6309\u201cCtrl + D\u201d\u952e\u624b\u5de5\u52a0\u5165\u6536\u85cf")}return!1})},shareToWeibo:function(){var e={};e.text=encodeURIComponent("\u300a"+paperTitleWB+"\u300b"+paperContentWB),e.img=encodeURIComponent(""+paperImgWB+""),e.url="http://service.weibo.com/share/share.php?url="+encodeURIComponent(document.URL)+"&ralateUid=3672975180&type=button&language=zh_cn&&pic="+e.img+"&title="+e.text+"&searchPic=true&style=simple','qikoo','height=500,width=500,top=0,left=0,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no",window.open(e.url)},rvlistSort:function(){$(".rvlist_sort a").click(function(){$(this).hasClass("current")==0&&($(this).addClass("current"),$(this).siblings("a").removeClass("current"))})},initComment:function(e,t){qiku.commentReply(e,t),qiku.writeComment(e,t),qiku.replyComment(e,t),qiku.commentDel()},fliter:function(){var e=1;$("#page_index .category a,#page_index .water_viewmore").click(function(){var e,t=$(this),n=$(this).hasClass("current");t.attr("value")==0?$(".sc a,.sk a,.sm a").removeClass("current"):($(".sa a").removeClass("current"),t.parent().find("a").removeClass("current")),n==0&&t.addClass("current");var r=t.attr("value"),i=t.parent().attr("class").split(" ")[0];e={url:"/index/sync",sc:$(".category .sc .current").attr("value"),sk:$(".category .sk .current").attr("value"),sm:$(".category .sm .current").attr("value"),o:$(".category .order .current").attr("value")},$(".category").attr("ajaxtype")=="list"&&(e.url="/list/sync"),setTimeout(function(){t.hasClass("water_viewmore")?location.href="/list?"+i+"="+r+"&o="+e.o:location.href="/list?"+i+"="+r+"&o="+e.o},200)}),$("#page_cate .category a,#page_cate .water_viewmore").click(function(){var t=$("body").attr("load");if(t==1)return!1;$("body").attr("load",1);var n,r=$(this),i=$(this).hasClass("current");r.attr("value")==0?$(".sc a,.sk a,.sm a").removeClass("current"):($(".sa a").removeClass("current"),r.parent().find("a").removeClass("current")),i==0&&r.addClass("current"),r.parent().find(".order")&&r.addClass("current").siblings("a").removeClass("current"),n={url:"/index/sync",sc:$(".category .sc .current").attr("value"),sk:$(".category .sk .current").attr("value"),sm:$(".category .sm .current").attr("value"),o:$(".category .order .current").attr("value")},$(".category").attr("ajaxtype")=="list"&&(n.url="/list/sync"),r.hasClass("water_viewmore")==0?($(".water_viewmore").html("\u67e5\u770b\u66f4\u591a>>"),$(".water_viewmore").hide(),$(".mod2").html('<div class="load_wrap"><img src="/resource/img/loading.gif"/></div>'),e=1):(e++,n.page=e,$(".water_viewmore").html('<img src="/resource/img/loading.gif"/>')),setTimeout(function(){r.hasClass("water_viewmore")?qiku.getProducts(n,!0):qiku.getProducts(n)},200)}),$(".i_content ul").delegate(".des .xh","click",function(){qiku.addLike($(this).attr("itemid"),$(this),"list")})},banner_slide:function(){function e(){clearTimeout(r)}function t(e){e?e.css({"background-position":"-14px 0"}):$("#switch1,#switch2,#switch3,#switch4,#switch5").css({"background-position":"0 0"})}function n(t){e(),r=setTimeout(function(){$("#switch span#switch"+t).click()},8e3)}var r;n(2),$("#switch span").click(function(){var e=$(this).attr("val"),r=parseInt(e)+1,i=parseInt(e)-1,s=$(".banner").size();r==s+1?r=1:r=r,i==0?i=s:i=i,t(),t($(this)),$(".banner").css({left:"980px"}),$("#banner"+i).css({left:"0px"}),$("#banner"+i).animate({left:"-980px"}),$("#banner"+e).animate({left:"0px"}),$("#banner"+r).animate({left:"980px"}),n(r)})},slideInfo:function(){function e(e){e.find(".des").slideToggle(100)}$(".i_content ul").delegate("li","mouseenter",function(){e($(this)),$(this).find(".bor_wrap").show()}),$(".i_content ul").delegate("li","mouseleave",function(){e($(this)),$(this).find(".bor_wrap").hide()})},getProducts:function(param,append){param.o==1&&(param.o=0),$.get(param.url,{s_c:param.sc,s_k:param.sk,s_m:param.sm,o:param.o,page:param.page,ts:(new Date).getTime()},function(data){if(data){var data=eval("("+data+")"),con=data.body.trim(),pnum=data.pnum;$(".water_viewmore").show(),append==1?($(".mod2").append(con),param.page==pnum?$(".water_viewmore").hide():$(".water_viewmore").html("\u67e5\u770b\u66f4\u591a>>")):($(".mod2").html(con),pnum==1&&con?$(".water_viewmore").hide():con?$(".water_viewmore").html("\u67e5\u770b\u66f4\u591a>>"):($(".mod2").html('<span class="errormsg">\u6682\u65f6\u8fd8\u6ca1\u6709\u7b26\u5408\u8981\u6c42\u7684\u9177\u54c1\u3002</span>'),$(".water_viewmore").hide()))}else append==1?($(".mod2").append('<span class="errormsg">\u6ca1\u6709\u66f4\u591a\u4e86\u3002</span>'),$(".water_viewmore").hide()):$(".mod2").html('<span class="errormsg">\u6682\u65f6\u8fd8\u6ca1\u6709\u7b26\u5408\u8981\u6c42\u7684\u9177\u54c1\u3002</span>');$("body").attr("load",0),qikoo&&qikoo.widget&&qikoo.widget.product&&qikoo.widget.product.init()})},getComment:function(e){$.get("/item/comment",{id:e.baike_name,ts:(new Date).getTime()},function(e){e?$(".detail .dl_comment").html(e):$(".detail .dl_comment").html("\u6682\u65e0\u6570\u636e\u3002")})},getCommentTry:function(e){$.get("/item/comment",{id:e.baike_name,ts:(new Date).getTime()},function(e){e?$(".ndetail .dl_comment").html(e):$(".ndetail .dl_comment").html("\u6682\u65e0\u6570\u636e\u3002")})},addLike:function(id,obj,type){$.post("/submit/addXh",{id:id,ts:(new Date).getTime()},function(data){data=eval("("+data+")");if(data.errno==0){var _span;type=="item"&&(_span=obj.prev("span")),type=="list"&&(_span=obj.find("span"));var _num=_span.html();_span.html(parseInt(_num)+1),obj.addClass("p_liked")}})},addComment:function(e,t){$.post("/submit/addPl",{id:e,ts:(new Date).getTime()},function(e){if(e){var t=parseInt($(".tab_comment_num").html());$(".tab_comment_num").html(t+1)}})},addVote:function(id,obj,type){$.post("/submit/addPcVote",{id:id,type:type,ts:(new Date).getTime()},function(data){data=eval("("+data+")");if(data.errno==0){var _span;_span=obj.next("span");var _num=_span.html();_span.html(parseInt(_num)+1)}})},addGm:function(id){$.post("/submit/addGm",{kuid:id,title:$("#title").val(),url:$("#url").val(),keeper:$("#keeper").val(),price:$("#price").val(),message:$("#message").val(),ts:(new Date).getTime()},function(data){data&&(data=eval("("+data+")"),$(".fankui .succ,.fankui .warn").hide(),data.errno==0?$(".fankui .succ").show():$(".fankui .warn").show())})},detailInit:function(){function e(e){return e=parseInt(e),isNaN(e)?0:e}function t(t){var n=0,r=0,i=e(t.style.width),s=e(t.style.height),o=t.offsetWidth,u=t.offsetHeight;while(t.offsetParent)n+=t.offsetLeft+(t.currentStyle?e(t.currentStyle.borderLeftWidth):0),r+=t.offsetTop+(t.currentStyle?e(t.currentStyle.borderTopWidth):0),t=t.offsetParent;return n+=t.offsetLeft+(t.currentStyle?e(t.currentStyle.borderLeftWidth):0),r+=t.offsetTop+(t.currentStyle?e(t.currentStyle.borderTopWidth):0),{x:n,y:r,w:i,h:s,wb:o,hb:u}}function n(){var e,t,n,r;return document.documentElement&&document.documentElement.scrollTop?(e=document.documentElement.scrollTop,t=document.documentElement.scrollLeft,n=document.documentElement.scrollWidth,r=document.documentElement.scrollHeight):document.body&&(e=document.body.scrollTop,t=document.body.scrollLeft,n=document.body.scrollWidth,r=document.body.scrollHeight),{t:e,l:t,w:n,h:r}}function r(e,r){typeof e!="object"&&(e=document.getElementById(e));if(!e)return;var i=this;i.el=e,i.p=t(e),i.s=n(),i.clear=function(){window.clearInterval(i.timer),i.timer=null},i.t=(new Date).getTime(),i.step=function(){var e=(new Date).getTime(),t=(e-i.t)/r;e>=r+i.t?(i.clear(),window.setTimeout(function(){i.scroll(i.p.y,i.p.x)},13)):(st=(-Math.cos(t*Math.PI)/2+.5)*(i.p.y-i.s.t)+i.s.t,sl=(-Math.cos(t*Math.PI)/2+.5)*(i.p.x-i.s.l)+i.s.l,i.scroll(st,sl))},i.scroll=function(e,t){window.scrollTo(t,e)},i.timer=window.setInterval(function(){i.step()},13)}$(".declare a").click(function(){var e=$(this),t=qiku.getQueryString("pcid"),n=e.hasClass("useful")==1?1:2;qiku.addVote(t,e,n)}),$(".product_block .p_block").eq(1).click(function(){$(this).find("a").hasClass("p_zixun")==1?$(".p_tab .tab_wrap a").eq(2).click():$(".p_tab .tab_wrap a").eq(1).click(),location.href="#review"}),$(".product_block .p_block").eq(2).click(function(){$(".p_tab .tab_wrap a").eq(2).click(),location.href="#comment"}),$(".write_comment").click(function(){$(".p_tab .tab_wrap a").eq(2).click()}),$(".p_tab .tab_wrap a,.write_review").click(function(){$(".dl_detail,.dl_review,.dl_news,.dl_comment,.article_write,.tabwrap_in").hide(),$(".write_review").show(),$(".p_tab .tab_wrap a").removeClass("current"),$(this).addClass("current");var e=$(this).attr("name");$(".dl_"+e).show(),e=="write"&&($(".write_review").hide(),$(".dl_review,.article_write").show(),$(".dl_review .article,.dl_review .cutline").hide()),e=="review"&&($(".article_write").hide(),$(".dl_review .article,.dl_review .cutline").show()),e=="comment"});var i=$(".p_tab .tab_wrap").attr("default");i>1&&$(".p_tab .tab_wrap a").eq(i-1).click(),$(".product_block .b_like").click(function(){_this=$(".p_like"),_this.hasClass("p_liked")==0&&qiku.addLike($(".detail").attr("id"),_this,"item")}),$(".dl_pic .bigpic_wrap").mouseenter(function(){$(".dl_pic .prev,.dl_pic .next").show()}),$(".dl_pic .bigpic_wrap").mouseleave(function(){$(".dl_pic .prev,.dl_pic .next").hide()}),$(".article .unfold").click(function(){var e;$(this).hasClass("unfold")?e=$(this):e=$(this).next(".unfold"),e.attr("type")==0?(e.html("\u6536\u8d77\u6587\u7ae0 -"),e.attr("type","1"),e.parents(".article").find(".txt_s").hide(),e.parents(".article").find(".txt_f").show()):(e.html("\u5c55\u5f00\u6587\u7ae0 +"),e.attr("type","0"),e.parents(".article").find(".txt_s").show(),e.parents(".article").find(".txt_f").hide())}),$(".article_write .submit").click(function(){var e=$(".detail").attr("id"),t=$(".article_write .w_title").val(),n=$(".article_write .w_content").html();if(!t)return $(".article_write .tit_t").html('<font color="red">\u8bf7\u586b\u5199\u6807\u9898\uff01</font>'),!1;$(".article_write .tit_t").html("\u6807\u9898\uff1a")}),$(function(){$("body").attr("class")=="nobgc"?$(window).scroll(function(){yy=$(this).scrollTop()-110,$(this).scrollTop()>1030?$(".dr").css({position:"fixed",top:"5px",right:"50%","margin-right":"-480px"}):$(".dr").css({position:"absolute",top:"0",right:"0px","margin-right":"0"})}):$(window).scroll(function(){yy=$(this).scrollTop()-110,$(this).scrollTop()>160?$(".dr").css({position:"fixed",top:"5px",right:"50%","margin-right":"-480px"}):$(".dr").css({position:"absolute",top:"0",right:"0px","margin-right":"0"})})})},detailTryInit:function(){function e(e){return e=parseInt(e),isNaN(e)?0:e}function t(t){var n=0,r=0,i=e(t.style.width),s=e(t.style.height),o=t.offsetWidth,u=t.offsetHeight;while(t.offsetParent)n+=t.offsetLeft+(t.currentStyle?e(t.currentStyle.borderLeftWidth):0),r+=t.offsetTop+(t.currentStyle?e(t.currentStyle.borderTopWidth):0),t=t.offsetParent;return n+=t.offsetLeft+(t.currentStyle?e(t.currentStyle.borderLeftWidth):0),r+=t.offsetTop+(t.currentStyle?e(t.currentStyle.borderTopWidth):0),{x:n,y:r,w:i,h:s,wb:o,hb:u}}function n(){var e,t,n,r;return document.documentElement&&document.documentElement.scrollTop?(e=document.documentElement.scrollTop,t=document.documentElement.scrollLeft,n=document.documentElement.scrollWidth,r=document.documentElement.scrollHeight):document.body&&(e=document.body.scrollTop,t=document.body.scrollLeft,n=document.body.scrollWidth,r=document.body.scrollHeight),{t:e,l:t,w:n,h:r}}function r(e,r){typeof e!="object"&&(e=document.getElementById(e));if(!e)return;var i=this;i.el=e,i.p=t(e),i.s=n(),i.clear=function(){window.clearInterval(i.timer),i.timer=null},i.t=(new Date).getTime(),i.step=function(){var e=(new Date).getTime(),t=(e-i.t)/r;e>=r+i.t?(i.clear(),window.setTimeout(function(){i.scroll(i.p.y,i.p.x)},13)):(st=(-Math.cos(t*Math.PI)/2+.5)*(i.p.y-i.s.t)+i.s.t,sl=(-Math.cos(t*Math.PI)/2+.5)*(i.p.x-i.s.l)+i.s.l,i.scroll(st,sl))},i.scroll=function(e,t){window.scrollTo(t,e)},i.timer=window.setInterval(function(){i.step()},13)}$("#tab_kpinfo").hasClass("current")==1&&$(".dl_comment").show(),$("#lucky li:gt(29)").hide(),$(".write_comment").click(function(){$(".p_tab .tab_wrap a").eq(3).click()}),$(".dl_ndetail .tab_wrap a").click(function(){$(".tryc").hide(),$(".dl_ndetail .tab_wrap a").removeClass("current"),$(this).addClass("current");var e=$(this).attr("name");$(".dl_"+e).show(),e=="comment"?($(".dr").css("position","static"),$(".dl_kpinfo,.review_list,.try_list").hide(),$(".dl_comment,.tryc").show()):e=="kpinfo"?($(".dr").css("position","static"),$(".dl_kpinfo,.dl_comment").show(),$(".review_list,.try_list").hide()):e=="review"?($(".dr").css("position","static"),$(".review_list").show(),$(".dl_kpinfo,.tryc,.dl_comment,.try_list").hide()):e=="trylist"&&($("#lucky li:gt(29)").hide(),$(".dr").css("position","static"),$(".try_list").show(),$(".dl_kpinfo,.tryc,.dl_comment,.review_list").hide())}),$(".try_list .more a").click(function(){$("#lucky li .headpic").children("img[tsrc]").each(function(e){e<30&&$("#lucky li .headpic").children("img[tsrc]").eq(e).attr("src",$("#lucky li .headpic").children("img[tsrc]").eq(e).attr("tsrc")).parent().parent().show()}),$("#lucky li .headpic").children("img[tsrc]:lt(30)").removeAttr("tsrc"),$("#lucky li .headpic").children("img[tsrc]").size()==0&&$(".try_list .more").remove()});var i=$(".p_tab .tab_wrap").attr("default");i>1&&$(".p_tab .tab_wrap a").eq(i-1).click(),$("#lucky li .headpic").children("img[tsrc]").size()==0&&$(".try_list .more").remove()},initScrollToTop:function(){$("body").append('<a id="ScrollToTop" href="#" onclick="return false;"></a>');var e=$("#ScrollToTop");$(window).bind("scroll",function(t){$(window).scrollTop()>=qiku.getHeight()/2?e.show():e.hide()}),e.click(function(){$("html,body").animate({scrollTop:0},100)})},getHeight:function(){return browser.versions.trident?document.compatMode=="CSS1Compat"?document.documentElement.clientHeight:document.body.clientHeight:window.innerHeight},getQueryString:function(e){var t=new RegExp("(^|&)"+e+"=([^&]*)(&|$)","i"),n=window.location.search.substr(1).match(t);return n!=null?unescape(n[2]):null},dialog:function(e){e==-1?$(".popwindow,.sd_overlayBG").hide():$(".popwindow,.sd_overlayBG").show()},reviewPraise:function(e){if(praise.status==1)$(".reviewPraise").addClass("praised"),$(".reviewPraise").html("<span>\u5df2\u8d5e</span>("+parseInt(praise.number)+")");else{var t=e;praise.number==0?$(".reviewPraise").html("<span>\u8d5e</span>"):$(".reviewPraise").html("<span>\u8d5e</span>("+praise.number+")"),$(".reviewPraise").click(function(){QHPass.login(function(){$.post("/try/doPraisePaper",{id:t,qtoken:$(".qtoken").val()},function(e){$(".reviewPraise").addClass("praised"),$(".reviewPraise").html("<span>\u5df2\u8d5e</span>("+(parseInt(praise.number)+1)+")")}),$(".reviewPraise").unbind("click")})})}},reviewPraiseTalent:function(e){if(praise.status==1)$(".reviewPraise").addClass("praised"),$(".reviewdr_top .reviewPraise").html("<span>\u5df2\u8d5e</span>("+parseInt(praise.number)+")"),$(".review_func .reviewPraise").html("<span>\u5df2\u8d5e</span>"+parseInt(praise.number));else{var t=e;praise.number==0?($(".reviewdr_top .reviewPraise").html("<span>\u8d5e</span>"),$(".review_func .reviewPraise").html("<span>\u8d5e</span>")):($(".reviewdr_top .reviewPraise").html("<span>\u8d5e</span>"+praise.number),$(".review_func .reviewPraise").html("<span>\u8d5e</span>"+praise.number)),$(".reviewPraise").click(function(){QHPass.login(function(){$.get("/talent/addpraise",{id:t},function(e){$(".reviewPraise").addClass("praised"),$(".reviewdr_top .reviewPraise").html("<span>\u5df2\u8d5e</span>("+(parseInt(praise.number)+1)+")"),$(".review_func .reviewPraise").html("<span>\u5df2\u8d5e</span>"+(parseInt(praise.number)+1))}),$(".reviewPraise").unbind("click")})})}},reviewPraiseTalent2:function(e){if(praise.status==1)$(".reviewPraise").addClass("praised"),$(".reviewPraise").html("<span>\u5df2\u8d5e</span>("+parseInt(praise.number)+")");else{var t=e;praise.number==0?$(".reviewPraise").html("<span>\u8d5e</span>"):$(".reviewPraise").html("<span>\u8d5e</span>("+praise.number+")"),$(".reviewPraise").click(function(){QHPass.login(function(){$.get("/media/addpraise",{id:t},function(e){$(".reviewPraise").addClass("praised"),$(".reviewPraise").html("<span>\u5df2\u8d5e</span>("+(parseInt(praise.number)+1)+")"),$(".item-praise").html(parseInt(praise.number)+1)}),$(".reviewPraise").unbind("click")})})}},pg:1,commentReply:function(e,t){$("#qikuComment").delegate(".breply","click",function(){$(this).parent().next(".reply").css("display")=="none"?($(this).parent().next(".reply").show(),$(this).parent().next(".reply").children(".rzo").children("textarea").focus()):$(this).parent().next(".reply").css("display")=="block"&&$(this).parent().next(".reply").hide()}),$(".moreComment").click(function(){qiku.getNewCommemt(e,t,qiku.pg+1),qiku.pg++})},commentDel:function(){$("#qikuComment").delegate(".delrcm","click",function(){var e=$(this);confirm("\u786e\u5b9a\u8981\u5220\u9664\u6b64\u6761\u8bc4\u8bba\uff1f")&&$.post("/review/syncmdel",{rid:$(this).attr("rid"),i_id:$(this).attr("item_id"),t_id:$(this).attr("t_id")},function(t){e.parent().parent().parent().remove()})})},setBlock:function(){$("#qikuComment").delegate(".setblk","click",function(){var e=$(this);$.post("/review/syncmblack",{qid:$(this).attr("qid")},function(t){e.parent().parent().parent().remove()})})},writeComment:function(id,tag){$("#writeCommentBtn").click(function(){QHPass.login(function(){if($.trim($("#writeComment").val()).length>200||$.trim($("#writeComment").val()).length<5)$("#review-warn").html('<span style="font-size:12px;font-weight:normal;font-fmaily:simsun!important;float:right;margin-top:8px;color:#ff0000">\u8bc4\u8bba\u5b57\u6570\u5e94\u57285-200\u5b57\u4e4b\u95f4</span>');else{var content=$("#writeComment").val(),item_id=id,tag_major=tag;$.post("/review/syncpls",{content:content,item_id:item_id,tag_major:tag_major,token_:qiku.token_},function(data){$("#qikuComment li:lt("+$("#qikuComment li").last().index()+")").remove(),qiku.getNewCommemt(id,tag,1);var data=eval("("+data+")");data.errno!=0&&$("#review-warn").html('<span style="font-size:12px;font-weight:normal;font-fmaily:simsun!important;float:right;margin-top:8px;color:#ff0000">'+data.errmsg+"</span>")}),$("#writeComment").val("").blur(),$("#review-warn").html("\u8fd8\u53ef\u4ee5\u8f93\u5165<em>200</em>\u5b57")}},{cookie_domains:["1360|360|qikoo"]})})},replyComment:function(id,tag){$(".btn_reply[data-binded!=1]").click(function(){var _this=$(this);QHPass.login(function(){if($.trim(_this.prev("textarea").val()).length>200||$.trim(_this.prev("textarea").val()).length<5)return $(".reply_warn").remove(),_this.after('<span class="reply_warn" style="color:#ff0000;">\u56de\u590d\u5b57\u6570\u5e94\u57285-200\u5b57\u4e4b\u95f4</span>'),!1;var reply_content=_this.prev("textarea").val(),rid=_this.prev("textarea").attr("rid"),item_id=id,tag_major=tag;$.post("/review/synchf",{reply_content:reply_content,rid:rid,item_id:item_id,tag_major:tag_major,token_:qiku.token_},function(data){$("#qikuComment li:lt("+$("#qikuComment li").last().index()+")").remove(),qiku.getNewCommemt(id,tag,1);var data=eval("("+data+")");data.errno!=0&&$("#review-warn").html('<span style="font-size:12px;font-weight:normal;font-fmaily:simsun!important;float:right;margin-top:8px;color:#ff0000">'+data.errmsg+"</span>")})},{cookie_domains:["1360|360|qikoo"]})}).attr("data-binded","1")},getNewCommemt:function(e,t,n){var r=e;$.getJSON("/review/synclist/",{c:t,i:e,p:n,n:10,_t:+(new Date)},function(e){qiku.token_=e.errmsg.token_,e.errmsg.num<10||e.errmsg.allnum<=10?$("#qikuComment").children(".nobdr").hide():(e.errmsg.num=10)&&$("#qikuComment").children(".nobdr").show();if(e.errmsg.num!=0)for(var n=0;n<e.errmsg.num;n++){var i=e.errmsg.data[n].mimageUrl,s=e.errmsg.data[n].imageUrl,o=e.errmsg.data[n].mqname,u=e.errmsg.data[n].qname,a=e.errmsg.data[n].reply_qid,f=e.errmsg.data[n].post_at,l=e.errmsg.data[n].refresh_at,c=e.errmsg.data[n].content+"&nbsp;",h=e.errmsg.data[n].reply_content+"&nbsp;",p=e.errmsg.data[n].id,d=e.errmsg.data[n].item_id,v=e.errmsg.data[n].t_id,m=e.errmsg.data[n].qid,g=e.errmsg.data[n].isadmin,y=e.errmsg.data[n].issuperadmin;a==""?g==0?y==1?$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'</div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a><a href="javascript:void(0);" rid="'+p+'" item_id="'+d+'" t_id="'+v+'" class="delrcm">\u5220\u9664</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'</div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):g==1&&(y==1?$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'<span class="vip" title="\u4ea7\u54c1\u56e2\u961f"></span></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a><a href="javascript:void(0);" rid="'+p+'" item_id="'+d+'" t_id="'+v+'" class="delrcm">\u5220\u9664</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'<span class="vip" title="\u4ea7\u54c1\u56e2\u961f"></span></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>')):g==1?y==1?$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'<span class="vip" title="\u4ea7\u54c1\u56e2\u961f"></span></div><div class="quote"><span class="time">'+u+"\u53d1\u8868\u4e8e "+l+'</span><div class="con">'+h+'</div></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a><a href="javascript:void(0);" rid="'+p+'" item_id="'+d+'" t_id="'+v+'" class="delrcm">\u5220\u9664</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'<span class="vip" title="\u4ea7\u54c1\u56e2\u961f"></span></div><div class="quote"><span class="time">'+u+"\u53d1\u8868\u4e8e "+l+'</span><div class="con">'+h+'</div></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):g==0&&(y==1?$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'</div><div class="quote"><span class="time">'+u+"\u53d1\u8868\u4e8e "+l+'</span><div class="con">'+h+'</div></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a><a href="javascript:void(0);" rid="'+p+'" item_id="'+d+'" t_id="'+v+'" class="delrcm">\u5220\u9664</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'</div><div class="quote"><span class="time">'+u+"\u53d1\u8868\u4e8e "+l+'</span><div class="con">'+h+'</div></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'))}else $(".moreComment").parent().hide();qiku.replyComment(r,t,qiku.pg),$(".review_comment h3").text("\u8bc4\u8bba("+e.errmsg.allnum+")"),$("#tab_comment").text("\u8bc4\u8bba("+e.errmsg.allnum+")"),$(".tab_comment_num").text(e.errmsg.allnum)})},getNewMyCommemt:function(e,t,n){var r=e;$.getJSON("/review/syncmylist/",{c:t,i:e,p:n,n:10,_t:+(new Date)},function(e){qiku.token_=e.errmsg.token_,e.errmsg.num<10||e.errmsg.allnum<=10?$("#qikuComment").children(".nobdr").hide():(e.errmsg.num=10)&&$("#qikuComment").children(".nobdr").show();if(e.errmsg.num!=0)for(var n=0;n<e.errmsg.num;n++){var i=e.errmsg.data[n].mimageUrl,s=e.errmsg.data[n].imageUrl,o=e.errmsg.data[n].mqname,u=e.errmsg.data[n].qname,a=e.errmsg.data[n].reply_qid,f=e.errmsg.data[n].post_at,l=e.errmsg.data[n].refresh_at,c=e.errmsg.data[n].content+"&nbsp;",h=e.errmsg.data[n].reply_content+"&nbsp;",p=e.errmsg.data[n].id,d=e.errmsg.data[n].item_id,v=e.errmsg.data[n].t_id,m=e.errmsg.data[n].qid,g=e.errmsg.data[n].isadmin,y=e.errmsg.data[n].issuperadmin;a==""?g==0?y==1?$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'</div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a><a href="javascript:void(0);" rid="'+p+'" item_id="'+d+'" t_id="'+v+'" class="delrcm">\u5220\u9664</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'</div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):g==1&&(y==1?$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'<span class="vip" title="\u4ea7\u54c1\u56e2\u961f"></span></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a><a href="javascript:void(0);" rid="'+p+'" item_id="'+d+'" t_id="'+v+'" class="delrcm">\u5220\u9664</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'<span class="vip" title="\u4ea7\u54c1\u56e2\u961f"></span></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>')):g==1?y==1?$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'<span class="vip" title="\u4ea7\u54c1\u56e2\u961f"></span></div><div class="quote"><span class="time">'+u+"\u53d1\u8868\u4e8e "+l+'</span><div class="con">'+h+'</div></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a><a href="javascript:void(0);" rid="'+p+'" item_id="'+d+'" t_id="'+v+'" class="delrcm">\u5220\u9664</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'<span class="vip" title="\u4ea7\u54c1\u56e2\u961f"></span></div><div class="quote"><span class="time">'+u+"\u53d1\u8868\u4e8e "+l+'</span><div class="con">'+h+'</div></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+
o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):g==0&&(y==1?$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'</div><div class="quote"><span class="time">'+u+"\u53d1\u8868\u4e8e "+l+'</span><div class="con">'+h+'</div></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a><a href="javascript:void(0);" rid="'+p+'" item_id="'+d+'" t_id="'+v+'" class="delrcm">\u5220\u9664</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'):$("#qikuComment li").last().before('<li><div class="pic"><img src="'+i+'" alt="'+o+'" title="'+o+'" /></div><div class="txt"><div class="nick">'+o+'</div><div class="quote"><span class="time">'+u+"\u53d1\u8868\u4e8e "+l+'</span><div class="con">'+h+'</div></div><div class="content">'+c+'</div><div class="info"><span class="time">'+f+'</span><a href="javascript:void(0);" class="breply" title="\u56de\u590d">\u56de\u590d</a></div><div class="reply"><div class="cor"></div><div class="rto">\u56de\u590d\uff1a'+o+'</div><div class="rzo"><textarea rid="'+p+'"></textarea><a href="javascript:void(0);" class="btn_reply" title="\u56de\u590d">\u56de\u590d</a></div></div></div></li>'))}else $(".moreComment").parent().hide();qiku.replyComment(r,t,qiku.pg),$(".review_comment h3").text("\u8bc4\u8bba("+e.errmsg.allnum+")"),$("#tab_comment").text("\u8bc4\u8bba("+e.errmsg.allnum+")"),$(".tab_comment_num").text(e.errmsg.allnum)})}}}();