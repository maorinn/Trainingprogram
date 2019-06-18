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
<div class="row"><div class="col-lg-9 col-xs-12"><ol class="breadcrumb">
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="index.jsp" itemprop="url">
			<span itemprop="title">
				主页
			</span>
		</a>
	</li>
	<li component="breadcrumb/current" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="active">
		
			<span itemprop="title">注册</span>
	</li>
	
</ol><div class="row register">
	<div class="col-md-12">
		<div class="register-block">
			<div class="alert alert-danger hidden" id="register-error-notify">
				<strong>注册错误</strong>
				<p></p>
			</div>
			<form component="register/local" class="form-horizontal" role="form" action="RegisterServLet" method="post">
				<div class="form-group">
					<label class="col-lg-4 control-label">电子邮箱地址</label>
					<div class="col-lg-8">
						<input class="form-control" type="email" placeholder="输入电子邮箱地址" name="email" id="email" autocorrect="off" autocapitalize="off">
						<span class="register-feedback" id="email-notify"></span>
						<span class="help-block">默认情况下，您的电子邮箱不会公开。</span>
					</div>
				</div>
				<div class="form-group">
					<label for="username" class="col-lg-4 control-label">用户名</label>
					<div class="col-lg-8">
						<input class="form-control" type="text" placeholder="输入用户名" name="username" id="username" autocorrect="off" autocapitalize="off" autocomplete="off">
						<span class="register-feedback" id="username-notify"></span>
						<span class="help-block">全局唯一的用户名，长度 4 到 16 个字。其他人可以使用 @<span id="yourUsername">用户名</span> 提及您。</span>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-lg-4 control-label">密码</label>
					<div class="col-lg-8">
						<input class="form-control" type="password" placeholder="输入密码" name="password" id="password">
						<span class="register-feedback" id="password-notify"></span>
						<span class="help-block">您的密码长度必须不少于 4 个字。</span>
					</div>
				</div>
				<div class="form-group">
					<label for="password-confirm" class="col-lg-4 control-label">确认密码</label>
					<div class="col-lg-8">
						<input class="form-control" type="password" placeholder="再次输入密码" name="password-confirm" id="password-confirm">
						<span class="register-feedback" id="password-confirm-notify"></span>
					</div>
				</div>

				
				

				<div class="form-group">
					<div class="col-lg-offset-4 col-lg-8">
						<button class="btn btn-primary btn-lg btn-block" id="register" type="submit">立即注册</button>
					</div>
				</div>
				<input id="referrer" type="hidden" name="referrer" value="https://bbs.liyuans.com/">
				<input id="token" type="hidden" name="token" value="">
				<input id="noscript" type="hidden" name="noscript" value="false">
				<input type="hidden" name="_csrf" value="Oskxse9g-bNI1fUldtQvC5A5o0Cg3nKsWdL8">
			</form>
		</div>
	</div>

	
</div><div class="row"><div widget-area="footer" class="col-xs-12"><script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="https://hm.baidu.com/hm.js?95731d6ab408037d083d19564d0818c4";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script> </div></div></div><div widget-area="sidebar" class="col-lg-3 col-xs-12">  <div class="panel panel-primary"> 
   <div class="panel-heading"> 
    <h3 class="panel-title">赞助商广告</h3> 
   </div> 
   <div class="panel-body">
    <div class=""> 
     <a href="https://www.simcentric.com/sc/promos/jun-promo/?utm_source=ly&amp;utm_medium=2019june" target="_blank"><img src="https://bbs.liyuans.com/assets/uploads/files/20190530_junepromobanner_300x250.jpg" style="width:100%;" class="img-responsive"></a> 
    </div> 
   </div> 
  </div>    <div class="panel panel-primary"> 
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
  </div>  <div class="panel panel-primary"><div class="panel-heading"><h3 class="panel-title">板块</h3></div><div class="panel-body">
<ul class="categories-list">
	<li>
		
		<h4><a href="/category/7/交易">交易</a></h4>
		
		<p></p><p>买卖租等（本论坛主力区域）</p>
<p></p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/22/post">教程及信息</a></h4>
		
		<p></p><p>仅允许 重大信息 或 教程发布</p>
<p></p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/16/post">主机测评及优惠</a></h4>
		
		<p></p><p>主机优惠/测评/AFF信息专区</p>
<p></p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/23/post">商家 Offer</a></h4>
		
		<p></p><p>商家官方 Offer 发布地</p>
<p></p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/12/一般讨论">一般讨论</a></h4>
		
		<p></p><p>主要是水</p>
<p></p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/5/站点公告">站点公告</a></h4>
		
		<p></p><p>论坛官方信息发布</p>
<p></p>
	</li>
</ul>

<ul class="categories-list">
	<li>
		
		<h4><a href="/category/14/站点问题">站点问题</a></h4>
		
		<p></p><p>论坛使用问题反馈</p>
<p></p>
	</li>
</ul>
</div></div></div></div>
</div>
</body>
</html>