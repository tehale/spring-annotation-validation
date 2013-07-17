/**
 * 
 */
package com.examples.controller;

/**
 * @author ankush
 *
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class RestServiceController {
	@RequestMapping(value="/GetMovieDetails", method = RequestMethod.GET)
	public String getMovie() {
		return "GetMovieDetails";
 
	}
	
	@RequestMapping(value="movie/{name}", method = RequestMethod.GET)
	public String getMovie(@PathVariable String name, ModelMap model) {
 
		model.addAttribute("movie", name);
		return "list";
 
	}
	
}

