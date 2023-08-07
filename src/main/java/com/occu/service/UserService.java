package com.occu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.occu.dao.UserDao;
import com.occu.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	//checkid
	public String checkId(String id) {
		System.out.println("UserService checkId");
		String response = "";
		UserVo userVo = userDao.selectOne(id);
		
		if (userVo == null) {
			response = "can";
		} else {
			response = "cant";
		}
		
		return response;
	}
	
	
	// checkNickName
	public String checkNickName(String nickName) {
		System.out.println("UserService checknickName");
		String response = "";
		UserVo userVo = userDao.selectNickName(nickName);
		
		if (userVo == null) {
			response = "can";
		} else if(userVo.getNickName() == "관리자" && userVo != null) {
			response = "cant";
		}
		
		return response;
	}
	
	
	// login
	public UserVo login(UserVo userVo) {
		System.out.println("userService login");
		
		return userDao.selectUser(userVo);
	}
	
	// join
	public int join(UserVo userVo) {
		System.out.println("userService: " + userVo);
		
		int bYear = userVo.getbYear();
		int bMon = userVo.getbMon();
		int bDay = userVo.getbDay();
		
		String birthDate = bYear + "-" + bMon + "-" + bDay;
//		System.out.println("birthDate ck : " + birthDate + ", type : " + birthDate.getClass().getName());
		userVo.setBirthDate(birthDate);
		
		return userDao.signUser(userVo);
	}
}
