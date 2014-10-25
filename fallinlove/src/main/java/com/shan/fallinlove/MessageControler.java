package com.shan.fallinlove;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shan.fallinlove.model.Letter;
import com.shan.fallinlove.model.User;
import com.shan.manager.LetterManager;
import com.shan.manager.UserManager;

@Controller
@RequestMapping("/msg")
public class MessageControler {
	
	private static final Logger logger = LoggerFactory.getLogger(MessageControler.class);
	
	@Autowired
	private LetterManager letterManager;
	
	@Autowired
	private UserManager usermanager;
	
	@RequestMapping(value="/notRead",method=RequestMethod.GET)
	public String getNotRead(Model model,HttpServletRequest request){
		long userId = (long)(request.getSession().getAttribute("userId"));
		List<Letter> letters = letterManager.getLettersFromUser(userId, "1");
		Map<Long,User> map = new HashMap<Long,User>();
		if (letters != null && letters.size() > 0) {
			List<Long> fromUserIds = new ArrayList<Long>();
			for (Letter letter : letters) {
				fromUserIds.add(letter.getFromUserId());
			}
			
			List<User> fromUsers = usermanager.getUsersByIdList(fromUserIds);
			if (fromUsers != null && fromUsers.size() > 0) {
				for (User user : fromUsers) {
					map.put(user.getUserId(), user);
				}
			}
		}
		
		model.addAttribute("notReadLetters", letters);
		model.addAttribute("userMap", map);
		return "message";
	}
	
	@RequestMapping(value="/inbox",method=RequestMethod.GET)
	public String getInbox(Model model,HttpServletRequest request){
		long userId = (long)(request.getSession().getAttribute("userId"));
		List<Letter> letters = letterManager.getLettersFromUser(userId, "2");
		model.addAttribute("inboxLetters", letters);
		return "messageInbox";
	}
	
	@RequestMapping(value="/outbox",method=RequestMethod.GET)
	public String getOutbox(Model model,HttpServletRequest request){
		long userId = (long)(request.getSession().getAttribute("userId"));
		List<Letter> letters = letterManager.getLettersToUser(userId);
		model.addAttribute("outboxLetters", letters);
		return "messageOutbox";
	}

}
