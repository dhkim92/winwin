package winwin.dto;

public class Language {

	int languageNo;
	String userId;
	int jobopenNo;
	String lName;
	String level;
	String testName;
	String score;
	String lDate;
	String lOrgan;
	
	@Override
	public String toString() {
		return "Language [languageNo=" + languageNo + ", userId=" + userId + ", jobopenNo=" + jobopenNo + ", lName="
				+ lName + ", level=" + level + ", testName=" + testName + ", score=" + score + ", lDate=" + lDate
				+ ", lOrgan=" + lOrgan + "]";
	}

	public int getLanguageNo() {
		return languageNo;
	}

	public void setLanguageNo(int languageNo) {
		this.languageNo = languageNo;
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

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getlDate() {
		return lDate;
	}

	public void setlDate(String lDate) {
		this.lDate = lDate;
	}

	public String getlOrgan() {
		return lOrgan;
	}

	public void setlOrgan(String lOrgan) {
		this.lOrgan = lOrgan;
	}
	
}
