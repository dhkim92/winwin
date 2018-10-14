package winwin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import winwin.dto.JobopenBasic;
import winwin.service.MainService;

@Controller
public class MainController {
	
	@Autowired MainService mainService;
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public void main() { 
		
		//채용공고 리스트 띄우기 
		mainService.getJobopenBoard();
	}
	
	@RequestMapping(value="/adminmain", method=RequestMethod.GET)
	public void adminmain(JobopenBasic jobopenBasic /*, QNA qna */) { 
		
		//채용공고 게시판 리스트 띄우기 
		mainService.getJobopenBoard();
		
		//공지사항 리스트 띄우기
		mainService.getNoticeBoard();
		
		//문의사항 리스트 띄우기 
		mainService.getQnABoard();
		
		//통계관리 미리보기 
				
		//채용공고별 지원자 수 세기 
		mainService.countApplicants(jobopenBasic);

		//Q&A 답변이 완료되지않은 문의사항 갯수세기 
//		 mainService.countQnAUnanswered(qna);
		
	}
	
}

