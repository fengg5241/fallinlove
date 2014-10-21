package com.shan.fallinlove;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shan.fallinlove.model.User;
import com.shan.manager.UserManager;

@Controller
public class MyselfController {
	private static final Logger logger = LoggerFactory.getLogger(MyselfController.class);
	
	@Autowired
	private UserManager usermanager;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "myself", method = RequestMethod.GET)
	public String goToMyself(Model model) {
		
		//search all the see me users
		List<User> seeMeUsersById = usermanager.getSeeMeUsersById(4L);
		return "myself";
	}
}
