package winwin.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @author MoonJaeHwan
 *
 */
public class SupportBoard {

	private int passNo;
	private String title;
	private String task;
	@JsonFormat(pattern="yy.MM.dd")
	private Date supportDate;
	private String username;
	private String portfolioId;
	private String status;
	private String supportDateStr;
	
	@Override
	public String toString() {
		return "SupportBoard [passNo=" + passNo + ", title=" + title + ", task=" + task + ", supportDate=" + supportDate
				+ ", username=" + username + ", portfolioId=" + portfolioId + ", status=" + status + "]";
	}

	public int getPassNo() {
		return passNo;
	}

	public void setPassNo(int passNo) {
		this.passNo = passNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public Date getSupportDate() {
		return supportDate;
	}

	public void setSupportDate(Date supportDate) {
		this.supportDate = supportDate;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPortfolioId() {
		return portfolioId;
	}

	public void setPortfolioId(String portfolioId) {
		this.portfolioId = portfolioId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSupportDateStr() {
		return supportDateStr;
	}

	public void setSupportDateStr(String supportDateStr) {
		this.supportDateStr = supportDateStr;
	}
	
}
