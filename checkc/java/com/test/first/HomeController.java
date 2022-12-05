package com.test.first;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	

	@RequestMapping("/join.do")
		public void join() {
			
		}
	
	@RequestMapping("/pagenext.do")
		public String pagenext(String nextPage) {
		return nextPage;
		
	}
	
	@RequestMapping("/main")
	public void main() {
		
	}
	
	}
	

