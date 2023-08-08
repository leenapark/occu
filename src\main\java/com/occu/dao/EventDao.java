package com.occu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.occu.vo.EventVo;

@Repository
public class EventDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	
	public int insertFormData(EventVo eventVo) {
		System.out.println("EventDao1: " + eventVo);

		int result = sqlSession.insert("eventSeller.insertForm", eventVo);
		System.out.println("EventDao2: " + eventVo);
		
		return result;
		
	}
	
	public EventVo selectFormNo(EventVo eventVo) {
		
		System.out.println("EventDao selectFormNo: " + eventVo);
		
		EventVo vo = sqlSession.selectOne("eventSeller.selectForm", eventVo);
		System.out.println("EventDao formNo check: " + vo.toString());
		
		return vo;
	}
	
	public EventVo selectFormData(int formNo) {
		System.out.println("EventDao selectFormData1: " + formNo);
		
		EventVo vo = sqlSession.selectOne("eventSeller.selectFormInfo", formNo);
		System.out.println("EventDao selectFormData2: " + vo.toString());
		
		return vo;
	}

	
	public List<EventVo> formList(String str) {
		
		System.out.println("EventDao formList: " + str);
		
		Map<String, Object> formMap = new HashMap<String, Object>();
		formMap.put("str", str);
		
		List<EventVo> voList = sqlSession.selectList("eventSeller.formList", formMap);
		System.out.println("EventDao formList check: " + voList.toString());
		
		return voList;
	}
	
}
