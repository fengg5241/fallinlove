package com.shan.fallinlove;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shan.manager.LetterManager;

@Controller
@RequestMapping("/msg")
public class MessageControler {
	
	private static final Logger logger = LoggerFactory.getLogger(MessageControler.class);
	
	@Autowired
	private LetterManager letterManager;
	
	@RequestMapping(value="/notRead",method=RequestMethod.GET)
	public String getNotRead(Model model,String userId){
		//search id info
		return "message";
	}
	
	@RequestMapping(value="/inbox",method=RequestMethod.GET)
	public String getInbox(Model model,String userId){
		//search id info
		return "messageInbox";
	}
	
	@RequestMapping(value="/outbox",method=RequestMethod.GET)
	public String getOutbox(Model model,String userId){
		//search id info
		return "messageOutbox";
	}

}
