package com.shan.fallinlove.dto;

import com.shan.fallinlove.model.Letter;
import com.shan.fallinlove.model.User;

public class LetterDto {

	private Letter letter;
	
	private User fromUser;
	
	private User toUser;
	
	public Letter getLetter() {
		return letter;
	}

	public void setLetter(Letter letter) {
		this.letter = letter;
	}

	public User getFromUser() {
		return fromUser;
	}

	public void setFromUser(User fromUser) {
		this.fromUser = fromUser;
	}

	public User getToUser() {
		return toUser;
	}

	public void setToUser(User toUser) {
		this.toUser = toUser;
	}
}
