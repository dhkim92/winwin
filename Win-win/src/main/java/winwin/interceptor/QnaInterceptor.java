package winwin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import winwin.dto.QnaBoard;
import winwin.service.QnaBoardService;

public class QnaInterceptor extends HandlerInterceptorAdapter{

	private static Logger logger
		= LoggerFactory.getLogger(QnaInterceptor.class);
	
	private @Autowired QnaBoardService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
				
		logger.info(" + + + 인터셉터 시작 + + + ");
		logger.info(request.getRequestURI());
		String uri = request.getRequestURI();
		
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
		QnaBoard board = new QnaBoard();
		board.setQnaNo(qnaNo);

		HttpSession session = request.getSession();
		if(uri.equals("/qna/update")) {
			logger.info("update!");
			QnaBoard resBoard = service.view(board);
			if(session.getAttribute("id")!=null && session.getAttribute("id").equals(resBoard.getUserId())) {
				logger.info("update 정상");
				return true;
			}
		}
		if(uri.equals("/qna/delete")) {
			logger.info("delete!");
			QnaBoard resBoard = service.view(board);
			if(session.getAttribute("id")!=null && session.getAttribute("id").equals(resBoard.getUserId())) {
				logger.info("delete 정상");
				return true;
			}
			if((boolean)session.getAttribute("adminLogin")) {
				logger.info("delete 정상");
				return true;
			}
		}
        response.sendRedirect("/qna/error?qnaNo="+qnaNo);
		return false;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
				
		logger.info(" + + + 인터셉터 종료 + + + ");
	}
}
