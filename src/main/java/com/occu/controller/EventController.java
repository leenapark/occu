package com.occu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.occu.service.EventService;
import com.occu.vo.EventVo;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
	private EventService eventService;
	

	@RequestMapping("/")
	public String event() {
		System.out.println("event");
		return "event/eventMain";
	}


	@RequestMapping("/form")
	public String eventForm() {
		System.out.println("event/form");
		return "event/eventForm";
	}
	
	
	@RequestMapping(value="/info", method = {RequestMethod.GET, RequestMethod.POST})
	public String eventInfo(@ModelAttribute EventVo eventVo) {  //1.eventInfo�쓽 留ㅺ컻蹂��닔瑜� �젙�빐以�
		
		System.out.println("EventController info1: " + eventVo.toString());
		
		MultipartFile formFile = eventVo.getFormFile();
		System.out.println("formFile check: " + formFile + ", " + formFile.getClass().getName());
		
		
		int result = eventService.restore(formFile, eventVo);  //3.eventSeervice�쓽 restore�쓽 formFile, Vo 留ㅺ컻蹂��닔瑜� 諛쏅뒗�떎.
		System.out.println("formPath check: " + eventVo.getFormPath());
		System.out.println("EventController info2: " + eventVo.toString());
		System.out.println("redirect result check: " + result);
		
		if (result == 1) {

			EventVo vo = eventService.selectForm(eventVo);
			System.out.println("eventCtr formNo ck: " + vo.toString());
			
			int num = vo.getFormNo();
			
			return "redirect:/event/infoOk/" + num;
		} else {
			return "redirect:/event/form?result=fail";
		}
	
	}
	

	@RequestMapping(value="/infoOk/{formNo}", method = {RequestMethod.GET, RequestMethod.POST})
	public String infoOk(@PathVariable("formNo") int formNo, Model model) {
		
		System.out.println("event/infoOk");

		EventVo dataVo = eventService.selectFormInfo(formNo);
		
		
		
		System.out.println("EventController infoOk dataVo: " + dataVo);
//		System.out.println("EventController infoOk eventVo: " + eventVo);
		
		model.addAttribute("formData", dataVo);
		return "event/eventInfo";
	}

}
