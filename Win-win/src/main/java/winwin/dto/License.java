package winwin.dto;

public class License {

	int licenseNo;
	String userId;
	int jobopenNo;
	String liName;
	String grade;
	String liDate;
	String liOrgan;
	
	@Override
	public String toString() {
		return "License [licenseNo=" + licenseNo + ", userId=" + userId + ", jobopenNo=" + jobopenNo + ", liName="
				+ liName + ", grade=" + grade + ", liDate=" + liDate + ", liOrgan=" + liOrgan + "]";
	}

	public int getLicenseNo() {
		return licenseNo;
	}

	public void setLicenseNo(int licenseNo) {
		this.licenseNo = licenseNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getJobopenNo() {
		return jobopenNo;
	}

	public void setJobopenNo(int jobopenNo) {
		this.jobopenNo = jobopenNo;
	}

	public String getLiName() {
		return liName;
	}

	public void setLiName(String liName) {
		this.liName = liName;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getLiDate() {
		return liDate;
	}

	public void setLiDate(String liDate) {
		this.liDate = liDate;
	}

	public String getLiOrgan() {
		return liOrgan;
	}

	public void setLiOrgan(String liOrgan) {
		this.liOrgan = liOrgan;
	}
	
}
