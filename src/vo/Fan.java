package vo;

/**
 * Fan entity. @author MyEclipse Persistence Tools
 */

public class Fan implements java.io.Serializable {

	// Fields

	private Integer id;
	private User userByUsername;
	private User userByFusername;

	// Constructors

	/** default constructor */
	public Fan() {
	}

	/** full constructor */
	public Fan(User userByUsername, User userByFusername) {
		this.userByUsername = userByUsername;
		this.userByFusername = userByFusername;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUserByUsername() {
		return this.userByUsername;
	}

	public void setUserByUsername(User userByUsername) {
		this.userByUsername = userByUsername;
	}

	public User getUserByFusername() {
		return this.userByFusername;
	}

	public void setUserByFusername(User userByFusername) {
		this.userByFusername = userByFusername;
	}

}