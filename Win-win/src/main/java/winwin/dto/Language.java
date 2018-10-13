package winwin.dto;

public class Language {

	int languageNo;
	String userId;
	int jobopenNo;
	String name;
	String level;
	String testName;
	String score;
	String date;
	String organ;
	
	@Override
	public String toString() {
		return "Language [languageNo=" + languageNo + ", userId=" + userId + ", jobopenNo=" + jobopenNo + ", name="
				+ name + ", level=" + level + ", testName=" + testName + ", score=" + score + ", date=" + date
				+ ", organ=" + organ + "]";
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
