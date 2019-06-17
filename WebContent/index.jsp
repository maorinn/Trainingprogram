<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN" data-dir="ltr" style="direction: ltr;"  >
<head>
	<title>梨园 | 主机讨论</title>
	<meta name="viewport" content="width&#x3D;device-width, initial-scale&#x3D;1.0" />
	<meta name="content-type" content="text/html; charset=UTF-8" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="mobile-web-app-capable" content="yes" />
	<meta property="og:site_name" content="梨园" />
	<meta name="msapplication-badge" content="frequency=30; polling-uri=https://bbs.liyuans.com/sitemap.xml" />
	<meta name="keywords" content="主机讨论,VPS,独立服务器" />
	<meta name="title" content="梨园" />
	<meta property="og:type" content="website" />
	<meta property="og:image" content="https://bbs.liyuans.com/assets/logo.png" />
	<meta property="og:image:url" content="https://bbs.liyuans.com/assets/logo.png" />
	<meta property="og:image:width" content="128" />
	<meta property="og:image:height" content="128" />
	<meta property="og:title" content="梨园" />
	<meta property="og:url" content="https://bbs.liyuans.com" />
	<meta name="description" content="主机讨论" />
	<meta property="og:description" content="主机讨论" />
	
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./assets/client-flatly.css" />
	<link rel="stylesheet" href="./assets/styles.css" />
	

	<script>
		var RELATIVE_PATH = "";
		var config = JSON.parse('{"relative_path":"","upload_url":"/assets/uploads","siteTitle":"\u68A8\u56ED","browserTitle":"\u4E3B\u673A\u8BA8\u8BBA","titleLayout":"&#123;pageTitle&#125; | &#123;browserTitle&#125;","showSiteTitle":true,"minimumTitleLength":3,"maximumTitleLength":255,"minimumPostLength":4,"maximumPostLength":32767,"minimumTagsPerTopic":1,"maximumTagsPerTopic":5,"minimumTagLength":1,"maximumTagLength":20,"useOutgoingLinksPage":true,"allowGuestHandles":true,"allowFileUploads":true,"allowTopicsThumbnail":false,"usePagination":true,"disableChat":false,"disableChatMessageEditing":true,"maximumChatMessageLength":100,"socketioTransports":["polling","websocket"],"socketioOrigins":"https://bbs.liyuans.com:*","websocketAddress":"","maxReconnectionAttempts":5,"reconnectionDelay":1500,"topicsPerPage":20,"postsPerPage":50,"maximumFileSize":10240,"theme:id":"nodebb-theme-persona","theme:src":"https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/flatly/bootstrap.min.css","defaultLang":"zh-CN","userLang":"zh-CN","loggedIn":false,"uid":0,"cache-buster":"v=dbfsljii2ss","requireEmailConfirmation":true,"topicPostSort":"oldest_to_newest","categoryTopicSort":"newest_to_oldest","csrf_token":"WNKGti8g-N2DZk5Wno674jLwoSkas1-AE570","searchEnabled":true,"bootswatchSkin":"flatly","enablePostHistory":true,"notificationAlertTimeout":5000,"timeagoCodes":["af","ar","az-short","az","bg","bs","ca","cs","cy","da","de-short","de","dv","el","en-short","en","es-short","es","et","eu","fa-short","fa","fi","fr-short","fr","gl","he","hr","hu","hy","id","is","it-short","it","ja","jv","ko","ky","lt","lv","mk","nl","no","pl","pt-br-short","pt-br","pt-short","pt","ro","rs","ru","rw","si","sk","sl","sr","sv","th","tr-short","tr","uk","uz","vi","zh-CN","zh-TW"],"outgoingLinksWhitelist":"liyuans.com,t.me","timeagoCutoff":30,"cookies":{"enabled":false,"message":"[[global:cookies.message]]","dismiss":"[[global:cookies.accept]]","link":"[[global:cookies.learn_more]]"},"acpLang":"zh-CN","topicSearchEnabled":false,"hideSubCategories":true,"hideCategoryLastPost":false,"enableQuickReply":true,"composer-default":{},"markdown":{"highlight":1,"highlightLinesLanguageList":[""],"theme":"railscasts.css"}}');
		var app = {
			template: "categories",
			user: JSON.parse('{"uid":0,"username":"游客","userslug":"","fullname":"游客","email":"","icon:text":"?","icon:bgColor":"#aaa","groupTitle":"","status":"offline","reputation":0,"email:confirmed":false,"postcount":0,"topiccount":0,"profileviews":0,"banned":0,"banned:expire":0,"joindate":0,"lastonline":0,"lastposttime":0,"followingCount":0,"followerCount":0,"picture":"https://www.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427e?size=192&d=monsterid","groupTitleArray":[],"joindateISO":"","lastonlineISO":"","banned_until":0,"banned_until_readable":"Not Banned","unreadData":{"":{},"new":{},"watched":{},"unreplied":{}},"isAdmin":false,"isGlobalMod":false,"isMod":false,"privileges":{"chat":false,"upload:post:image":false,"upload:post:file":false,"search:content":true,"search:users":false,"search:tags":true,"view:users":true,"view:tags":true,"view:groups":false},"offline":true,"isEmailConfirmSent":false}')
		};
	</script>

	
	
</head>

<body class="page-categories page-status-200 skin-flatly">
	<nav id="menu" class="slideout-menu hidden">
		<div class="menu-profile">
	
</div>

<section class="menu-section" data-section="navigation">
	<h3 class="menu-section-title">导航</h3>
	<ul class="menu-section-list"></ul>
</section>


	</nav>
	<nav id="chats-menu" class="slideout-menu hidden">
		
	</nav>

	<main id="panel" class="slideout-panel">
		<c:import url="head.jsp"></c:import> 
		<div class="container" id="content">
			<noscript>
		<div class="alert alert-danger">
			<p>
				Your browser does not seem to support JavaScript. As a result, your viewing experience will be diminished, and you may not be able to execute some actions.
			</p>
			<p>
				Please download a browser that supports JavaScript, or enable it if it's disabled (i.e. NoScript).
			</p>
		</div>
	</noscript>

<div widget-area="header">
	
</div>
<div class="row">
	<div class="col-lg-9 col-sm-12">
		<h1 class="categories-title">版块</h1>
		<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
			
			<li component="categories/category" data-cid="7" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="交易">

	<div class="content col-xs-12 col-md-7 col-sm-9">
		<div class="icon pull-left" style="background-color: #66ccff; color: #fff;">
			
		</div>

		<h2 class="title">
			

<a href="/category/7/交易" itemprop="url">

交易
</a>

		</h2>
		<div>
			
			<div class="description">
				<p>买卖租等（本论坛主力区域）</p>

			</div>
			
			
		</div>
		<span class="visible-xs pull-right">
			
			<a class="permalink" href="/post/2491">
				<small class="timeago" title="2019-06-13T09:43:14.108Z"></small>
			</a>
			
		</span>
	</div>

	
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="709">709</span><br />
		<small>主题</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="1941">1941</span><br />
		<small>帖子</small>
	</div>
	
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<div class="card" style="border-color: #66ccff">
	
	
	<div component="category/posts">
		<p>
			<a href="/user/methol">
				
				<img class="user-img" title="methol" alt="methol" src="https://www.gravatar.com/avatar/84212707f5fa0d3884b8a025c4ec0ecb?size=192&d=monsterid">
				
			</a>
			<a class="permalink" href="/topic/864/post/2">
				<small class="timeago" title="2019-06-13T09:43:14.108Z"></small>
			</a>
		</p>
		<div class="post-content">
			这不是1TB？

		</div>
	</div>
	
	

	
</div>

	</div>
	
	
</li>

			
			<li component="categories/category" data-cid="22" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="教程及信息">

	<div class="content col-xs-12 col-md-7 col-sm-9">
		<div class="icon pull-left" style="background-color: #86C1B9; color: #333;">
			
		</div>

		<h2 class="title">
			

<a href="/category/22/post" itemprop="url">

教程及信息
</a>

		</h2>
		<div>
			
			<div class="description">
				<p>仅允许 重大信息 或 教程发布</p>

			</div>
			
			
		</div>
		<span class="visible-xs pull-right">
			
			<a class="permalink" href="/post/2388">
				<small class="timeago" title="2019-06-10T15:53:22.603Z"></small>
			</a>
			
		</span>
	</div>

	
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="9">9</span><br />
		<small>主题</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="27">27</span><br />
		<small>帖子</small>
	</div>
	
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<div class="card" style="border-color: #86C1B9">
	
	
	<div component="category/posts">
		<p>
			<a href="/user/leonn">
				
				<img class="user-img" title="Leonn" alt="Leonn" src="https://i.loli.net/2019/05/05/5ccefd2a9b833.jpeg">
				
			</a>
			<a class="permalink" href="/topic/812/post/1">
				<small class="timeago" title="2019-06-10T15:53:22.603Z"></small>
			</a>
		</p>
		<div class="post-content">
			
全文转自 EQBLOG 大佬在 Hostloc 发布的帖子

js2py是一个可以让你在python执行JavaScript脚本的库，非常的好玩。
比如  你可以这样写
import js2py

js=js2py.EvalJs()
js.execute(&quot;function writeMessage(){return 'message'}&quot;)
get_return=js.writeMessage()

print(get_return)

这样就可以获取到了JavaScript里边的返回值了，有啥用呢，就是可以让你在写爬虫的时候把包含加密函数的js文件直接加载，然后运行即可。比如loc：
你可以这样写：
def retrun_cookie():
    js=js2py.EvalJs()

    aesjs=requests.get(&quot;https://www.hostloc.com/aes.min.js&quot;,timeout=5).text
    js.execute(aesjs)
    getcookie=requests.get(&quot;https://www.hostloc.com/&quot;).text
    getcookie_script=re.findall(&quot;&lt;script&gt;(.*?)&lt;/script&gt;&quot;,getcookie)
    js.execute(getcookie_script[0].split(&quot;document&quot;)[0])
    data=js.toHex(js.slowAES.decrypt(js.c, 2, js.a, js.b))
    cookie=&quot;L7FW=&quot;+data
    return cookie

当然使用这个cookie的时候，你得写到header头里面，并且得访问一次https://www.hostloc.com/?d=1
loc登陆的时候需要一个loginhash才能正确登陆。
emm为什么不给完整脚本呢，因为现在好像把检测关了，没法写了

然后附一个爬91的小脚本，总所周知91加密了  拿js加密的
需要安装python3+requests+js2py
小附件

Github地址：https://github.com/eqblog/


		</div>
	</div>
	
	

	
</div>

	</div>
	
	
</li>

			
			<li component="categories/category" data-cid="16" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="主机测评及优惠">

	<div class="content col-xs-12 col-md-7 col-sm-9">
		<div class="icon pull-left" style="background-color: #F7CA88; color: #333;">
			
		</div>

		<h2 class="title">
			

<a href="/category/16/post" itemprop="url">

主机测评及优惠
</a>

		</h2>
		<div>
			
			<div class="description">
				<p>主机优惠/测评/AFF信息专区</p>

			</div>
			
			
		</div>
		<span class="visible-xs pull-right">
			
			<a class="permalink" href="/post/2439">
				<small class="timeago" title="2019-06-12T03:20:27.080Z"></small>
			</a>
			
		</span>
	</div>

	
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="31">31</span><br />
		<small>主题</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="62">62</span><br />
		<small>帖子</small>
	</div>
	
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<div class="card" style="border-color: #F7CA88">
	
	
	<div component="category/posts">
		<p>
			<a href="/user/yiwu">
				
				<img class="user-img" title="yiwu" alt="yiwu" src="https://www.gravatar.com/avatar/8ed9a1015305c0ff320600e917bebc4e?size=192&d=monsterid">
				
			</a>
			<a class="permalink" href="/topic/792/post/4">
				<small class="timeago" title="2019-06-12T03:20:27.080Z"></small>
			</a>
		</p>
		<div class="post-content">
			性价比可以，本人使用能够在任何时间段保证流畅看1080p的YouTube节目

		</div>
	</div>
	
	

	
</div>

	</div>
	
	
</li>

			
			<li component="categories/category" data-cid="23" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="商家 Offer">

	<div class="content col-xs-12 col-md-7 col-sm-9">
		<div class="icon pull-left" style="background-color: #AB4642; color: #fff;">
			
		</div>

		<h2 class="title">
			

<a href="/category/23/post" itemprop="url">

商家 Offer
</a>

		</h2>
		<div>
			
			<div class="description">
				<p>商家官方 Offer 发布地</p>

			</div>
			
			
		</div>
		<span class="visible-xs pull-right">
			
			<a class="permalink" href="/post/1772">
				<small class="timeago" title="2019-05-27T04:04:31.076Z"></small>
			</a>
			
		</span>
	</div>

	
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="4">4</span><br />
		<small>主题</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="17">17</span><br />
		<small>帖子</small>
	</div>
	
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<div class="card" style="border-color: #AB4642">
	
	
	<div component="category/posts">
		<p>
			<a href="/user/drcai">
				
				<img class="user-img" title="drcai" alt="drcai" src="https://i.loli.net/2019/05/05/5cce1a4ee7e10.jpeg">
				
			</a>
			<a class="permalink" href="/topic/524/post/5">
				<small class="timeago" title="2019-05-27T04:04:31.076Z"></small>
			</a>
		</p>
		<div class="post-content">
			独立IP版目前只有济南移动机房了 …
河南 山东NAT 均有货…
上海 CN2 预计 6月中旬再补货了 .

		</div>
	</div>
	
	

	
</div>

	</div>
	
	
</li>

			
			<li component="categories/category" data-cid="12" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="一般讨论">

	<div class="content col-xs-12 col-md-7 col-sm-9">
		<div class="icon pull-left" style="background-color: #86C1B9; color: #333;">
			
		</div>

		<h2 class="title">
			

<a href="/category/12/一般讨论" itemprop="url">

一般讨论
</a>

		</h2>
		<div>
			
			<div class="description">
				<p>主要是水</p>

			</div>
			
			
		</div>
		<span class="visible-xs pull-right">
			
			<a class="permalink" href="/post/2405">
				<small class="timeago" title="2019-06-11T07:48:34.007Z"></small>
			</a>
			
		</span>
	</div>

	
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="27">27</span><br />
		<small>主题</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="164">164</span><br />
		<small>帖子</small>
	</div>
	
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<div class="card" style="border-color: #86C1B9">
	
	
	<div component="category/posts">
		<p>
			<a href="/user/mrwangzhe">
				
				<img class="user-img" title="mrwangzhe" alt="mrwangzhe" src="https://www.gravatar.com/avatar/c2b84726cc4824feb512ef9b75b54a3f?size=192&d=monsterid">
				
			</a>
			<a class="permalink" href="/topic/794/post/3">
				<small class="timeago" title="2019-06-11T07:48:34.007Z"></small>
			</a>
		</p>
		<div class="post-content">
			@Leonn 用了都没人说一声 差评

		</div>
	</div>
	
	

	
</div>

	</div>
	
	
</li>

			
			<li component="categories/category" data-cid="5" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="站点公告">

	<div class="content col-xs-12 col-md-7 col-sm-9">
		<div class="icon pull-left" style="background-color: #ff6f00; color: #000000;">
			
		</div>

		<h2 class="title">
			

<a href="/category/5/站点公告" itemprop="url">

站点公告
</a>

		</h2>
		<div>
			
			<div class="description">
				<p>论坛官方信息发布</p>

			</div>
			
			
		</div>
		<span class="visible-xs pull-right">
			
			<a class="permalink" href="/post/2384">
				<small class="timeago" title="2019-06-10T15:11:13.540Z"></small>
			</a>
			
		</span>
	</div>

	
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="28">28</span><br />
		<small>主题</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="124">124</span><br />
		<small>帖子</small>
	</div>
	
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<div class="card" style="border-color: #ff6f00">
	
	
	<div component="category/posts">
		<p>
			<a href="/user/leonn">
				
				<img class="user-img" title="Leonn" alt="Leonn" src="https://i.loli.net/2019/05/05/5ccefd2a9b833.jpeg">
				
			</a>
			<a class="permalink" href="/topic/448/post/4">
				<small class="timeago" title="2019-06-10T15:11:13.540Z"></small>
			</a>
		</p>
		<div class="post-content">
			upup

		</div>
	</div>
	
	

	
</div>

	</div>
	
	
</li>

			
			<li component="categories/category" data-cid="14" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="站点问题">

	<div class="content col-xs-12 col-md-7 col-sm-9">
		<div class="icon pull-left" style="background-color: #AB4642; color: #fff;">
			
		</div>

		<h2 class="title">
			

<a href="/category/14/站点问题" itemprop="url">

站点问题
</a>

		</h2>
		<div>
			
			<div class="description">
				<p>论坛使用问题反馈</p>

			</div>
			
			
		</div>
		<span class="visible-xs pull-right">
			
			<a class="permalink" href="/post/1849">
				<small class="timeago" title="2019-05-28T16:27:29.140Z"></small>
			</a>
			
		</span>
	</div>

	
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="7">7</span><br />
		<small>主题</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="26">26</span><br />
		<small>帖子</small>
	</div>
	
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<div class="card" style="border-color: #AB4642">
	
	
	<div component="category/posts">
		<p>
			<a href="/user/kirito">
				
				<img class="user-img" title="Kirito" alt="Kirito" src="https://www.gravatar.com/avatar/62969a94032fa39b0e018acb4c57e866?size=192&d=monsterid">
				
			</a>
			<a class="permalink" href="/topic/614/post/5">
				<small class="timeago" title="2019-05-28T16:27:29.140Z"></small>
			</a>
		</p>
		<div class="post-content">
			不要见到风就是雨

		</div>
	</div>
	
	

	
</div>

	</div>
	
	
</li>

			
		</ul>
	</div>
	<div widget-area="sidebar" class="col-lg-3 col-sm-12 ">
		
		  <div class="panel panel-primary"> 
   <div class="panel-heading"> 
    <h3 class="panel-title">赞助商广告</h3> 
   </div> 
   <div class="panel-body">
    <div class=""> 
     <a href="https://www.simcentric.com/sc/promos/jun-promo/?utm_source=ly&utm_medium=2019june" target="_blank"><img src="https://bbs.liyuans.com/assets/uploads/files/20190530_junepromobanner_300x250.jpg"  style="width:100%;" /></a> 
    </div> 
   </div> 
  </div>  
		
		  <div class="panel panel-primary"> 
   <div class="panel-heading"> 
    <h3 class="panel-title">广告位</h3> 
   </div> 
   <div class="panel-body">
    <div class="row forum-stats"> 
<div class="row">
 <ul>
     <li> 广告位招租 </li>
     <li>点击 <a href="http://shop.ixh.me/cart.php?gid=2" target="_blank">了解详情</a>  </li>
</ul>
</div>
    </div> 
   </div> 
  </div>  
		
		<div class="panel panel-primary"><div class="panel-heading"><h3 class="panel-title">板块</h3></div><div class="panel-body">
<ul class="categories-list">
	<li>
		
		<h4><a href="/category/7/交易">交易</a></h4>
		
		<p><p>买卖租等（本论坛主力区域）</p>
</p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/22/post">教程及信息</a></h4>
		
		<p><p>仅允许 重大信息 或 教程发布</p>
</p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/16/post">主机测评及优惠</a></h4>
		
		<p><p>主机优惠/测评/AFF信息专区</p>
</p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/23/post">商家 Offer</a></h4>
		
		<p><p>商家官方 Offer 发布地</p>
</p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/12/一般讨论">一般讨论</a></h4>
		
		<p><p>主要是水</p>
</p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/5/站点公告">站点公告</a></h4>
		
		<p><p>论坛官方信息发布</p>
</p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/14/站点问题">站点问题</a></h4>
		
		<p><p>论坛使用问题反馈</p>
</p>
	</li>
</ul>
</div></div>
		
	</div>
</div>

	


	<script defer src="/assets/nodebb.min.js?v=dbfsljii2ss"></script>

	
	

	<div class="hide">
	</div>
</body>
</html>
