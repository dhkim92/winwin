package winwin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.Apply2Dao;
import winwin.dto.Activity;
import winwin.dto.Career;
import winwin.dto.Experience;
import winwin.dto.Introduce;
import winwin.dto.JobopenBasic;
import winwin.dto.Language;
import winwin.dto.License;
import winwin.dto.Material;
import winwin.dto.Support;

@Service
public class Apply2ServiceImpl implements Apply2Service{

@Autowired Apply2Dao dao;
	
	public JobopenBasic viewJobOpen(JobopenBasic jopopenBasic) {
		return dao.selectJobOpen(jopopenBasic);
	}
	
	public void insertLanguage(Language language) {
		dao.insertLanguage(language);
	}
	
	public Language selectLanguage(Language language) {
		return dao.selectLanguage(language);
	}
	
	public void updateLanguage(Language language) {
		dao.updateLanguage(language);
	}
	
	public void insertLicense(License license) {
		dao.insertLicense(license);
	}
	
	public License selectLicense(License license) {
		return dao.selectLicense(license);
	}
	
	public void updateLicense(License license) {
		dao.updateLicense(license);
	}
	
	public void insertCareer(Career career) {
		dao.insertCareer(career);
	}
	
	public Career selectCareer(Career career) {
		return dao.selectCareer(career);
	}
	
	public void updateCareer(Career career) {
		dao.updateCareer(career);
	}
	
	public void insertActivity(Activity activity) {
		dao.insertActivity(activity);
	}
	
	public Activity selectActivity(Activity activity) {
		return dao.selectActivity(activity);
	}
	
	public void updateActivity(Activity activity) {
		dao.updateActivity(activity);
	}
	
	public void insertExperience(Experience experience) {
		dao.insertExperience(experience);
	}
	
	public Experience selectExperience(Experience experience) {
		return dao.selectExperience(experience);
	}
	
	public void updateExperience(Experience experience) {
		dao.updateExperience(experience);
	}
	
	public void insertFile(Material file) {
		dao.insertFile(file);
	}
	
	public Material selectFile(Material file) {
		return dao.selectFile(file);
	}
	
	public void updateFile(Material file) {
		dao.updateFile(file);
	}
	
	public void insertIntroduce(Introduce introduce) {
		dao.insertIntroduce(introduce);
	}
	
	public Introduce selectIntroduce(Introduce introduce) {
		return dao.selectIntroduce(introduce);
	}
	
	public void updateIntroduce(Introduce introduce) {
		dao.updateIntroduce(introduce);
	}

	public void insertSupport(Support support) {
		dao.insertSupport(support);
	}

}
