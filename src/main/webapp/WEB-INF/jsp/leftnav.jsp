<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<ul class="left-head">
		<li class="public dgray">
			<a href="<%=request.getContextPath() %>/stu/toAdd.do">添加学生</a>
		</li>
		<li class="goods">
			<a href="${pageContext.request.contextPath}/stu/list.do">学生列表</a>
		</li>
		<li class="goods dgray">
			<a href="${pageContext.request.contextPath}/stu/exit.do">退出系统</a>
		</li>
</ul>