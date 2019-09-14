package interceptor;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class QuanXian extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//获取到当前访问路径
		String path = request.getServletPath();
		//获取session
		HttpSession session = request.getSession();
		if(session.getAttribute("urlList") != null) {
			ArrayList<String> urlList = (ArrayList<String>)session.getAttribute("urlList");
			if (urlList.contains(path)) {
				return true;
			}
		}
		response.sendRedirect("/stumvc/fail.jsp");
		return false;
	}
	
}
