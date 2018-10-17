package winwin.dto;

public class Activity {
	
	int activityId;
	String userId;
	int jobopenNo;
	String aName;
	String aStartDate;
	String aEndDate;
	String aContent;
	
	@Override
	public String toString() {
		return "Activity [activityId=" + activityId + ", userId=" + userId + ", jobopenNo=" + jobopenNo + ", aName="
				+ aName + ", aStartDate=" + aStartDate + ", aEndDate=" + aEndDate + ", aContent=" + aContent + "]";
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

	public int getJobopenNo() {
		return jobopenNo;
	}

	public void setJobopenNo(int jobopenNo) {
		this.jobopenNo = jobopenNo;
	}

	public String getaName() {
		return aName;
	}

	public void setaName(String aName) {
		this.aName = aName;
	}

	public String getaStartDate() {
		return aStartDate;
	}

	public void setaStartDate(String aStartDate) {
		this.aStartDate = aStartDate;
	}

	public String getaEndDate() {
		return aEndDate;
	}

	public void setaEndDate(String aEndDate) {
		this.aEndDate = aEndDate;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}
	
}
