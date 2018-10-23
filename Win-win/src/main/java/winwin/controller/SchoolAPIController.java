package winwin.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/apply")
public class SchoolAPIController {

	 private static final Logger logger = LoggerFactory.getLogger(SchoolAPIController.class);
	   
	   @RequestMapping(value="/schoolAPI", method=RequestMethod.GET)
	   public void apitest() {
	      
	   }
	   
	   @RequestMapping(value="/schoolAPI", method=RequestMethod.POST)
	   public ModelAndView apitestResult(HttpServletResponse resp)  throws IOException {
	      resp.setContentType("application/json; charset=utf-8");

	        URL url = new URL("http://www.career.go.kr/cnet/openapi/getOpenApi?apiKey=3d2366be6096ee283bd1d6eaede2a14f&svcType=api&svcCode=SCHOOL&contentType=json&gubun=univ_list&thisPage=1&perPage=10000");
	        
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        
	        System.out.println("Response code: " + conn.getResponseCode());
	        
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        
	        
	        
	        rd.close();
	        conn.disconnect();
	        System.out.println(sb.toString());
	        
	        String result = sb.toString();
	        

	        ModelAndView mav = new ModelAndView();
	        mav.setViewName("jsonView");
	        mav.addObject("data", result);
	        

	      return mav;
	   }
}

