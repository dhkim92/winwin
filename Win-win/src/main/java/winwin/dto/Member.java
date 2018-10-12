package winwin.dto;

public class Member {

	private String userid;
	private String username;
	private String phone;
	private String password;
	private String pwConfirm;
	
	@Override
	public String toString() {
		return "Member [userid=" + userid + ", username=" + username + ", phone=" + phone + ", password=" + password
				+ ", pwConfirm=" + pwConfirm + "]";
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPwConfirm() {
		return pwConfirm;
	}

	public void setPwConfirm(String pwConfirm) {
		this.pwConfirm = pwConfirm;
	}
	
}
