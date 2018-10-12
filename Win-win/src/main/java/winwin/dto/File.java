package winwin.dto;

import java.util.Date;

public class File {

	int fileNo;
	String userId;
	int adminCode;
	int noticeNo;
	String portfolioId;
	String originName;
	String storedName;
	Date date;
	int size;
	String path;
	
	@Override
	public String toString() {
		return "File [fileNo=" + fileNo + ", userId=" + userId + ", adminCode=" + adminCode + ", noticeNo=" + noticeNo
				+ ", portfolioId=" + portfolioId + ", originName=" + originName + ", storedName=" + storedName
				+ ", date=" + date + ", size=" + size + ", path=" + path + "]";
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getAdminCode() {
		return adminCode;
	}

	public void setAdminCode(int adminCode) {
		this.adminCode = adminCode;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getPortfolioId() {
		return portfolioId;
	}

	public void setPortfolioId(String portfolioId) {
		this.portfolioId = portfolioId;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getStoredName() {
		return storedName;
	}

	public void setStoredName(String storedName) {
		this.storedName = storedName;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
}
