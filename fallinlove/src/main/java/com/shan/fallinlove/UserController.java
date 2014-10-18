package com.shan.fallinlove;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/user")
public class UserController {
	@RequestMapping(value="/search/{userId}",method=RequestMethod.GET)
	public String add(Model model,String userId){
		//search id info
		return "otherBasic";
	}
	
	@RequestMapping(value="/selfBasic/{userId}",method=RequestMethod.GET)
	public String showSelfBasicInfo(Model model,String userId){
		//search id info
		return "selfBasic";
	}
	
	@RequestMapping(value="/myphoto/{userId}",method=RequestMethod.GET)
	public String showMyPhoto(Model model,String userId){
		//search id info
		return "myphoto";
	}
}
