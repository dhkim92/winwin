package winwin.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @author MoonJaeHwan
 *
 */
public class SupportBoard {

	private int passNo;
	private int jobOpenNo;
	private int fileNo;
	private String title;
	private String task;
	@JsonFormat(pattern="yy.MM.dd")
	private Date supportDate;
	private String username;
	private String userId;
	private String birth;
	private String eName;
	private String portfolioId;
	private String emailSend;
	private String status;
	private String pass;
	private String address;
	private int zipCode;
	private String addressDetail;
	private String phoneNum;
	private String phone;
	private String hsName;
	private String hsDay;
	private String hsMajor;
	private String hsEndDate;
	private String hsGraduate;
	private String hsRegion;
	private String colName;
	private String colBranch;
	private String colDay;
	private String colMajor;
	private String colScore;
	private String colTotalScore;
	private String colStartDate;
	private String colEndDate;
	private String colTransfer;
	private String colGraduate;
	private String colRegion;
	private String discharge;
	private String startDate;
	private String endDate;
	private String mCategory;
	private String mGrade;
	private String lName;
	private String grade;
	private String testName;
	private String score;
	private String lDate;
	private String lOrgan;
	
	@Override
	public String toString() {
		return "SupportBoard [passNo=" + passNo + ", title=" + title + ", task=" + task + ", supportDate=" + supportDate
				+ ", username=" + username + ", portfolioId=" + portfolioId + ", emailSend=" + emailSend + ", status="
				+ status + ", pass=" + pass + "]";
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

	public String getEmailSend() {
		return emailSend;
	}

	public void setEmailSend(String emailSend) {
		this.emailSend = emailSend;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getJobOpenNo() {
		return jobOpenNo;
	}

	public void setJobOpenNo(int jobOpenNo) {
		this.jobOpenNo = jobOpenNo;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getZipCode() {
		return zipCode;
	}

	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getHsName() {
		return hsName;
	}

	public void setHsName(String hsName) {
		this.hsName = hsName;
	}

	public String getHsDay() {
		return hsDay;
	}

	public void setHsDay(String hsDay) {
		this.hsDay = hsDay;
	}

	public String getHsMajor() {
		return hsMajor;
	}

	public void setHsMajor(String hsMajor) {
		this.hsMajor = hsMajor;
	}

	public String getHsEndDate() {
		return hsEndDate;
	}

	public void setHsEndDate(String hsEndDate) {
		this.hsEndDate = hsEndDate;
	}

	public String getHsGraduate() {
		return hsGraduate;
	}

	public void setHsGraduate(String hsGraduate) {
		this.hsGraduate = hsGraduate;
	}

	public String getHsRegion() {
		return hsRegion;
	}

	public void setHsRegion(String hsRegion) {
		this.hsRegion = hsRegion;
	}

	public String getColName() {
		return colName;
	}

	public void setColName(String colName) {
		this.colName = colName;
	}

	public String getColBranch() {
		return colBranch;
	}

	public void setColBranch(String colBranch) {
		this.colBranch = colBranch;
	}

	public String getColDay() {
		return colDay;
	}

	public void setColDay(String colDay) {
		this.colDay = colDay;
	}

	public String getColMajor() {
		return colMajor;
	}

	public void setColMajor(String colMajor) {
		this.colMajor = colMajor;
	}

	public String getColScore() {
		return colScore;
	}

	public void setColScore(String colScore) {
		this.colScore = colScore;
	}

	public String getColTotalScore() {
		return colTotalScore;
	}

	public void setColTotalScore(String colTotalScore) {
		this.colTotalScore = colTotalScore;
	}

	public String getColStartDate() {
		return colStartDate;
	}

	public void setColStartDate(String colStartDate) {
		this.colStartDate = colStartDate;
	}

	public String getColEndDate() {
		return colEndDate;
	}

	public void setColEndDate(String colEndDate) {
		this.colEndDate = colEndDate;
	}

	public String getColTransfer() {
		return colTransfer;
	}

	public void setColTransfer(String colTransfer) {
		this.colTransfer = colTransfer;
	}

	public String getColGraduate() {
		return colGraduate;
	}

	public void setColGraduate(String colGraduate) {
		this.colGraduate = colGraduate;
	}

	public String getColRegion() {
		return colRegion;
	}

	public void setColRegion(String colRegion) {
		this.colRegion = colRegion;
	}

	public String getDischarge() {
		return discharge;
	}

	public void setDischarge(String discharge) {
		this.discharge = discharge;
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

	public String getmCategory() {
		return mCategory;
	}

	public void setmCategory(String mCategory) {
		this.mCategory = mCategory;
	}

	public String getmGrade() {
		return mGrade;
	}

	public void setmGrade(String mGrade) {
		this.mGrade = mGrade;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
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
