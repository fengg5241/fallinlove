package com.shan.fallinlove;

import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shan.fallinlove.model.User;

@Controller
public class RegisterController {
	private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);
	
	@RequestMapping(value = "register",method = RequestMethod.POST)
	public String home(User user) {
		System.out.println(user.toString());
		
		return "redirect:/myself";
	}
	
	@RequestMapping(value = "register",method = RequestMethod.GET)
	public String processRegistration(Map model) {
		User user = new User();
		model.put("user", user);
		return "register";
	}
}
