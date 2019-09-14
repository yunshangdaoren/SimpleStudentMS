package stumvc;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.StudentDao;
import entity.Student;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:mvc.xml")
public class TestJdbcTemplate {
	@Autowired
	private JdbcTemplate jdbc;
	@Autowired
	private Student stu;
	@Resource
	private StudentDao dao;
	
	@Test
	public void selectAllStudent() {
		List<Student> stuList = dao.selectAll();
		for (Student student : stuList) {
			System.out.println(student);
		}
	}
	
	@Test
	public void selectOneStudent() {
		Student student = dao.selectOne(20);
		System.out.println(student);
	}

	@Test
	public void selectOnePage() {
		List<Student> stuList = dao.selectOnPage(0, 5);
		for (Student student : stuList) {
			System.out.println(student);
		}
	}
	
	

}
