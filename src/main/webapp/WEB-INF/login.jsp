<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="javax.servlet.http.Cookie" %>
<!--登录页面-->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>登录页面</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/loginFormCheck.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
		<style type="text/css">
			body{
				font-family: "微软雅黑";
				font-size: 16px;
				background: url(../img/bg.jpg);
				background-repeat: no-repeat;
				background-size: cover;
			}
			form{
				background-color:white;
				padding-left:20px;
			}
			.disc{
				width: 100%;
				height: 100px;
				font-size: 30px;
				text-align: center;
				font-weight: bold;
				color: slateblue;
				margin: 20px 0;
				border-bottom: 3px solid lightseagreen;
			}
			.cont{
				width: 530px;
				height: 250px;
				border-right: 2px solid lightgray;
				border-left: 2px solid lightgray;
				padding:20px;
				margin: 0 auto;
			}
			.cont label{
				cursor: pointer;
			}
			.int{
				width: 300px;
				height: 40px;
				border-radius: 4px;
				margin-top: 30px;
				text-indent: 20px;
			}
			.wrang{
				color: red;
				display: none;
			}
			.btn1{
				margin-top: 30px;
				margin-left: 100px;
				width: 200px;
				height: 40px;
				font-size: 22px;
				font-weight: bold;
				letter-spacing: 4px;
				color: white;
				background-color: lightseagreen;
				cursor: pointer;
			}
			.btn1:hover{
				color: orangered;
				background-color: slateblue;
			}
			
		</style>
	</head>
	<body>
		<div class="contian">
			<div class="disc">学生管理系统</div>
			<div class="cont">
			    <!-- 
			    	请求该jsp的时候，需要检查cookie中，是否name和pwd两个名字的cookie
			    	, 如果有，则需要获取到其value值，显示在input框中
			     -->
			     <%
			       Cookie[] cs = request.getCookies();
			       String n1 = ""; // n1代表名字
			       String n2 = ""; // n2代表密码
			       if(cs != null){
			    	   for(Cookie c: cs){
			    		   if(c.getName().equals("name")){
			    			   n1 = c.getValue();
			    		   }
			    		   if(c.getName().equals("pwd")){
			    			   n2 = c.getValue();
			    		   }
			    	   }
			       }
			       request.setAttribute("n1", n1);
			       request.setAttribute("n2", n2);
			     %>
				<form action="<%=request.getContextPath() %>/user/login.do" method="get" onsubmit="return loginFormEmptyCheck()">
					<div class="name_div">
						<label for="user">用户名：</label>
						<input class="int" type="text" name="uname" id="uname" placeholder="请输入用户名" value="${n1 }" />
						<span class="wrang">✔符合</span>
						<span class="error_uname" style="color:red;display:none;">用户名不能为空</span>
					</div>
					<div class="pwd_div">
						<label for="pwd">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
						<input class="int" type="password" name="upwd" id="upwd" placeholder="请输入密码" value="${n2 }" />
						<span class="wrang">✔符合</span>
						<span class="error_upwd" style="color:red;display:none;">密码不能为空</span>
					</div>
					<div class="pwd_div">
						<input class="int" type="checkbox" name="remember" value="1" checked="checked" />是否记住密码？
						<span class="wrang">✔符合</span>
					</div>
					<input type="submit" value="登录" class="btn1"></input>
				</form>
				<!-- 如果登录不成功，则提示用户，用户名或密码错误 -->
			
				<h1 style="color:red">${msg_loginFail }</h1>
			</div>
		</div>
	</body>
</html>
