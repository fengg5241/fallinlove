package com.shan.fallinlove;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shan.manager.UserManager;

@Controller
public class UserSearchController {

	private static final Logger logger = LoggerFactory.getLogger(UserSearchController.class);
	
	@Autowired
	private UserManager usermanager;
	
	@RequestMapping(value = "userSearch",method = RequestMethod.GET)
	public String goToUserSearch() {
		
		return "userSearch";
	}
}
