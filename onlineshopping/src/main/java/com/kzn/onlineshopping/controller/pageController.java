package com.kzn.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class pageController {
	
	@RequestMapping(value= {"/", "/home", "/index"})	
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting","welcome to spring web mvc");
		return mv;
	}
	
	
//	@RequestMapping(value=  "/test")	
//	public ModelAndView test(@RequestParam(value="greeting", required =false)String greeting) {
//		
//		if(greeting ==null) {
//			greeting =" Hello Greeting is not pass";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting",greeting);
//		return mv;
//	}
	
//	@RequestMapping(value= "/test/{greeting}")	
//	public ModelAndView test(@PathVariable(value="greeting")String greeting) {
//		
//		if(greeting ==null) {
//			greeting =" Hello Greeting is not pass";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting",greeting);
//		return mv;
//	}

	
	
	
	

}
