package com.occu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.occu.service.EventService;
import com.occu.vo.EventVo;
import com.occu.vo.UserVo;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	// event main 페이지
	@RequestMapping("/")
	public String event(Model model, @RequestParam(value="str", required=false) String str, HttpSession session, EventVo eventVo) {

		// event main user info select
		System.out.println("event main");
		
		List<EventVo> formList = eventService.formList(str);
		System.out.println("main formList: " + formList.toString());
		
		model.addAttribute("formList", formList);
		System.out.println("EventController main2: " + formList);
		System.out.println("EventController main2: " + model);
		
		return "event/eventMain";
	}
	
	
	// when buyers click menu event
//	@RequestMapping("/")
//	public String event() {
//		System.out.println();
//	}
	
	
	

	// 판매자 event form 페이지
	@RequestMapping("/form")
	public String eventForm() {
		System.out.println("event/form");
		return "event/eventForm";
	}
	
	// 판매자 폼 insert
	@RequestMapping(value="/info", method = {RequestMethod.GET, RequestMethod.POST})
	public String eventInfo(@ModelAttribute EventVo eventVo, HttpSession session) {  //1.eventInfo의 매개변수를 정해줌
		System.out.println("EventController info start");
		
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		int userNo = userVo.getUserNo();
		String userId = userVo.getUserId();
		String nickName = userVo.getNickName();
		System.out.println("EventController info1: " + eventVo.toString());

		eventVo.setUserNo(userNo);
		eventVo.setUserId(userId);
		eventVo.setNickName(nickName);
		System.out.println("EventController eventVo: " + eventVo.toString());
		
		MultipartFile formFile = eventVo.getFormFile();
		System.out.println("formFile check: " + formFile + ", " + formFile.getClass().getName());

		int result = eventService.restore(formFile, eventVo);  //3.eventSeervice의 restore의 formFile, Vo 매개변수를 받는다.
		System.out.println("formPath check: " + eventVo.getFormPath());
		System.out.println("EventController info2: " + eventVo.toString());
		System.out.println("redirect result check: " + result);
		
		if (result == 1) {
			// select service 연결
			EventVo vo = eventService.selectForm(eventVo);
			System.out.println("eventCtr formNo ck: " + vo.toString());
			int num = vo.getFormNo();
			return "redirect:/event/infoOk/" + num;
		} else {
			return "redirect:/event/form?result=fail";
		}
	
	}
	
	// 판매자 event infoOk 넘버 페이지 (폼 select)
	@RequestMapping(value="/infoOk/{formNo}", method = {RequestMethod.GET, RequestMethod.POST})
	public String infoOk(@PathVariable("formNo") int formNo, Model model) {
		
		System.out.println("event/infoOk");
		EventVo dataVo = eventService.selectFormInfo(formNo);
		
		System.out.println("EventController infoOk dataVo: " + dataVo);
//		System.out.println("EventController infoOk eventVo: " + eventVo);
		
//		model.addAttribute("formData", dataVo);
//		return "event/eventInfo";
		return "redirect:/event/order/{formNo}";
	}
	

	
	// 구매자 event order 넘버 페이지 (폼 select)
	@RequestMapping(value="/order/{formNo}", method = {RequestMethod.GET, RequestMethod.POST})
	public String orderOk(@PathVariable("formNo") int formNo, Model model) {
		
		System.out.println("event/order");
		EventVo dataVo = eventService.selectFormInfo(formNo);
		
		System.out.println("EventController order dataVo: " + dataVo);
		
		Model orderGo = model.addAttribute("formData", dataVo);
		System.out.println("EventController order eventVo: " + orderGo);
		
		return "event/eventInfo";
	}
	
	// 구매자 event order page 폼 insert()  (진행중)
	@RequestMapping(value="/orderOk/{formNo}", method = {RequestMethod.GET, RequestMethod.POST})
	public void eventOrder(@PathVariable("formNo") int formNo, Model model, @ModelAttribute EventVo eventVo, HttpSession session) {
		System.out.println("EventController eventOrder start");
		
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		int userNo = userVo.getUserNo();
		String userId = userVo.getUserId();
		String nickName = userVo.getNickName();
		System.out.println("EventController eventOrder1: " + eventVo.toString());

		eventVo.setUserNo(userNo);
		eventVo.setUserId(userId);
		eventVo.setNickName(nickName);
		System.out.println("EventController eventVo: " + eventVo.toString());
		
//		EventVo dataVo = eventService.selectFormInfo(formNo);
//		
//		eventService.orderGo(dataVo);
//		System.out.println("EventController orderOk1: " + dataVo.toString());
//		
//		int result = eventService.restore(formFile, eventVo);  //3.eventSeervice의 restore의 formFile, Vo 매개변수를 받는다.
//		System.out.println("formPath check: " + eventVo.getFormPath());
//		System.out.println("EventController info2: " + eventVo.toString());
//		System.out.println("redirect result check: " + result);
//		
//		System.out.println("EventController order done");

//		if (result == 1) {
//			// select service 연결
//			EventVo vo = eventService.selectForm(eventVo);
//			System.out.println("eventCtr formNo ck: " + vo.toString());
//			int num = vo.getFormNo();
//			return "event/eventOrder" + num;
//		}
	
	}
	
	

}
