package C06;

public class UserDto {
	private String userid;
	private String password;
	private String role;
	//getter and setter 
	//toString
	//생성자
	public UserDto() {};
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "UserDto [userid=" + userid + ", password=" + password + ", role=" + role + "]";
	}
	public UserDto(String userid, String password, String role) {
		super();
		this.userid = userid;
		this.password = password;
		this.role = role;
	}
	
}