package winwin.dto;

public class Academic {

	int academicNo;
	String userId;
	int jobopenNo;
	String category;
	String name;
	String branch;
	String day;
	String major;
	String minor;
	int score;
	int totalScore;
	String startDate;
	String endDate;
	String region;
	String transfer;
	String graduate;
	
	@Override
	public String toString() {
		return "Academic [academicNo=" + academicNo + ", userId=" + userId + ", jobopenNo=" + jobopenNo + ", category="
				+ category + ", name=" + name + ", branch=" + branch + ", day=" + day + ", major=" + major + ", minor="
				+ minor + ", score=" + score + ", totalScore=" + totalScore + ", startDate=" + startDate + ", endDate="
				+ endDate + ", region=" + region + ", transfer=" + transfer + ", graduate=" + graduate + "]";
	}

	public int getAcademicNo() {
		return academicNo;
	}

	public void setAcademicNo(int academicNo) {
		this.academicNo = academicNo;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getMinor() {
		return minor;
	}

	public void setMinor(String minor) {
		this.minor = minor;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getTotalScore() {
		return totalScore;
	}

	public void setTotalScore(int totalScore) {
		this.totalScore = totalScore;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getTransfer() {
		return transfer;
	}

	public void setTransfer(String transfer) {
		this.transfer = transfer;
	}

	public String getGraduate() {
		return graduate;
	}

	public void setGraduate(String graduate) {
		this.graduate = graduate;
	}
	
}
