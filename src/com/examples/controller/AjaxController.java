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
public class AjaxController {

	@RequestMapping("AjaxWithJqueryExample")
	public String handleAjaxRequest(){
		String viewWithAjax="AjaxWithJqueryExample";
		return viewWithAjax;
	}
	
	
}

