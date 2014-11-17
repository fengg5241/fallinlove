package com.shan.fallinlove;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shan.fallinlove.model.User;
import com.shan.manager.UserManager;

@Controller
public class UserSearchController {

	private static final Logger logger = LoggerFactory.getLogger(UserSearchController.class);
	
	@Autowired
	private UserManager usermanager;
	
	@RequestMapping(value = "userSearch",method = RequestMethod.GET)
	public String goToUserSearch(HttpServletRequest request, Model model) {
		long userId = (Long)(request.getSession().getAttribute("userId"));
		User loginUser = (User)(request.getSession().getAttribute("loginUser"));
		List<User> searchUsers = null;
		if (loginUser.getSex().equals('0')) {
			searchUsers = usermanager.defaultSearchWomen(userId);
		}else {
			searchUsers = usermanager.defaultSearchMen(userId);
		}
//		"1:99|2:22.30|3:155.170|23:1"
		model.addAttribute("searchUsers", searchUsers);
		return "userSearch";
	}
	
	@RequestMapping(value = "searchUserByCondition",method = RequestMethod.POST)
	@ResponseBody
	public String searchUserByCondition(HttpServletRequest request, Model model) {
		long userId = (Long)(request.getSession().getAttribute("userId"));
		User loginUser = (User)(request.getSession().getAttribute("loginUser"));
		List<User> searchUsers = null;
		if (loginUser.getSex().equals('0')) {
			searchUsers = usermanager.defaultSearchWomen(userId);
		}else {
			searchUsers = usermanager.defaultSearchMen(userId);
		}
//		"1:99|2:22.30|3:155.170|23:1"
		model.addAttribute("searchUsers", searchUsers);
		return "userSearch";
	}
}
