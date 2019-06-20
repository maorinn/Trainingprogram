<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

				
				
				<a href="http://localhost:8080/forum/">
					<h1 class="navbar-brand forum-title">梨园</h1>
				</a>
				

				<div component="navbar/title" class="visible-xs hidden">
					<span></span>
				</div>
			</div>

			<div id="nav-dropdown" class="hidden-xs">
				
				
				<ul id="logged-out-menu" class="nav navbar-nav navbar-right">
					
					<li>
						<!-- 如果没有登陆 -->
						<c:if test="${user==null }">
						<a href="register.jsp">
							<i class="fa fa-pencil fa-fw hidden-sm hidden-md hidden-lg"></i>
							<span>注册</span>
						</a>
						</c:if>
						<!-- 如果登陆了 -->
						<c:if test="${user!=null }">
						<a href="#">
							<i component="notifications/icon" class="fa fa-fw fa-bell-o unread-count" data-content="0"></i>
						</a>
						</c:if>
					</li>
					
					<li>
					<!-- 如果没有登陆 -->
					<c:if test="${user==null }">
						<a href="login.jsp">
							<i class="fa fa-sign-in fa-fw hidden-sm hidden-md hidden-lg"></i>
							<span>登录</span>
						</a>
					</c:if>
					<!-- 如果登陆了 -->
					<c:if test="${user!=null }">
					
					<li id="user_label" class="dropdown">
						<label for="user-control-list-check" class="dropdown-toggle" data-toggle="dropdown" id="user_dropdown" title="" role="button" data-original-title="设置">
							
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
								<form method="post" action="./logout">
									<input type="hidden" name="_csrf" value="TKbDHRWC-K3ZoWC5mMOeGUafciSBtP7r6DbI">
									<input type="hidden" name="noscript" value="true">
									<button type="submit" class="btn btn-link">
										<i class="fa fa-fw fa-sign-out"></i><span> 退出</span>
									</button>
								</form>
							</li>
						</ul>
					</li>
					</c:if>
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