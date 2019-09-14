package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import entity.Student;

@Component
public class StudentRowMapper implements RowMapper<Student>{

	@Override
	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		Student stu = new Student();
		stu.setId(rs.getInt("s_id"));
		stu.setName(rs.getString("s_name"));
		stu.setSex(rs.getString("s_sex"));
		stu.setAge(rs.getInt("s_age"));
		stu.setMoney(rs.getDouble("s_money"));
		stu.setCid(rs.getInt("c_id"));
		return stu;
	}

}
