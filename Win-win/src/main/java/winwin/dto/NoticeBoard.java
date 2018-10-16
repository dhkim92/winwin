package winwin.dto;

import java.util.Date;

public class NoticeBoard {

	private int noticeNo;
	private String title;
	private int code;
	private String writer;
	private String content;
	private int hit;
	private Date date;
	

	@Override
	public String toString() {
		return "NoticeBoard [noticeNo=" + noticeNo + ", title=" + title + ", code=" + code + ", writer=" + writer
				+ ", content=" + content + ", hit=" + hit + ", date=" + date + "]";
	}
	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	
}
