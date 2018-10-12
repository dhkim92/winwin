package winwin.dto;

public class License {

	int licenseNo;
	String userId;
	int jobopenNo;
	String name;
	String grade;
	String date;
	String organ;
	
	@Override
	public String toString() {
		return "License [licenseNo=" + licenseNo + ", userId=" + userId + ", jobopenNo=" + jobopenNo + ", name=" + name
				+ ", grade=" + grade + ", date=" + date + ", organ=" + organ + "]";
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

	public int getjobopenNo() {
		return jobopenNo;
	}

	public void setjobopenNo(int jobopenNo) {
		this.jobopenNo = jobopenNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getOrgan() {
		return organ;
	}

	public void setOrgan(String organ) {
		this.organ = organ;
	}

}
