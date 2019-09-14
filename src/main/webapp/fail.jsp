<!--失败页面-->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
				<div class="right-cont">
					<div class="rightHead">
						<!-- 头部 -->
						<p class="rightH_p">错误信息</p>
					</div>
					<div class="rightBody">
						<!-- body -->
						<h3 style="color:red;">访问失败，没有权限</h3>
					</div>
					
					<div class="rightFoot">
						<!--脚注 -->
					</div>
				</div>
			</div>
		</div>
	</body>

</html>