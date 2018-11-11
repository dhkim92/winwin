package winwin.service;

import java.util.List;

import winwin.dto.College;
import winwin.dto.GSchool;
import winwin.dto.HighSchool;
import winwin.dto.JobopenBasic;
import winwin.dto.JobopenDetail;
import winwin.dto.Member;
import winwin.dto.Military;
import winwin.dto.University;
import winwin.dto.UserDetail;

public interface Apply1Service {

	public JobopenBasic viewJobOpen(JobopenBasic jopopenBasic);
	
	public List<JobopenDetail> viewTask(JobopenDetail jobopenDetail);
	
	public Member viewMember(Member member);
	
	public void insertUserDetail(UserDetail userDetail);
	
	public UserDetail selectUserDetail(UserDetail userDetail);
	
	public void updateUserDetail(UserDetail userDetail);
	
	public void insertHighSchool(HighSchool highSchool);
	
	public void insertCollege(College college);
	
	public void insertUniversity(University university);

	public void insertGSchool(GSchool gSchool);
	
	public void updateMemCountH(String userId);
	
	public void updateMemCountC(String userId);
	
	public void updateMemCountU(String userId);
	
	public void updateMemCountGS(String userId);
	
	public void updateMemCountNone(String userId);
	
	public HighSchool selectHighSchool(HighSchool highSchool);
	
	public College selectCollege(College college);
	
	public University selectUniversity(University university);
	
	public GSchool selectGSchool(GSchool gSchool);
	
	public void updateHighSchool(HighSchool highSchool);
	
	public void updateCollege(College college);
	
	public void updateUniversity(University university);
	
	public void updateGSchool(GSchool gSchool);

	public void insertMilitary(Military military);
	
	public Military selectMilitary(Military military);
	
	public void updateMilitary(Military military);
}
