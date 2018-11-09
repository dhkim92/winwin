package winwin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class QnaInterceptor extends HandlerInterceptorAdapter{

	private static Logger logger
		= LoggerFactory.getLogger(QnaInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
				
		logger.info(" + + + 인터셉터 시작 + + + ");
		logger.info(request.getRequestURI());
		String uri = request.getRequestURI();
		
		HttpSession session = request.getSession();
		if(uri.equals("/qna/update")) {
			logger.info("update!");
			int qnano = Integer.parseInt(request.getParameter("qnaNo"));
			
		}
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
				
		logger.info(" + + + 인터셉터 종료 + + + ");
	}
}
