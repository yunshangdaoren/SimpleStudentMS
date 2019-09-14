package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;import org.apache.catalina.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 登录Controller
 * 说明：用户名是admin表示这是一个管理员
 *      用户名是guest表示这是一个访客
 * @author luckyliuqs
 *
 */
@Controller
@RequestMapping("user")
public class LoginController {

	@RequestMapping("toLogin.do")
	public String toLogin() {
		return "login";
	} 
	
	@RequestMapping("login.do")
	public String login(String uname, String upwd, HttpServletRequest request, ModelMap map) {
		if("admin".equals(uname) && "123".equals(upwd) ||
				"guest".equals(uname) && "123".equals(upwd)) {
			//登录成功就创建一个ArrayList<String>，用于保存有哪些地址是不会被拦截器拦截的
			ArrayList<String> urlList = new ArrayList<>();
			//session
			HttpSession session = request.getSession();
			if ("admin".equals(uname)) {
				//管理员权限
				urlList.add("/stu/list.do");
				urlList.add("/stu/toAdd.do");
				urlList.add("/stu/add.do");
				urlList.add("/stu/toEdit.do");
				urlList.add("/stu/delete.do");
				urlList.add("/stu/update.do");
			}else {
				//访客权限
				urlList.add("/stu/list.do");
			}
			urlList.add("/stu/exit.do");
			session.setAttribute("urlList", urlList);
			session.setMaxInactiveInterval(1*60);
			return "redirect:/stu/list.do";
		}else {
			map.put("msg_loginFail", "用户账户或密码错误");
			return "login";
		}
	}
	
}
