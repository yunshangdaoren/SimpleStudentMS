package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Student;
import service.StudentService;

@Controller
@RequestMapping("stu")
public class StudentController {
	@Autowired
	private StudentService service;
	
	/**
	 * 显示所有学生列表信息
	 * @param map
	 * @return
	 */
	@RequestMapping("list.do")
	public String list(ModelMap map) {
		List<Student> stuList = service.getAllStudent();
		map.put("stuList", stuList);
		return "jsp/listStudent";
	}
	
	/**
	 * 跳转到添加学生JSP页面
	 * @return
	 */
	@RequestMapping("toAdd.do")
	public String toAddStudent() {
		return "jsp/addStudent";
	}
	
	/**
	 * 处理添加指定学生信息业务
	 * @param stu
	 * @param map
	 * @return
	 */
	@RequestMapping("add.do")
	public String addStudent(Student stu, ModelMap map ) {
		String msg = service.addStudent(stu);
		if (msg.equals("插入学生信息成功！")) {
			return "redirect:/stu/list.do";
		}
		//插入学生信息失败
		map.put("error_msg", msg);
		return "jsp/fail";
	}
	
	/**
	 * 删除指定id的学生
	 * @param sid
	 * @param map
	 * @return
	 */
	@RequestMapping("delete.do")
	public String deleteStudent(String sid, ModelMap map) {
		boolean result = service.deleteStudent(sid);
		if (result) {
			return "redirect:/stu/list.do";
		}
		map.put("error_msg", "删除学生失败");
		return "jsp/fail";
	}
	
	/**
	 * 跳转到更新学生信息页面
	 * @param sid
	 * @param map
	 * @return
	 */
	@RequestMapping("toEdit.do")
	public String toEdit(String sid, ModelMap map) {
		Student stu = service.getOneStudent(sid);
		map.put("stu", stu);
		System.out.println("跳转到jsp/modifyStudent");
		return "jsp/modifyStudent";
	}
	/**
	 * 处理更新指定学生信息业务
	 * @param stu
	 * @param map
	 * @return
	 */
	@RequestMapping("update.do")
	public String updateStudent(Student stu, ModelMap map) {
		boolean result = service.updateOneStudent(stu);
		if (result) {
			return "redirect:list.do";
		}
		map.put("error_msg", "修改学生信息失败");
		return "jsp/fail";
	}
	
	/**
	 * 退出登录
	 * @param request
	 * @return
	 */
	@RequestMapping("exit.do")
	public String exit(HttpServletRequest request) {
		request.getSession().invalidate();
		return "forward:/user/toLogin.do";
	}
	
}