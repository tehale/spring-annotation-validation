/**
 * 
 */
package com.examples.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ankush
 *
 */
@Controller
public class webPageController {
	String webpageController="WebsiteTemplate";
	String ajaxExampleViewName="ajax_example";
	
	/**
	 * @return
	 */
	@RequestMapping("/ajaxExample")
	public String ajaxExampleHandler(){
		
		
		return ajaxExampleViewName;
	}
	
	/**
	 * @return
	 */
	@RequestMapping("webpagelayout")
	public String webTemplate(){
		
		return webpageController;
		
	}
	
	
	
	
}
