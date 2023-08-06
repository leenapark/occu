package com.occu.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.occu.vo.UserVo;


@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;

	// checkId
	public UserVo selectOne(String id) {
		System.out.println("UserDao checkId: " + id);
		
		UserVo userVo = sqlSession.selectOne("user.selectById", id);
		System.out.println("userVo idcheck: " + userVo);
		
		return userVo;
	}

	// checknickname
	public UserVo selectNickName(String nickName) {
		System.out.println("UserDao checknickname: " + nickName);
		
		UserVo userVo = sqlSession.selectOne("user.selectByNickName", nickName);
		System.out.println(userVo);
		
		return userVo;
	}
	
	
	// 로그인 --> 회원 정보 가져오기
	public UserVo selectUser(UserVo userVo) {
		System.out.println("userDao selectUser : " + userVo.toString());
		
		UserVo vo = sqlSession.selectOne("user.login", userVo);
		
		System.out.println("dao : " + vo.toString());
		
		return vo;
	}
	
	// 회원가입
	public int signUser(UserVo userVo) {
		System.out.println("userDao : " + userVo.toString());
		
		
		return sqlSession.insert("user.signUp", userVo);
	}
	
}
