<!--登录页面为 index.html-->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!-- 导入标签库 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--修改学员的页面-->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/goodsList.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/studentFormCheck.js"></script>
	</head>
	<body>
		<!-- 页面的包含： 一个页面，引入另一个页面 -->
		<div class="contain">
			<div class="header"></div>
			<div class="main">
				<%@ include file="leftnav.jsp" %>
				<div class="right-cont">
					<div class="rightHead">
						<p class="rightH_p">修改学生</p>
					</div>
					<div class="rightBody">
						<!--1.添加学生信息-->
						<!-- 获取到转发的数据，显示在页面上 -->
						<div class="public_div">
							<form method="get" action="<%=request.getContextPath() %>/stu/update.do" onsubmit="return studentFormEmptyCheck()">
								<input class="goodsName" type="hidden" name="id" id="" value="${stu.id }"/>
								姓名：<span style="color:red;display:none;" id="empty_name"></span>
									<input class="goodsName" type="text" name="name" id="name" value="${stu.name }"/>
								性别：<c:choose>
										<c:when test="${stu.sex == '男'}">
											<input type="radio" name="sex" value="男" checked="checked">男
											<input type="radio" name="sex" value="女" >女<br>
										</c:when>
										<c:when test="${stu.sex == '女'}">
											<input type="radio" name="sex" value="男" >男
											<input type="radio" name="sex" value="女" checked="checked">女<br>
										</c:when>
									 </c:choose>
								年龄：<span style="color:red;display:none;" id="empty_age"></span>
									<input class="goodsNumber" type="text" name="age" id="age" value="${stu.age }"/>
						    	工资：<span style="color:red;display:none;" id="empty_money"></span>
						    		<input class="goodsNumber" type="text" name="money" id="money" value="${stu.money }"/>
								班级号：<select name="cid" id="cid" class="goodsDetail">
									<c:if test="${stu.cid==1}">
										<option value="1" selected="selected">软件技术11班</option>
									</c:if>
									<c:if test="${stu.cid!=1}">
										<option value="1">软件技术11班</option>
									</c:if>
									<c:if test="${stu.cid==2 }">
									   <option value="2" selected="selected">通信工程2班 </option>
									</c:if>
									<c:if test="${stu.cid!=2 }">
									   <option value="2" >通信工程2班 </option>
									</c:if>
									<c:if test="${stu.cid==3 }">
									   <option value="3" selected="selected">软件工程8班</option> 
									</c:if>
									<c:if test="${stu.cid!=3 }">
									   <option value="3">软件工程8班</option> 
									</c:if>
								</select>
								<div class="btn_div">
									<input type="submit" value="修改学生"></input>
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
