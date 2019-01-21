package com.sms;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;

import com.sms.services.MailServiceImpl;

public class A {
	
	@Autowired
	private MailServiceImpl mailServiceImpl;
	
	public void send() throws MessagingException {
		
	}

}
