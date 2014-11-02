package com.shan.fallinlove;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shan.fallinlove.model.User;
import com.shan.manager.UserManager;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserManager usermanager;
	
	@RequestMapping(value="/search/{userId}",method=RequestMethod.GET)
	public String add(Model model,@PathVariable("userId") long userId){
		//search id info
		User user= usermanager.getUserBasicInfoById(userId);
		model.addAttribute("operatingUser", user);
		return "otherBasic";
	}
	
	@RequestMapping(value="/selfBasic/{userId}",method=RequestMethod.GET)
	public String showSelfBasicInfo(Model model,@PathVariable("userId") long userId){
		//search id info
		return "selfBasic";
	}
	
	@RequestMapping(value="/myphoto/{userId}",method=RequestMethod.GET)
	public String showMyPhoto(Model model,@RequestParam("userId") long userId){
		//search id info
		return "myphoto";
	}
	
	@RequestMapping(value="/stampcount",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Long> getStampCount(HttpServletRequest request){
		long userId = (Long)(request.getSession().getAttribute("userId"));
		long stampCount = usermanager.getStampCount(userId);
		Map<String,Long> map =new HashMap<String,Long>();
		map.put("count", stampCount);
		return map;
	}
}
