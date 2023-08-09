package com.occu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.occu.service.UserService;
import com.occu.vo.UserVo;

@Controller
public class MainController {
	
		@Autowired
		private UserService userService;
		
		//
		@RequestMapping("/")
		public String occuMain() {
			System.out.println("occu main");
			
			
			return "main/landing";
		}
		

		@RequestMapping("/home")
		@CrossOrigin(origins = "*", allowedHeaders = "*")
		public String index() {
			System.out.println("home");
			return "main/index";
		}
		
		/******** login *********/
		@RequestMapping("/login")
		public String login(@ModelAttribute UserVo userVo, HttpSession session) {
			System.out.println("UserCtr login");
			
			// attribute 확인
			System.out.println("ctr userVo : " + userVo.toString());
			
			UserVo authVo = userService.login(userVo);
			
			System.out.println("login ctr result : " + authVo);
			if (authVo != null) {
				session.setAttribute("authUser", authVo);
				System.out.println("session check: " + session.getAttributeNames());
				
				return "redirect:/home";
			} else {
				return "redirect:loginform?result=fail";
			}
			
		}
}


