package winwin.service;

import winwin.dto.Activity;
import winwin.dto.Career;
import winwin.dto.Experience;
import winwin.dto.File;
import winwin.dto.Introduce;
import winwin.dto.JobopenBasic;
import winwin.dto.Language;
import winwin.dto.License;

public interface Apply2Service {

	public JobopenBasic viewJobOpen(JobopenBasic jopopenBasic);
	
	public void insertLanguage(Language language);
	
	public Language selectLanguage(Language language);
	
	public void updateLanguage(Language language);
	
	public void insertLicense(License license);
	
	public License selectLicense(License license);
	
	public void updateLicense(License license);
	
	public void insertCareer(Career career);
	
	public Career selectCareer(Career career);
	
	public void updateCareer(Career career);
	
	public void insertActivity(Activity activity);
	
	public Activity selectActivity(Activity activity);
	
	public void updateActivity(Activity activity);
	
	public void insertExperience(Experience experience);
	
	public Experience selectExperience(Experience experience);
	
	public void updateExperience(Experience experience);
	
	public void insertFile(File file);
	
	public File selectFile(File file);
	
	public void updateFile(File file);
	
	public void insertIntroduce(Introduce introduce);

	public Introduce selectIntroduce(Introduce introduce);

	public void updateIntroduce(Introduce introduce);
	
}
