package org.lanqiao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class LiveController {
	
	@RequestMapping("course")
	public String live(){
		return "course";
	}

}
