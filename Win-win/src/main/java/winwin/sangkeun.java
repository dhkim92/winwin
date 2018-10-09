package winwin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class sangkeun {

	@RequestMapping(value="/sang")
	public String sang() {
		
		return "sang";
	}
}
