package winwin.dto;

public class Experience {

	int experienceNo;
	String userId;
	int jobopenNo;
	String eOrgan;
	String period;
	String eStartDate;
	String eEndDate;
	String eContent;
	
	@Override
	public String toString() {
		return "Experience [experienceNo=" + experienceNo + ", userId=" + userId + ", jobopenNo=" + jobopenNo
				+ ", eOrgan=" + eOrgan + ", period=" + period + ", eStartDate=" + eStartDate + ", eEndDate=" + eEndDate
				+ ", eContent=" + eContent + "]";
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

	public int getJobopenNo() {
		return jobopenNo;
	}

	public void setJobopenNo(int jobopenNo) {
		this.jobopenNo = jobopenNo;
	}

	public String geteOrgan() {
		return eOrgan;
	}

	public void seteOrgan(String eOrgan) {
		this.eOrgan = eOrgan;
	}

	public String getperiod() {
		return period;
	}

	public void setperiod(String period) {
		this.period = period;
	}

	public String geteStartDate() {
		return eStartDate;
	}

	public void seteStartDate(String eStartDate) {
		this.eStartDate = eStartDate;
	}

	public String geteEndDate() {
		return eEndDate;
	}

	public void seteEndDate(String eEndDate) {
		this.eEndDate = eEndDate;
	}

	public String geteContent() {
		return eContent;
	}

	public void seteContent(String eContent) {
		this.eContent = eContent;
	}
	
}
