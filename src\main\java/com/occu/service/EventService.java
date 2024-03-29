package com.occu.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.occu.dao.EventDao;
import com.occu.vo.EventVo;

@Service
public class EventService {

	@Autowired
	private EventDao eventDao;
	

	// form data store (insert)
	public int restore(MultipartFile file, EventVo eventVo) {  //file을 다루는 multipartFile과 Vo 매개변수 선언

		// insert boolean string
		if (eventVo.getFormLmtb() == null) {
			eventVo.setFormLmtb("off");
		}
		if (eventVo.getFormStockOpen() == null) {
			eventVo.setFormStockOpen("off");
		}
		
		System.out.println("EventService restore1: " + file.getOriginalFilename());
		
		// db 저장할 정보 수집
		String saveDir = "/Users/wangyeseul/javaStudy/upload/";
		
		// 오리지널 파일이름
		String orgName = file.getOriginalFilename();
		System.out.println("orgName: " + orgName);
		
		// 파일 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));
		System.out.println("exName: " + exName);
		
		// 서버 저장 파일 이름		숫자					+		알 수 없는 문자열
		String saveName = System.currentTimeMillis()+UUID.randomUUID().toString() + exName;
		System.out.println("saveName: " + saveName);
		
		// 서버 파일 패스 --> 저장 경로
		String filePath = saveDir + "/" + saveName;
		System.out.println("filePath: " + filePath);
		
		
		// 서버 하드 디스크 저장
		try {System.out.println("get here");
			
			byte[] fileData = file.getBytes();
			System.out.println("fileData: " + fileData);
			
			OutputStream out = new FileOutputStream(filePath);
			System.out.println("out: " + out);
			
			BufferedOutputStream bos = new BufferedOutputStream(out);
			System.out.println("bos: " + bos);
			
			bos.write(fileData);
			System.out.println("done here");			
			bos.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// db 저장
		eventVo.setformPath(saveName);
		System.out.println("EventService restore2: " + eventVo);

		return eventDao.insertFormData(eventVo);
	}

	// form number data select (get url)
	public EventVo selectForm(EventVo eventVo) {
		System.out.println("EventService selectForm1: " + eventVo);
		EventVo vo = eventDao.selectFormNo(eventVo);
		System.out.println("EventService selectForm2: " + eventVo);
		
		return vo;
	}
	
	// form data select (go forminfo)
	public EventVo selectFormInfo(int formNo) {
		System.out.println("EventService selectFormToInfo1: " + formNo);
		EventVo dataVo = eventDao.selectFormData(formNo);
		System.out.println("EventService selectFormToInfo2: " + dataVo);
		
		return dataVo;
	}
	
	
	
	// form to order (insert) (진행중)
//	public String orderGo (EventVo eventVo) {
//		
//		// insert boolean string
//		if (eventVo.getFormLmtb() == null) {
//			eventVo.setFormLmtb("off");
//		}
//		if (eventVo.getFormStockOpen() == null) {
//			eventVo.setFormStockOpen("off");
//		}
//		
//		System.out.println("EventService orderGo1: " + eventVo);
//		
//		return "";
//	}
	
	
	
	// form number data select (get url)
	public List<EventVo> formList() {
		System.out.println("EventService formList1: ");
		List<EventVo> voList = eventDao.formList();
		System.out.println("EventService formList2: " + voList);
		
		return voList;
	}
	
	
}