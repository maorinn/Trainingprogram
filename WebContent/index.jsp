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

	<style type="text/css">
				#input1:hover{
				
				}
			</style>
	
</head>

<c:if test="${list==null }">

<c:redirect url="DisplaySevrlet"/>

</c:if>



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

	<div class=" col-sm-12">
	<div style="height:45px;">
	<!-- 没有登陆 -->
	    <c:if test="${user==null}" >
		<button  id='input1' value="登入以发表" style="width:100px;height:45px;background-color:#1a242f;color:#fff;border-radius: 5px; " ><a href="login.jsp">登陆以发表</a></button>
	    </c:if>
	<!-- 登陆了 -->
	
	<c:if test="${user!=null }">
	<form action="">
<input type="button" id='input1' value="新帖子" style="width:100px;height:45px;background-color:#1a242f;color:#fff;border-radius: 5px; " onclick="hpsb()" >
</form>
	</c:if>

</div>
<hr>
		<h1 class="categories-title">帖子列表</h1>
		<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
		<c:forEach var="post" items="${list }" >
		<!-- 循环遍历帖子 -->
		
		
	
		<li component="categories/category" data-cid="7" data-numRecentReplies="1" class="row clearfix">
	<div class="content col-xs-12 col-md-7 col-sm-9" style="width:430px">
		<div class="icon pull-left" style="background-color: #66ccff; color: #fff;">
			<!-- 显示头像 -->
		</div>
		<h2 class="title">
<a href="PostMine?postid=${post.id }" itemprop="url">
<!-- 显示标题 -->
${post.title }
</a>
		</h2>
		<div>
			<div class="description">
				<div style="background-color: #f3f6f6;width:80px;height:25px;padding-left: 3px;padding-top: 4px; float: left;padding-left:9px"><a href="" style="opacity:1">关键字搜索</a></div>
               <div style="float: left;padding-top: 4px;padding-left: 11px;">
                <span>${post.time }</span>&nbsp&nbsp&nbsp&nbsp
                <a href="">${post.username }</a>
                </div>
			</div>
			
			
		</div>

	</div>

	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="709">0</span><br />
		<small>赞同</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="709">7</span><br />
		<small>帖子</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="unread human-readable-number" title="1941">1941</span><br />
		<small>浏览</small>
	</div>
	
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser" style="width:140px">
		<div class="card"  style="border-color: #66ccff" id="card">
	
	
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
	</c:forEach>
	</div>
	
	<div component="pagination" class="text-center pagination-container">
	<ul class="pagination hidden-xs">
	    <c:if test="${page-1>=1 }">
	        <!-- <li class="previous pull-left disabled"> -->
	        <li class="previous pull-left">
			    <a href="DisplaySevrlet?page=${page-1 }" data-page="1"><i class="fa fa-chevron-left"></i> </a>
		    </li> 
		</c:if>
			
			<c:forEach var="i" begin="1" end="${maxPage }">
			<li class="page">
				<a href="DisplaySevrlet?page=${i }" data-page="10">${i }</a>
			</li>
			</c:forEach>
			
			
         <c:if test="${page+1<=maxPage}">
			<li class="next pull-right">
			<a href="DisplaySevrlet?page=${page+1 }" data-page="2"> <i class="fa fa-chevron-right"></i></a>
		    </li>
		</c:if>
		
	</ul>

</div>
	


	<script defer src="/assets/nodebb.min.js?v=dbfsljii2ss"></script>
	<div class="hide">
	</div>
	
	
	

	
	<div component="composer" class="composer resizable" data-uuid="d75c9974-c60b-4512-a3f5-5ab2efb9cdbc" style="top:72.6124%;" id='i'>

	<div class="composer-container">
		<nav class="navbar navbar-fixed-top mobile-navbar hidden-md hidden-lg">
			<div class="btn-group">
				<button class="btn btn-sm btn-primary composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i></button>
				<button class="btn btn-sm btn-primary composer-minimize" data-action="minimize" tabindex="-1"><i class="fa fa-minus"></i></button>
			</div>
			
			<div class="category-name-container">
				<span class="category-name">交易</span> <i class="fa fa-sort"></i>
			</div>
			
			
			<div class="btn-group">
				<button class="btn btn-sm btn-primary composer-submit" data-action="post" tabindex="-1"><i class="fa fa-chevron-right"></i></button>
			</div>
		</nav>
		<form action="MessageServlet" method="post">
		<div class="row title-container">
			
			<div>
				
				<input class="title form-control" type="text" tabindex="1" name="title" placeholder="在此输入您主题的标题..." value="">
				
				<ul class="dropdown-menu quick-search-results hidden">
					

				</ul>
			</div>

			
			<div class="category-list-container hidden-sm hidden-xs"><div component="category-selector" class="btn-group pull-right dropup">
	
	<div component="category-selector-search" class="hidden">
		<input type="text" class="form-control" autocomplete="off">
	</div>
	
</div></div>
			

			<div class="pull-right draft-icon"></div>

			
		</div>



		<div class="row write-preview-container">
			<div class="write-container">
				<div class="help-text">
					<span class="help">编写帮助 <i class="fa fa-question-circle"></i></span>
				</div>
				<div class="pull-right draft-icon hidden-md hidden-lg"></div>
				<!-- <textarea class="write" tabindex="4" dir="ltr"></textarea> -->
				<input type="text" class="write" name="mine">
				
				<input type="text" name="userid" style="display:none" value="${user.username }">
			</div>

		</div>

		<div class="btn-group pull-right action-bar hidden-sm hidden-xs">
				<button class="btn btn-default composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i> 撤销</button>

				<button type="submit" class="btn btn-primary composer-submit" tabindex="6"><i class="fa fa-check"></i> 提交</button>
			</form>
			</div>
		<div class="tag-row">
			<div class="tags-container">
				<div class="btn-group dropup hidden" component="composer/tag/dropdown">
					<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">
						<span class="visible-sm-inline visible-md-inline visible-lg-inline"><i class="fa fa-tags"></i></span>
						<span class="caret"></span>
					</button>
				</div>
				
		</div>
	</div>
</div>
	
	
	
	
	<script type="text/javascript">
	
	function rgb () {
	 	var a=parseInt(Math.random()*255);
	 	var b=parseInt(Math.random()*255);
	 	var c=parseInt(Math.random()*255);
	 	return "rgb("+a+","+b+","+c+")"
	 }
	 function function_name () {
		 
	 	 var d=document.getElementById('card'); 
	 	var i=document.getElementById('i');
	 	i.style.visibility="hidden";
	    d.style.borderColor=rgb();
	 	/*d.style.backgroundColor=rgb();
	 	d.style.color=rgb();*/
	 	
	 }
	 function hpsb (){
		var i=document.getElementById('i');
		i.style.visibility="visible";
		
	 }
	 
	function_name();
			</script>
			
			
</body>
</html>
