package vo;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Microblog entity. @author MyEclipse Persistence Tools
 */

public class Microblog implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Timestamp time;
	private String content;
	private String theme;
	private Set comments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Microblog() {
	}

	/** minimal constructor */
	public Microblog(User user, Timestamp time, String content) {
		this.user = user;
		this.time = time;
		this.content = content;
	}

	/** full constructor */
	public Microblog(User user, Timestamp time, String content, String theme,
			Set comments) {
		this.user = user;
		this.time = time;
		this.content = content;
		this.theme = theme;
		this.comments = comments;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTheme() {
		return this.theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

}