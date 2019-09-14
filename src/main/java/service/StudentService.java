package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.StudentDao;
import entity.Student;

@Service
public class StudentService {
	@Autowired
	private StudentDao dao;
	
	/**
	 * 添加一个学生信息
	 * @param stu
	 * @return
	 */
	public String addStudent(Student stu) {
		int row = dao.insert(stu);
		if (row==1) {
			return "插入学生成功";
		}else {
			return "插入学生失败";
		}
	}
	
	/**
	 * 获取所有的学生信息
	 * @return
	 */
	public List<Student> getAllStudent(){
		return dao.selectAll();
	}
	
	/**
	 * 删除指定id的学生
	 * @param sid
	 * @return
	 */
	public boolean deleteStudent(String sid) {
		if (sid == null) {
			return false;
		}
		int row = dao.deleteOne(Integer.parseInt(sid));
		return row == 1?true:false;
	}
	
	/**
	 * 获取指定id的学生信息
	 * @param sid
	 * @return
	 */
	public Student getOneStudent(String sid) {
		return dao.selectOne(Integer.parseInt(sid));
	}
	
	/**
	 * 修改一个学生信息
	 * @param stu
	 * @return
	 */
	public boolean updateOneStudent(Student stu) {
		int row = dao.updateOne(stu);
		return row==1?true:false;
	}
}
