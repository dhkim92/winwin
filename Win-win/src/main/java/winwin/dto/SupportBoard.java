package winwin.dto;

import java.util.Date;

public class SupportBoard {

	private int passNo;
	private int jobopenNo;
	private String userId;
	private String status;
	private String title;
	private Date applyDate;
	
	@Override
	public String toString() {
		return "SupportBoard [passNo=" + passNo + ", jobopenNo=" + jobopenNo + ", userId=" + userId + ", status="
				+ status + ", title=" + title + ", applyDate=" + applyDate + "]";
	}

	public int getPassNo() {
		return passNo;
	}

	public void setPassNo(int passNo) {
		this.passNo = passNo;
	}

	public int getJobopenNo() {
		return jobopenNo;
	}

	public void setJobopenNo(int jobopenNo) {
		this.jobopenNo = jobopenNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	
	
	
}
