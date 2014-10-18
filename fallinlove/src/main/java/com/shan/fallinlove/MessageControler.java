package com.shan.fallinlove;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/msg")
public class MessageControler {
	
	@RequestMapping(value="/notRead",method=RequestMethod.GET)
	public String getNotRead(Model model,String userId){
		//search id info
		System.out.println("1111");
		return "message";
	}

}
