package com.occu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.occu.service.UserService;
import com.occu.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/joinform")
	public String joinForm() {

		return "user/joinForm";
	}
	
	/********id check*******/
	@ResponseBody
	@RequestMapping(value="/checkId", method = {RequestMethod.GET, RequestMethod.POST})
	public String checkId(@RequestParam(value="userId") String id) {
		System.out.println("UserCTR idcheck: " + id);
		
		String response = userService.checkId(id);
		
		System.out.println("ctr : " + response);
		
		return response;
	}
	
	/*******nickName check******/
	@ResponseBody
	@RequestMapping(value="/checknickname", method = {RequestMethod.GET, RequestMethod.POST})
	public String checkNickName(@RequestParam("nickName") String nickName) {
		System.out.println("UserControllercheck: " + nickName);
		
		String response = userService.checkNickName(nickName);
		return response;
	}
	
	
	/********* 회원가입 *********/
	@RequestMapping(value="/join", method= {RequestMethod.GET, RequestMethod.POST})
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("join: " + userVo.toString());
		int result = userService.join(userVo);
		
		if (result == 1) {
			return	"redirect:/";			
		} else {
			return "rediret:/user/join?result=fail";
		}
		
	}
	
	
}
