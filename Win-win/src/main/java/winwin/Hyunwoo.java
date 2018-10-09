package winwin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hyunwoo {

	@RequestMapping(value="/hyunwoo")
	public String gitTest() {
		
		return "hyunwoo";
	}
	
}
