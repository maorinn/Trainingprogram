<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<body>







<c:import url="head.jsp"></c:import> 
<main id="panel" class="slideout-panel" style="padding-top: 11px;">
		<nav class="navbar navbar-default navbar-fixed-top header" id="header-menu" component="navbar" style="">
			<div class="container">
							<div class="navbar-header">
				<button type="button" class="navbar-toggle pull-left" id="mobile-menu">
					<span component="notifications/icon" class="notification-icon fa fa-fw fa-bell-o unread-count" data-content="0"></span>
					<i class="fa fa-lg fa-fw fa-bars"></i>
				</button>
				<button type="button" class="navbar-toggle" id="mobile-chats">
					<span component="chat/icon" class="notification-icon fa fa-fw fa-comments unread-count" data-content="0"></span>
					<i class="fa fa-lg fa-comment-o"></i>
				</button>

				
				
				<a href="https://bbs.liyuans.com/">
					<h1 class="navbar-brand forum-title">梨园</h1>
				</a>
				

				<div component="navbar/title" class="visible-xs hidden">
					<span></span>
				</div>
			</div>

			<div id="nav-dropdown" class="hidden-xs">
				
				

				<ul id="logged-in-menu" class="nav navbar-nav navbar-right">
					<li class="notifications dropdown text-center hidden-xs" component="notifications">
						<a href="/notifications" title="通知" class="dropdown-toggle" data-toggle="dropdown" id="notif_dropdown" data-ajaxify="false" role="button">
							<i component="notifications/icon" class="fa fa-fw fa-bell-o unread-count" data-content="0"></i>
						</a>
						<ul class="dropdown-menu" aria-labelledby="notif_dropdown">
							<li>
								<ul component="notifications/list" class="notification-list">
									<li class="loading-text">
										<a href="#"><i class="fa fa-refresh fa-spin"></i> 正在加载通知</a>
									</li>
								</ul>
							</li>
							<li class="notif-dropdown-link"><a href="#" class="mark-all-read">标记全部为已读</a></li>
							<li class="notif-dropdown-link"><a href="/notifications">查看全部通知</a></li>
						</ul>
					</li>

					
					<li class="chats dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="/user/maoring/chats" title="聊天" id="chat_dropdown" component="chat/dropdown" data-ajaxify="false" role="button">
							<i component="chat/icon" class="fa fa-comment-o fa-fw unread-count" data-content="0"></i> <span class="visible-xs-inline">聊天</span>
						</a>
						<ul class="dropdown-menu" aria-labelledby="chat_dropdown">
							<li>
								<ul component="chat/list" class="chat-list chats-list">
									<li class="loading-text">
										<a href="#"><i class="fa fa-refresh fa-spin"></i> 正在加载聊天</a>
									</li>
								</ul>
							</li>
							<li class="notif-dropdown-link"><a href="#" class="mark-all-read" component="chats/mark-all-read">将所有聊天标为已读</a></li>
							<li class="notif-dropdown-link"><a href="/user/maoring/chats">查看所有对话</a></li>
						</ul>
					</li>
					

					<li id="user_label" class="dropdown">
						<label for="user-control-list-check" class="dropdown-toggle" data-toggle="dropdown" id="user_dropdown" title="设置" role="button" aria-expanded="false">
							
							<img component="header/userpicture" src="https://www.gravatar.com/avatar/819c14ad15c6fdfccd15afe16b1b20d8?size=192&amp;d=monsterid" alt="maoring">
							
							<span id="user-header-name" class="visible-xs-inline">maoring</span>
						</label>
						<input type="checkbox" class="hidden" id="user-control-list-check" aria-hidden="true">
						<ul id="user-control-list" component="header/usercontrol" class="dropdown-menu" aria-labelledby="user_dropdown">
							<li>
								<a component="header/profilelink" href="/user/maoring">
									<i component="user/status" class="fa fa-fw fa-circle status away"></i> <span component="header/username">maoring</span>
								</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li>
								<a href="#" class="user-status" data-status="online">
									<i class="fa fa-fw fa-circle status online"></i><span> 在线</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="away">
									<i class="fa fa-fw fa-circle status away"></i><span class="bold"> 离开</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="dnd">
									<i class="fa fa-fw fa-circle status dnd"></i><span> 请勿打扰</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="offline">
									<i class="fa fa-fw fa-circle status offline"></i><span> 隐身</span>
								</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li>
								<a component="header/profilelink/edit" href="/user/maoring/edit">
									<i class="fa fa-fw fa-edit"></i> <span>编辑资料</span>
								</a>
							</li>
							<li>
								<a component="header/profilelink/settings" href="/user/maoring/settings">
									<i class="fa fa-fw fa-gear"></i> <span>设置</span>
								</a>
							</li>
							
							<li role="presentation" class="divider"></li>
							<li component="user/logout">
								<form method="post" action="/logout">
									<input type="hidden" name="_csrf" value="WZd1MiUz-Ap4CWeTSnpN-0J9mU8PkX3ISkzA">
									<input type="hidden" name="noscript" value="true">
									<button type="submit" class="btn btn-link">
										<i class="fa fa-fw fa-sign-out"></i><span> 退出</span>
									</button>
								</form>
							</li>
						</ul>
					</li>

				</ul>
				
				
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form id="search-form" class="navbar-form navbar-right hidden-xs" role="search" method="GET">
							<button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw" title="搜索"></i></button>
							<div class="hidden" id="search-fields">
								<div class="form-group">
									<input autocomplete="off" type="text" class="form-control" placeholder="搜索" name="query" value="">
									<a href="#"><i class="fa fa-gears fa-fw advanced-search-link"></i></a>
								</div>
								<button type="submit" class="btn btn-default hide">搜索</button>
							</div>
						</form>
						<ul id="quick-search-results" class="dropdown-menu quick-search-results hidden">
							

						</ul>
					</li>
					<li class="visible-xs" id="search-menu">
						<a href="/search">
							<i class="fa fa-search fa-fw"></i> 搜索
						</a>
					</li>
				</ul>
				

				<ul class="nav navbar-nav navbar-right hidden-xs">
					<li>
						<a href="#" id="reconnect" class="hide" title="与 梨园 的连接断开，我们正在尝试重连，请耐心等待">
							<i class="fa fa-check"></i>
						</a>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right pagination-block visible-lg visible-md">
					<li class="dropdown">
						<a><i class="fa fa-angle-double-up pointer fa-fw pagetop"></i></a>
						<a><i class="fa fa-angle-up pointer fa-fw pageup"></i></a>

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="pagination-text"></span>
						</a>

						<a><i class="fa fa-angle-down pointer fa-fw pagedown"></i></a>
						<a><i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i></a>

						<div class="progress-container">
							<div class="progress-bar"></div>
						</div>

						<ul class="dropdown-menu" role="menu">
							<li>
  								<input type="text" class="form-control" id="indexInput" placeholder="输入索引">
  							</li>
						</ul>
					</li>
				</ul>

				<ul id="main-nav" class="nav navbar-nav">
					
					
					<li class="recent">
						<a class="navigation-link" href="/recent" title="最新">
							
							<i class="fa fa-fw fa-clock-o" data-content=""></i>
							

							
							<span class="visible-xs-inline">最新</span>
							
						</a>
					</li>
					
					
					
					<li class="unread">
						<a class="navigation-link" href="/unread" title="未读" id="unread-count">
							
							<i class="fa fa-fw fa-inbox unread-count" data-content="33"></i>
							

							
							<span class="visible-xs-inline">未读</span>
							
						</a>
					</li>
					
					
					
					<li class="users">
						<a class="navigation-link" href="/users" title="用户">
							
							<i class="fa fa-fw fa-user" data-content=""></i>
							

							
							<span class="visible-xs-inline">用户</span>
							
						</a>
					</li>
					
					
					
					<li class="">
						<a class="navigation-link" href="/groups" title="群组">
							
							<i class="fa fa-fw fa-group" data-content=""></i>
							

							
							<span class="visible-xs-inline">群组</span>
							
						</a>
					</li>
					
					
					
					<li class="tags">
						<a class="navigation-link" href="/tags" title="话题">
							
							<i class="fa fa-fw fa-tags" data-content=""></i>
							

							
							<span class="visible-xs-inline">话题</span>
							
						</a>
					</li>
					
					
					
					<li class="popular">
						<a class="navigation-link" href="/popular" title="热门">
							
							<i class="fa fa-fw fa-fire" data-content=""></i>
							

							
							<span class="visible-xs-inline">热门</span>
							
						</a>
					</li>
					
					
					
					<li class="categories">
						<a class="navigation-link" href="/categories" title="版块" id="1">
							
							<i class="fa fa-fw fa-list" data-content=""></i>
							

							
							<span class="visible-xs-inline">版块</span>
							
						</a>
					</li>
					
					
				</ul>

				
			</div>

			</div>
		</nav>
		<div class="container" id="content"><div class="account">
	
<ol class="breadcrumb">
	
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="/" itemprop="url">
			<span itemprop="title">
				主页
				
			</span>
		</a>
	</li>
	
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="/user/maoring" itemprop="url">
			<span itemprop="title">
				maoring
				
			</span>
		</a>
	</li>
	
	<li component="breadcrumb/current" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" class="active">
		
			<span itemprop="title">
				编辑
				
				
				
				
			</span>
		
	</li>
	
</ol>


<div class="cover initialised" component="account/cover" style="background-image: url(&quot;assets/cover-default.png&quot;); background-position: 50.1333% 64.5333%; top: 60px;">
	<div class="avatar-wrapper" data-uid="712">
		
		<img src="https://www.gravatar.com/avatar/819c14ad15c6fdfccd15afe16b1b20d8?size=192&amp;d=monsterid" class="avatar avatar-xl avatar-rounded" data-original-title="" title="">
		
		<i component="user/status" class="fa fa-circle status away" title="离开"></i>

		
		
		
	</div>

	<div class="container">
		<div class="btn-group account-fab bottom-sheet">
	<button type="button" class="fab dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-ellipsis-v"></i>
	</button>
	<ul class="dropdown-menu dropdown-menu-right">
		
		
		
		<li>
			<a href="/user/maoring" class="inline-block" id="profile">资料</a>
		</li>
		
		<li><a href="/user/maoring/edit">编辑</a></li>
		<li><a href="/user/maoring/settings">设置</a></li>
		

		

		<li class="divider"></li>
		<li><a href="/user/maoring/following">关注</a></li>
		<li><a href="/user/maoring/followers">粉丝</a></li>
		
		<li><a href="/user/maoring/blocks">屏蔽</a></li>
		
		<li class="divider"></li>
		<li><a href="/user/maoring/topics">主题</a></li>
		<li><a href="/user/maoring/posts">帖子</a></li>
		
		<li><a href="/user/maoring/best">最佳</a></li>
		
		<li><a href="/user/maoring/groups">群组</a></li>

		
		<li><a href="/user/maoring/categories">已关注的版块</a></li>
		<li><a href="/user/maoring/bookmarks">书签</a></li>
		<li><a href="/user/maoring/watched">已关注</a></li>
		<li><a href="/user/maoring/ignored">忽略</a></li>
		
		<li><a href="/user/maoring/upvoted">顶</a></li>
		
		<li><a href="/user/maoring/downvoted">踩</a></li>
		
		
		<li><a href="/user/maoring/uploads">上传</a></li>
		

		
		
		<li class="divider"></li>
		
		<li id="sessions" class="plugin-link public"><a href="/user/maoring/sessions">已登录的会话</a></li>
		
		
		<li id="consent" class="plugin-link public"><a href="/user/maoring/consent">您的权利与许可</a></li>
		
	</ul>
</div>


		
		
		<div class="controls">
			<span class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></span>
			<span class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
			<span class="remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
		</div>
		<div class="save">保存 <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">正在保存 <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		
		
	</div>
</div>

	
		<div class="row"><div class="col-lg-9 col-xs-12"><div class="row">
			<div class="col-md-2 col-sm-4">
				<div class="account-picture-block text-center">
					<div class="row">
						<div class="col-xs-12 hidden-xs">
							
							<img id="user-current-picture" class="avatar avatar-xl avatar-rounded" src="https://www.gravatar.com/avatar/819c14ad15c6fdfccd15afe16b1b20d8?size=192&amp;d=monsterid" data-original-title="" title="">
							
						</div>
					</div>
					<ul class="list-group">
						
						<a id="changePictureBtn" href="#" class="list-group-item">更改头像</a>
						
						
						
						<a href="/user/maoring/edit/email" class="list-group-item">更改电子邮箱</a>
						
						
						<a href="/user/maoring/edit/password" class="list-group-item">更改密码</a>
						
						
					</ul>

					
					
					
					<a id="confirm-email" href="#" class="btn btn-warning hide">确认电子邮箱</a><br><br>
					
					
					

					

				</div>
			</div>

			<div class="col-md-9 col-sm-8">
				<div>
					<form class="form-horizontal" action="test" method="post">

						<div class="control-group">
							<label class="control-label" for="inputFullname">姓名</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputFullname" placeholder="姓名" value="" name="name">
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label" for="inputWebsite">网站</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputWebsite" placeholder="http://..." value="" name="website">
							</div>
						</div>
						

						<div class="control-group">
							<label class="control-label" for="inputLocation">位置</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputLocation" placeholder="位置" value="" name="position">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="inputBirthday">生日</label>
							<div class="controls">
								<input class="form-control hasDatepicker" id="inputBirthday" value="" placeholder="mm/dd/yyyy" name="birthday">
							</div>
						</div>


						
						<div class="control-group">
							<label class="control-label" for="inputAboutMe">关于我</label> <small><label id="aboutMeCharCountLeft">(2/1000)</label></small>
							<div class="controls">
								<input class="form-control" id="inputAboutMe" name="about">测试</input>
							</div>
						</div>
						

						
						
						<div class="control-group">
							<label class="control-label" for="inputSignature">签名档</label> <small><label id="signatureCharCountLeft">(2/255)</label></small>
							<div class="controls">
								<textarea class="form-control" id="inputSignature" rows="5">测试</textarea>
							</div>
						</div>
						
						

						<input type="hidden" id="inputUID" value="${user.username }" name="userid"><br>

						<div class="form-actions">
							<a id="submitBtn" href="#" class="btn btn-primary">保存更改</a>
						</div>

					</form>
				</div>

				<hr class="visible-xs visible-sm">
			</div>

			
		</div></div><div widget-area="sidebar" class="col-lg-3 col-xs-12">  <div class="panel panel-primary"> 
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

<div class="row"><div widget-area="footer" class="col-xs-12"><script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="https://hm.baidu.com/hm.js?95731d6ab408037d083d19564d0818c4";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script> </div></div></div><!-- /.container#content -->
	</main>
	
	
	<div class="topic-search hidden">
		<div class="btn-group">
			<button type="button" class="btn btn-default count"></button>
			<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>
	<div component="toaster/tray" class="alert-window">
		<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			<p>与 梨园 的连接断开，我们正在尝试重连upload，请耐心等待</p>
		</div>
	</div>
	<script defer="" src="assets/nodebb.min.js"></script>
	<script>
		window.addEventListener('load', function () {
			require(['forum/footer']);

			
		});
	</script>
	<div class="hide">
	<script>
	window.addEventListener('load', function () {
		define(config.relative_path + '/assets/templates/500.js', function () {
			function compiled(helpers, context, get, iter, helper) 
				return '<div class="alert alert-danger">\n\t<strong>内部错误</strong>\n\t<p>哎呀！看来是哪里出错了！</p>\n\t<p>' + 
					helpers.__escape(get(context && context['path'])) + '</p>\n\t' + 
					(get(context && context['error']) ? '<p>' + helpers.__escape(get(context && context['error'])) + '</p>' : '') + '\n\n\t' + 
					(get(context && context['returnLink']) ? '\n\t<p>按返回以后退至前一页</p>\n\t' : '') + '\n</div>\n';
			}

			return compiled;
		});
	});
</script>
	</div>
	
	
	<div id="taskbar" class="taskbar navbar-fixed-bottom" style="">
	<div class="navbar-inner"><ul class="nav navbar-nav pull-right"></ul></div>
</div>
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
	
</body>
</html>