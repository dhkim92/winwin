package winwin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GitTest {

	@RequestMapping(value="/")
	public String gitTest() {
		
		return "gitTest";
	}
}
