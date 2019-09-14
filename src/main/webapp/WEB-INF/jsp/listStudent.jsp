<!--登录页面为 index.html-->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- 导入标签库 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--展示学员信息的页面-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/goodsList.css" />
<style type="text/css">
</style>
</head>
<body>
	<!-- 页面的包含： 一个页面，引入另一个页面 -->
	<div class="contain">
		<div class="header"></div>
		<div class="main">
			<%@ include file="leftnav.jsp" %>
			<div class="right-cont">
				<div class="rightHead">
					<p class="rightH_p">学生列表</p>
				</div>
				<div class="rightBody">
					<!--2学生列表-->
					<div class="goodsList_div">
						<table id="mytable" border="">
							<tr class="table-head">
								<th>学生ID</th>
								<th>学生名称</th>
								<th>学生性别</th>
								<th>学生年龄</th>
								<th>学生工资</th>
								<th>班级ID</th>
								<th>操作</th>
							</tr>
						
							<c:forEach items="${stuList }" var="stu" >
							<tr class="table-list">
								<td>${stu.id }</td>
								<td>${stu.name }</td>
								<td>${stu.sex }</td>
								<td>${stu.age}</td>
								<td>${stu.money }</td>
								<td>${stu.cid }</td>
								<td class='edition'>
								<a href="${pageContext.request.contextPath}/stu/toEdit.do?sid=${stu.id}" class="eiditB">编辑</a>
								<a href="${pageContext.request.contextPath}/stu/delete.do?sid=${stu.id}" class="deleteB">删除</a></td>
							</tr>
							</c:forEach>
						
						</table>
					</div>
				</div>
				<div class="rightFoot">
					<!--脚注 -->
				</div>
			</div>
		</div>
	</div>
</body>

</html>
