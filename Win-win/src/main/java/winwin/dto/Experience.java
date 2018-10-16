package winwin.dto;

public class Experience {

	int experienceNo;
	String userId;
	int jobopenNo;
	String organ;
	String option;
	String startDate;
	String endDate;
	String content;
	
	@Override
	public String toString() {
		return "Experience [experienceNo=" + experienceNo + ", userId=" + userId + ", jobopenNo=" + jobopenNo
				+ ", organ=" + organ + ", option=" + option + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", content=" + content + "]";
	}
	
	public int getExperienceNo() {
		return experienceNo;
	}
	public void setExperienceNo(int experienceNo) {
		this.experienceNo = experienceNo;
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
	public String getOrgan() {
		return organ;
	}
	public void setOrgan(String organ) {
		this.organ = organ;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
