package vo;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String username;
	private String password;
	private String head;
	private String sex;
	private Integer age;
	private Set fans = new HashSet(0);
	private Set microblogs = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String username, String password, String sex, Integer age) {
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.age = age;
	}

	/** full constructor */
	public User(String username, String password, String head, String sex,
			Integer age, Set fans, Set microblogs) {
		this.username = username;
		this.password = password;
		this.head = head;
		this.sex = sex;
		this.age = age;
		this.fans = fans;
		this.microblogs = microblogs;
	}

	// Property accessors

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHead() {
		return this.head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Set getFans() {
		return this.fans;
	}

	public void setFans(Set fans) {
		this.fans = fans;
	}

	public Set getMicroblogs() {
		return this.microblogs;
	}

	public void setMicroblogs(Set microblogs) {
		this.microblogs = microblogs;
	}

}