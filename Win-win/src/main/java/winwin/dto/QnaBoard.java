package winwin.dto;

import java.util.Date;

public class QnaBoard {

	private int qnaNo;
	private String title;
	private int userId;
	private String writer;
	private String content;
	private int hit;
	private String date;
	private String asw_code;
	private String asw_writer;
	private String asw_content;
	private String asw_date;
	
	@Override
	public String toString() {
		return "QnaBoard [qnaNo=" + qnaNo + ", title=" + title + ", userId=" + userId + ", writer=" + writer
				+ ", content=" + content + ", hit=" + hit + ", date=" + date + ", asw_code=" + asw_code
				+ ", asw_writer=" + asw_writer + ", asw_content=" + asw_content + ", asw_date=" + asw_date + "]";
	}
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAsw_code() {
		return asw_code;
	}
	public void setAsw_code(String asw_code) {
		this.asw_code = asw_code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	public String getAsw_writer() {
		return asw_writer;
	}
	public void setAsw_writer(String asw_writer) {
		this.asw_writer = asw_writer;
	}
	public String getAsw_content() {
		return asw_content;
	}
	public void setAsw_content(String asw_content) {
		this.asw_content = asw_content;
	}
	public String getAsw_date() {
		return asw_date;
	}
	public void setAsw_date(String asw_date) {
		this.asw_date = asw_date;
	}
	
	
}
