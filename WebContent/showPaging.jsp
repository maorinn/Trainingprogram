<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询页面</title>
</head>
<body>
	<a href="SelectEmpServlet">查询员工信息列表</a>
	
	<c:if test="${list!=null }">
		<table>
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>薪水</th>
			</tr>
		<c:forEach items="${list }" var="emp">
			<tr>
				<td>${emp.id }</td>
				<td>${emp.name }</td>
				<td>${emp.sal }</td>
			</tr>
		</c:forEach>
			<tr>
				<td colspan="5">
					<c:if test="${page==1 }">
						<a href="#">${page }</a>
						<c:if test="${page+1<= maxPage }">
							<a href="SelectEmpServlet?page=${page+1 }">下一页</a>
						</c:if>
						
					</c:if>
					<c:if test="${page>1 }">
					        <a href="SelectEmpServlet?page=1">首页</a> 
						<c:if test="${page-1>=1 }">
							<a href="SelectEmpServlet?page=${page-1 }">上一页</a>
						</c:if>
						
						<a href="#">${page }</a>
						
						<c:if test="${page+1<=maxPage }">
							<a href="SelectEmpServlet?page=${page+1 }">下一页</a>
						</c:if>
					</c:if>
				    <c:if test="${page+1<=maxPage}">
							<a href="SelectEmpServlet?page=${maxPage }">尾页</a>
					</c:if>
					
				</td>
			</tr>
		</table>
	
	
	</c:if>
</body>
</html>