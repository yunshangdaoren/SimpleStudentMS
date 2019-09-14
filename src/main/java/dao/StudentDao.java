package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import entity.Student;


/**
 *  t_stu表中数据的增删改查
 * @author Administrator
 *  dao: database acess object-- 数据库访问对象
 */
@Repository
public class StudentDao {
	@Autowired
	private JdbcTemplate jdbc;
	@Autowired
	private StudentRowMapper rowMapper;
	
	// 数据库的插入操作
	public int insert(Student stu) {
		String sql = "insert into t_stu(s_name,s_age,s_money,s_sex,c_id) values (?,?,?,?,?);";
		Object[] obj = {stu.getName(),stu.getAge(),stu.getMoney(),stu.getSex(),stu.getCid()};
		int row = jdbc.update(sql,obj);
		return row;
	}
	
	/**
	 * 查询所有学生
	 * @return
	 */
	public List<Student> selectAll(){
		String sql = "select * from t_stu";
	    List<Student> list = jdbc.query(sql,rowMapper);
		return list;
	}
	
	/**
	 * 查询指定id的学生
	 * @param s_id
	 * @return
	 */
	public Student selectOne( int id) {
		String sql = "select * from t_stu where s_id=" + id;
	    Student stu = jdbc.queryForObject(sql, rowMapper);
		return stu;
	}
	
	/**
	 * 删除指定id的学生
	 * @param s_id
	 * @return
	 */
	public int deleteOne(int id) {
		String sql = "delete from t_stu where s_id=" + id;
		int row = jdbc.update(sql);
		return row;
	}
	
	/**
	 * 根据Student对象，修改一个学生的信息
	 * @param stu
	 * @return
	 */
	public int updateOne(Student stu) {
		String sql = "update t_stu set s_name=?,s_age=?,s_money=?,s_sex=? ,c_id=? where s_id=? ";
		Object[] obj = {stu.getName(),stu.getAge(),stu.getMoney(),stu.getSex(),stu.getCid(), stu.getId()};
	    return jdbc.update(sql,obj);
	}
	
	/**
	 * 分页查询
	 * @param begin
	 * @param max
	 * @return
	 */
	public List<Student> selectOnPage(int begin, int max){
		String sql = "select * from t_stu limit ?,?";
		Object[] obj = {begin, max};
		return jdbc.query(sql, rowMapper, obj);
	}
	
}













