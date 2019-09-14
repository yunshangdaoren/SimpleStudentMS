<!--登录页面为 index.html-->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!--添加学员的页面-->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/goodsList.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/studentFormCheck.js"></script>
		<style type="text/css">
		</style>
	</head>
	<body>
	<!-- 页面的包含： 一个页面，引入另一个页面 -->
	<%-- <%@ include file="session.jsp" %> --%>
		<div class="contain">
			<div class="header"></div>
			<div class="main">
				<%@ include file="leftnav.jsp" %>
				<div class="right-cont">
					<div class="rightHead">
						<p class="rightH_p">添加学生</p>
					</div>
					<div class="rightBody">
						<!--1.添加学生信息-->
						<div class="public_div">
							<form method="get" action="${pageContext.request.contextPath}/stu/add.do" onsubmit="return studentFormEmptyCheck()">
							姓名：<span style="color:red;display:none;" id="empty_name"></span>
								<input class="goodsName" type="text" name="name" id="name" placeholder="请输入学生名称"/>
							性别：<input type="radio" name="sex" id="sex" value="男" checked="checked">男
			 					 <input type="radio" name="sex" id="sex" value="女">女<br/><br/>
							年龄：<span style="color:red;display:none;" id="empty_age"></span>
								<input class="goodsNumber" type="text" name="age" id="age" placeholder="请输入学生年龄"/>
						    工资：<span style="color:red;display:none;" id="empty_money"></span>
						    	<input class="goodsNumber" type="text" name="money" id="money" placeholder="请输入学生工资"/>
							班级号：<select name="cid" id="cid" class="goodsDetail">
									<option value="1" selected="selected">软件技术11班</option>
									<option value="2">通信工程2班 </option>
									<option value="3">软件工程8班</option> 
									<option value="4">影视动漫1班</option> 
									<option value="5">WEB前端H5</option> 
								</select>
							<!--<textarea class="goodsDetail" name="" rows="" cols="" placeholder="请输入商品描述"></textarea>-->
							<div class="btn_div">
								<input type="submit" value="添加学生"></input>
							</div>
							</form>
						</div>
						</div>
					
					</div>
					<div class="rightFoot">
						<!--脚注 -->
					</div>
				</div>
			</div>
	</body>

</html>
