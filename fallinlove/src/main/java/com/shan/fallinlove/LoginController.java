package com.shan.fallinlove;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.shan.fallinlove.model.LoginForm;
import com.shan.manager.UserManager;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private UserManager usermanager;
	
	@RequestMapping(value = "login",method = RequestMethod.POST)
	public String home(LoginForm loginForm,BindingResult result,HttpServletRequest request,Map model) {
		logger.info(loginForm.getUserName() +"---"+loginForm.getPassword());
		if (result.hasErrors()) {
			return "login";
		}
		
		LoginForm loginUser = null;
		try {
			loginUser = usermanager.getLoginUserByName(loginForm.getUserName());
		} catch (EmptyResultDataAccessException e) {
			return "login";
		}
		
		if (!loginForm.getPassword().equals(loginUser.getPassword())) {
			return "login";
		}
		request.getSession().setAttribute("userId", loginUser.getUserId());
		return "redirect:/myself";
	}
	
	@RequestMapping(value = "login",method = RequestMethod.GET)
	public String loginOut(Model model) {
		return "login";
	}
}
