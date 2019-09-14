package entity;

import org.springframework.stereotype.Component;

@Component
public class Student {
	private int id;
	private String name;
	private int age;
	private String sex;
	private double money;
	//班级编号
	private int cid;
	
	public Student() {
	}
	public Student(int id, String name, String sex, double money, int age, int cid) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.money = money;
		this.age = age;
		this.cid = cid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", age=" + age + ", sex=" + sex + ", money=" + money + ", cid="
				+ cid + "]";
	}
	
	
}
