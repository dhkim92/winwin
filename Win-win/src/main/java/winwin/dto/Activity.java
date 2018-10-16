package winwin.dto;

public class Activity {
	
	int activityId;
	String userId;
	int jobopenNo;
	String name;
	String startDate;
	String endDate;
	String content;
	
	@Override
	public String toString() {
		return "Activity [activityId=" + activityId + ", userId=" + userId + ", jobopenNo=" + jobopenNo + ", name="
				+ name + ", startDate=" + startDate + ", endDate=" + endDate + ", content=" + content + "]";
	}
	
	public int getActivityId() {
		return activityId;
	}
	public void setActivityId(int activityId) {
		this.activityId = activityId;
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
