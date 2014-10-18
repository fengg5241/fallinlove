package com.shan.fallinlove;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class MyselfController {
	private static final Logger logger = LoggerFactory.getLogger(MyselfController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "myself", method = RequestMethod.GET)
	public String goToMyself(Model model) {
		
		model.addAttribute("serverTime", "1" );
		
		return "myself";
	}
}
