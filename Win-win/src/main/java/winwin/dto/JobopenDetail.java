package winwin.dto;

public class JobopenDetail {
	
	private String title; //공고 제목
	private String sector; // 모집부문
	private String task; // 담당업무
	private int volume; //모집인원
	
	
	
	@Override
	public String toString() {
		return "JobopenDetail [title=" + title + ", sector=" + sector + ", task=" + task + ", volume=" + volume
				+ ", place=" + place + ", special=" + special + "]";
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSector() {
		return sector;
	}
	public void setSector(String sector) {
		this.sector = sector;
	}
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	public int getVolume() {
		return volume;
	}
	public void setVolume(int volume) {
		this.volume = volume;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getSpecial() {
		return special;
	}
	public void setSpecial(String special) {
		this.special = special;
	}
	private String place; //근무 지역
	private String special; //우대사항
	
}
