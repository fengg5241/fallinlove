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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shan.fallinlove.dto.LetterDto;
import com.shan.fallinlove.model.Letter;
import com.shan.fallinlove.model.LetterType;
import com.shan.fallinlove.model.User;
import com.shan.manager.LetterManager;
import com.shan.manager.UserManager;
import com.shan.util.Constant;

@Controller
@RequestMapping("/msg")
public class MessageControler {
	
	private static final Logger logger = LoggerFactory.getLogger(MessageControler.class);
	
	@Autowired
	private LetterManager letterManager;
	
	@Autowired
	private UserManager usermanager;
	
	/** ======================================发信模块===================================================*/
	/**
	 * @param model
	 * @param operatingUserId
	 * @return
	 */
	@RequestMapping(value = "/send/{operatingUserId}", method = RequestMethod.GET)
	public String goToSendLetter(Model model,
			@PathVariable("operatingUserId") long operatingUserId,
			HttpServletRequest request) {
		Letter letter = new Letter();
		
		long userId = (Long) (request.getSession().getAttribute("userId"));
		//set up letter info
		boolean withStamp = letterManager.checkEachOtherLetterWithStamp(userId, operatingUserId);
		if (withStamp) {
			letter.setType(Constant.LETTER_TYPE_STAMP);
		}else {
			letter.setType(Constant.LETTER_TYPE_FREE);
		}
		
		letter.setToUserId(operatingUserId);
		model.addAttribute("sendingLetter", letter);
		
		//TODO maybe can use cache
		//set user info ,..
		User toUser = usermanager.getUserBasicInfoById(operatingUserId);
		model.addAttribute("toUser", toUser);
		return "/sendLetter";
	}
	
	@RequestMapping(value="/send",method=RequestMethod.POST)
	public String sendLetter(HttpServletRequest request,Letter letter,Model model){
		System.out.println(letter.toString());
		long userId = (Long)(request.getSession().getAttribute("userId"));
		letter.setFromUserId(userId);
		
		letterManager.addLetter(letter);
		
		if (letter.getWithStamp().equals(Constant.LETTER_TYPE_STAMP)) {
			String stampCountStr = request.getParameter("stampCount");
			long stampCount = Long.parseLong(stampCountStr);
			usermanager.updateStampCount(userId,stampCount - 1);
		}
		
		return "redirect:/msg/sendSuccess";
	}
	
	@RequestMapping(value="/sendSuccess",method=RequestMethod.GET)
	public String goToSuccessPage(HttpServletRequest request,Letter letter,Model model){
		return "sendSuccess";
	}
	
	/** ======================================回信模块===================================================*/
	
	@RequestMapping(value = "/reply/{operatingUserId}", method = RequestMethod.GET)
	public String goToReplyLetter(Model model,
			@PathVariable("operatingUserId") long operatingUserId,
			HttpServletRequest request) {
		Letter letter = new Letter();
		//get all the history chat record
//		letterManager.
		model.addAttribute("operatingUserId", operatingUserId);
		long userId = (Long) (request.getSession().getAttribute("userId"));
		boolean withStamp = letterManager.checkEachOtherLetterWithStamp(userId, operatingUserId);
		if (withStamp) {
			letter.setType(Constant.LETTER_TYPE_STAMP);
		}else {
			letter.setType(Constant.LETTER_TYPE_FREE);
		}
		
		letter.setToUserId(operatingUserId);
		
		model.addAttribute("sendingLetter", operatingUserId);
		return "/sendLetter";
	}
	
	@RequestMapping(value="/reply",method=RequestMethod.POST)
	public String replyLetter(HttpServletRequest request,Letter letter,Model model){
		
		long userId = (Long)(request.getSession().getAttribute("userId"));
		letter.setFromUserId(userId);
		letter.setReplyLetterId(0L);
		letterManager.addLetter(letter);
		return "/sendSuccess";
	}
	
	/** ======================================收件箱功能===================================================*/
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
					User toUser = map.get(letter.getToUserId());
					
					LetterDto letterDto = new LetterDto();
					letterDto.setLetter(letter);
					letterDto.setToUser(toUser);
					
					letterDtos.add(letterDto);
				}
			}
		}
		logger.info(letterDtos.size()+"");
		model.addAttribute("outboxLetters", letterDtos);
		
		return "messageOutbox";
	}
	
	/** ======================================阅读信件功能===================================================*/
	/**
	 * 查看自己发过的信
	 * @param model
	 * @param request
	 * @param operatingUserId
	 * @return
	 */
	@RequestMapping(value="/readSendedLetter/{operatingUserId}",method=RequestMethod.GET)
	public String goToReadLetterPage(Model model,HttpServletRequest request,
			@PathVariable("operatingUserId") long operatingUserId){
		long userId = (Long)(request.getSession().getAttribute("userId"));
		User operatingUser = usermanager.getUserBasicInfoById(operatingUserId);
		model.addAttribute("operatingUser", operatingUser);
		
		List<Letter> historyLetters = letterManager.getAllHistoryLetters(userId, operatingUserId);
		model.addAttribute("historyLetters", historyLetters);

		Letter letter = new Letter();
		boolean withStamp = letterManager.checkEachOtherLetterWithStamp(userId, operatingUserId);
		if (withStamp) {
			letter.setType(Constant.LETTER_TYPE_STAMP);
		}else {
			letter.setType(Constant.LETTER_TYPE_FREE);
		}
		
		model.addAttribute("operatingLetter", letter);
		
		logger.info(historyLetters.toString());
		return "readLetter";
	}
	
	/**
	 * 阅读在收件箱未读的收费的信
	 * @param model
	 * @param request
	 * @param operatingUserId
	 * @return
	 */
	@RequestMapping(value="/readUnReadPayLetter/{operatingUserId}",method=RequestMethod.GET)
	public String goToReadLetterPageFromPayMessageBox(Model model,HttpServletRequest request,
			@PathVariable("operatingUserId") long operatingUserId){
		long userId = (Long)(request.getSession().getAttribute("userId"));
		User operatingUser = usermanager.getUserBasicInfoById(operatingUserId);
		model.addAttribute("operatingUser", operatingUser);
		
		//check user have enough stamps or not
		long stampCount = usermanager.getStampCount(userId);
		if (stampCount <= 0) {
			return "../noStampError";
		}
		
		List<Letter> historyLetters = letterManager.getAllHistoryLetters(userId, operatingUserId);
		model.addAttribute("historyLetters", historyLetters);
		//cost one stamp
		usermanager.updateStampCount(userId, stampCount - 1);
		
		//TODO check historyLetters is null or not
		//update letter status;
		Letter latesteLetter = historyLetters.get(historyLetters.size() - 1);
		latesteLetter.setWithStamp("2");
		latesteLetter.setType(Constant.LETTER_TYPE_STAMP);
		latesteLetter.setStatus("2");
		letterManager.updateProperties(latesteLetter);
		
		Letter letter = new Letter();
		letter.setType(Constant.LETTER_TYPE_STAMP);
		model.addAttribute("operatingLetter", letter);
		
		return "readLetter";
	}
	
	/**
	 * 阅读在收件箱未读的免费的信
	 * @param model
	 * @param request
	 * @param operatingUserId
	 * @return
	 */
	@RequestMapping(value="/readUnReadFreeLetter/{operatingUserId}",method=RequestMethod.GET)
	public String goToReadLetterPageFromFreeMessageBox(Model model,HttpServletRequest request,
			@PathVariable("operatingUserId") long operatingUserId){
		long userId = (Long)(request.getSession().getAttribute("userId"));
		User operatingUser = usermanager.getUserBasicInfoById(operatingUserId);
		model.addAttribute("operatingUser", operatingUser);
		
		List<Letter> historyLetters = letterManager.getAllHistoryLetters(userId, operatingUserId);
		model.addAttribute("historyLetters", historyLetters);
		
		//TODO check historyLetters is null or not
		//update letter status;
		Letter latesteLetter = historyLetters.get(historyLetters.size() - 1);
		latesteLetter.setWithStamp("1");
		latesteLetter.setType(Constant.LETTER_TYPE_STAMP);
		latesteLetter.setStatus("2");
		letterManager.updateProperties(latesteLetter);
		
		Letter letter = new Letter();
		letter.setType(Constant.LETTER_TYPE_STAMP);
		model.addAttribute("operatingLetter", letter);
		
		return "readLetter";
	}

}
