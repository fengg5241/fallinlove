package com.shan.fallinlove;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shan.fallinlove.model.LoginForm;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "login",method = RequestMethod.POST)
	public String home(LoginForm loginForm) {
		logger.info(loginForm.getName() +"---"+loginForm.getPassword());
		return "myself";
	}
	
	@RequestMapping(value = "login",method = RequestMethod.GET)
	public String loginOut(Model model) {
		return "login";
	}
}
