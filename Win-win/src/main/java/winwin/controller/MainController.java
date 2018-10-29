package winwin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import winwin.dto.JobopenBasic;
import winwin.dto.NoticeBoard;
import winwin.dto.QnaBoard;
import winwin.service.ApplyMenuService;
import winwin.service.JobopenService;
import winwin.service.MainService;
import winwin.util.Paging;

@Controller
@RequestMapping(value="/main")
public class MainController {
	
	@Autowired MainService mainService;
	@Autowired JobopenService jobopenService;
	@Autowired ApplyMenuService applyMenuService;
	
	@RequestMapping(value="/usermain", method=RequestMethod.GET)
	public void main(
			Model model,
			@RequestParam(required=false, defaultValue="0") int curPage,
			@RequestParam(required=false, defaultValue="10") int listCount,
			@RequestParam(required=false, defaultValue="10") int pageCount) {			
		Paging paging = jobopenService.getPaging(curPage, listCount, pageCount);
		model.addAttribute("paging", paging);
		
		List<JobopenBasic> list = jobopenService.selectBasic(paging);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="/adminmain", method=RequestMethod.GET)
	public void adminmain(Model model) { 
		
		List<JobopenBasic> applylist = applyMenuService.getJobopenBasic();
		model.addAttribute("applylist", applylist);
		
//		
//		//공지사항 리스트 띄우기
//		mainService.getNoticeBoard();
		
		List<NoticeBoard> noticelist = applyMenuService.getNoticeBoard();
		model.addAttribute("noticelist", noticelist);
//		
//		//문의사항 리스트 띄우기 
//		mainService.getQnABoard();
		
		List<QnaBoard> qnalist = applyMenuService.getQnaBoard();
		model.addAttribute("qnalist", qnalist);
		
//		
//		//통계관리 미리보기 
//				
//		//채용공고별 지원자 수 세기 
//		mainService.countApplicants(jobopenBasic);

		//Q&A 답변이 완료되지않은 문의사항 갯수세기 
//		 mainService.countQnAUnanswered(qna);
		
	}
	
}

