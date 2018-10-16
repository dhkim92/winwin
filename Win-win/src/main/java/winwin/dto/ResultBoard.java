package winwin.dto;

import java.util.Date;

public class ResultBoard {

	private int resultNo;
	private String title;
	private Date applyDate;
	private String userId;
	private String status;
	private String emailSend;
	
	@Override
	public String toString() {
		return "ResultBoard [resultNo=" + resultNo + ", title=" + title + ", applyDate=" + applyDate + ", userid="
				+ userId + ", status=" + status + ", emailSend=" + emailSend + "]";
	}

	public int getResultNo() {
		return resultNo;
	}

	public void setResultNo(int resultNo) {
		this.resultNo = resultNo;
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

	public String getEmailSend() {
		return emailSend;
	}

	public void setEmailSend(String emailSend) {
		this.emailSend = emailSend;
	}
	
	
}
