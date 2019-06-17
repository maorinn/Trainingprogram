<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top header" id="header-menu" component="navbar">
			<div class="container">
							<div class="navbar-header">
				<button type="button" class="navbar-toggle pull-left" id="mobile-menu">
					<span component="notifications/icon" class="notification-icon fa fa-fw fa-bell-o unread-count" data-content="0"></span>
					<i class="fa fa-lg fa-fw fa-bars"></i>
				</button>
				<button type="button" class="navbar-toggle hidden" id="mobile-chats">
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
				
				
				<ul id="logged-out-menu" class="nav navbar-nav navbar-right">
					
					<li>
						<a href="/register">
							<i class="fa fa-pencil fa-fw hidden-sm hidden-md hidden-lg"></i>
							
							<span>注册</span>
						</a>
					</li>
					
					<li>
						<a href="/login">
							<i class="fa fa-sign-in fa-fw hidden-sm hidden-md hidden-lg"></i>
							<span>登录</span>
						</a>
					</li>
				</ul>
				<c:if test="${user!=null}" >
	 
	    
	    </c:if>
				
				<ul class="nav navbar-nav navbar-right" id='d1'>
					<li data-original-title="" title="">
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
						<a href="#" id="reconnect" class="hide" title="" data-original-title="与 梨园 的连接断开，我们正在尝试重连，请耐心等待">
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
						<a class="navigation-link" href="/recent" title="" data-original-title="最新">
							
							<i class="fa fa-fw fa-clock-o" data-content=""></i>
							

							
							<span class="visible-xs-inline">最新</span>
							
						</a>
					</li>
					
					
					
					<li class="users">
						<a class="navigation-link" href="/users" title="" data-original-title="用户">
							
							<i class="fa fa-fw fa-user" data-content=""></i>
							

							
							<span class="visible-xs-inline">用户</span>
							
						</a>
					</li>
					
					
					
					
					
					<li class="tags">
						<a class="navigation-link" href="/tags" title="" data-original-title="话题">
							
							<i class="fa fa-fw fa-tags" data-content=""></i>
							

							
							<span class="visible-xs-inline">话题</span>
							
						</a>
					</li>
					
					
					
					<li class="popular">
						<a class="navigation-link" href="/popular" title="" data-original-title="热门">
							
							<i class="fa fa-fw fa-fire" data-content=""></i>
							

							
							<span class="visible-xs-inline">热门</span>
							
						</a>
					</li>
					
					
					
					<li class="categories">
						<a class="navigation-link" href="/categories" title="" id="1" data-original-title="版块">
							
							<i class="fa fa-fw fa-list" data-content=""></i>
							

							
							<span class="visible-xs-inline">版块</span>
							
						</a>
					</li>
					
					
				</ul>

				
			</div>

			</div>
		</nav>
</body>
</html>