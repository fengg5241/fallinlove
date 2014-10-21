package com.shan.fallinlove;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shan.fallinlove.model.LoginForm;
import com.shan.fallinlove.model.User;
import com.shan.manager.UserManager;

@Controller
public class RegisterController {
	private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);
	
	@Autowired
	private UserManager usermanager;
	
	@RequestMapping(value = "register",method = RequestMethod.POST)
	public String registerUser(User user) {
		
		usermanager.addUser(user);
		
		return "redirect:/myself";
	}
	
	@RequestMapping(value = "register",method = RequestMethod.GET)
	public String processRegistration(Map model) {
		User user = new User();
		model.put("user", user);
		return "register";
	}
}
