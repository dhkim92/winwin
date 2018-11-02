package winwin.dao;

import winwin.dto.College;
import winwin.dto.GSchool;
import winwin.dto.HighSchool;
import winwin.dto.JobopenBasic;
import winwin.dto.Military;
import winwin.dto.University;
import winwin.dto.Member;
import winwin.dto.UserDetail;

public interface Apply1Dao {

	public JobopenBasic selectJobOpen(JobopenBasic jopopenBasic);
	
	public Member selectMember(Member member);

	public void insertUserDetail(UserDetail userDetail);

	public UserDetail selectUserDetail(UserDetail userDetail);
	
	public void updateUserDetail(UserDetail userDetail);

	public void insertMilitary(Military military);

	public Military selectMilitary(Military military);

	public void updateMilitary(Military military);

	public void insertHighSchool(HighSchool highSchool);

	public void insertCollege(College college);

	public void insertUniversity(University university);

	public void insertGSchool(GSchool gSchool);

	public HighSchool selectHighSchool(HighSchool highSchool);

	public College selectCollege(College college);

	public University selectUniversity(University university);

	public GSchool selectGSchool(GSchool gSchool);

	public void updateHighSchool(HighSchool highSchool);

	public void updateCollege(College college);

	public void updateUniversity(University university);

	public void updateGSchool(GSchool gSchool);
}
