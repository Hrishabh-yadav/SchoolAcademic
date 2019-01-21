package com.sms.controllers;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.sms.services.MailServiceImpl;



@Controller
public class WebPageController {
	
	@Autowired
	private MailServiceImpl mailServiceImpl;
	
	@GetMapping("/")
	public String index() {
		return "/index";
	}
}
