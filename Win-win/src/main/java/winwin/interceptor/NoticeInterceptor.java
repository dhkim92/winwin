package winwin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import winwin.dto.NoticeBoard;
import winwin.service.NoticeBoardService;

public class NoticeInterceptor extends HandlerInterceptorAdapter{
		
	private static Logger logger
		= LoggerFactory.getLogger(NoticeInterceptor.class);
	
	private @Autowired NoticeBoardService service; 
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		logger.info(" + + + 인터셉터 시작 + + + ");

		int noticeno = Integer.parseInt(request.getParameter("noticeno"));
//		NoticeBoard board = new NoticeBoard();
//		board.setNoticeno(noticeno);
//		NoticeBoard resBoard = service.view(board);
      String uri = request.getRequestURI();
      HttpSession session = request.getSession();
        
		if(uri.equals("/qna/download")) {
			if(session.getAttribute("adminLogin")!=null) return true;
			if(session.getAttribute("login")!=null) return true;			
		}
		
		response.sendRedirect("/notice/error?noticeno="+noticeno);
		return false;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		logger.info(" + + + 인터셉터 종료 + + + ");
	}
}
