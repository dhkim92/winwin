package winwin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author 김동현
 * @category 채용 공고
 * 
 * Last Update : 18.10.10 
 * 
 * memo : start winwin project
 *
 */

@Controller
@RequestMapping(value="/jobOpen")
public class JobOpenController {
	
	@RequestMapping(value="/basicInfo", method=RequestMethod.GET)
	public void basic() {
		
	}
	
}
