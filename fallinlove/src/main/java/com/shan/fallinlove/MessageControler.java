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

import com.shan.fallinlove.dto.LetterDto;
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
		List<LetterDto> letterDtos = new ArrayList<LetterDto>();
		
		long userId = (Long)(request.getSession().getAttribute("userId"));
		List<Letter> letters = letterManager.getLettersFromUser(userId, "1");
		
		if (letters != null && letters.size() > 0) {
			List<Long> fromUserIds = new ArrayList<Long>();
			for (Letter letter : letters) {
				fromUserIds.add(letter.getFromUserId());
			}
			
			List<User> fromUsers = usermanager.getUsersByIdList(fromUserIds);
			Map<Long,User> map = new HashMap<Long,User>();
			if (fromUsers != null && fromUsers.size() > 0) {
				for (User user : fromUsers) {
					map.put(user.getUserId(), user);
				}
				
				for (Letter letter : letters) {
					User fromUser = map.get(letter.getFromUserId());
					
					LetterDto letterDto = new LetterDto();
					letterDto.setLetter(letter);
					letterDto.setFromUser(fromUser);
					
					letterDtos.add(letterDto);
				}
			}
		}
		
		model.addAttribute("notReadLetters", letterDtos);
		return "message";
	}
	
	@RequestMapping(value="/inbox",method=RequestMethod.GET)
	public String getInbox(Model model,HttpServletRequest request){
		long userId = (Long)(request.getSession().getAttribute("userId"));
		List<Letter> letters = letterManager.getLettersFromUser(userId, "2");
		
		List<LetterDto> letterDtos = new ArrayList<LetterDto>();
		
		if (letters != null && letters.size() > 0) {
			List<Long> fromUserIds = new ArrayList<Long>();
			for (Letter letter : letters) {
				fromUserIds.add(letter.getFromUserId());
			}
			
			List<User> fromUsers = usermanager.getUsersByIdList(fromUserIds);
			Map<Long,User> map = new HashMap<Long,User>();
			if (fromUsers != null && fromUsers.size() > 0) {
				for (User user : fromUsers) {
					map.put(user.getUserId(), user);
				}
				
				for (Letter letter : letters) {
					User fromUser = map.get(letter.getFromUserId());
					
					LetterDto letterDto = new LetterDto();
					letterDto.setLetter(letter);
					letterDto.setFromUser(fromUser);
					
					letterDtos.add(letterDto);
				}
			}
		}
		
		model.addAttribute("inboxLetters", letterDtos);
		
		return "messageInbox";
	}
	
	@RequestMapping(value="/outbox",method=RequestMethod.GET)
	public String getOutbox(Model model,HttpServletRequest request){
		long userId = (Long)(request.getSession().getAttribute("userId"));
		List<Letter> letters = letterManager.getLettersToUser(userId);
		
		List<LetterDto> letterDtos = new ArrayList<LetterDto>();
		
		if (letters != null && letters.size() > 0) {
			List<Long> toUserIds = new ArrayList<Long>();
			for (Letter letter : letters) {
				toUserIds.add(letter.getToUserId());
			}
			
			List<User> toUsers = usermanager.getUsersByIdList(toUserIds);
			Map<Long,User> map = new HashMap<Long,User>();
			if (toUsers != null && toUsers.size() > 0) {
				for (User user : toUsers) {
					map.put(user.getUserId(), user);
				}
				
				for (Letter letter : letters) {
					User toUser = map.get(letter.getFromUserId());
					
					LetterDto letterDto = new LetterDto();
					letterDto.setLetter(letter);
					letterDto.setFromUser(toUser);
					
					letterDtos.add(letterDto);
				}
			}
		}
		
		model.addAttribute("outboxLetters", letterDtos);
		
		return "messageOutbox";
	}

}
