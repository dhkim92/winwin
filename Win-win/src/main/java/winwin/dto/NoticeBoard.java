package winwin.dto;

import java.util.Date;

public class NoticeBoard {

	private int noticeno;
	private String title;
	private int code;
	private String writer;
	private String content;
	private int hit;
	private Date writedate;
	

	@Override
	public String toString() {
		return "NoticeBoard [noticeno=" + noticeno + ", title=" + title + ", code=" + code + ", writer=" + writer
				+ ", content=" + content + ", hit=" + hit + ", writedate=" + writedate + "]";
	}
	public int getNoticeno() {
		return noticeno;
	}

	public void setNoticeno(int noticeno) {
		this.noticeno = noticeno;
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

	public Date getwritedate() {
		return writedate;
	}

	public void writedate(Date writedate) {
		this.writedate = writedate;
	}

	
}
