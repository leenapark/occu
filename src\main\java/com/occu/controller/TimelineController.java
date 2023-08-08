package com.occu.controller;


import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.occu.service.PostService;
import com.occu.vo.PostVo;
import com.occu.vo.UserVo;

import oracle.jdbc.proxy.annotation.Post;


@Controller
public class TimelineController {

	@Autowired
	private PostService postService;

	
		// timeline
		@RequestMapping(value = "/home", method={RequestMethod.POST, RequestMethod.GET})
		public String postList(Model model) {
			System.out.println("timeline home");
			
			List<PostVo> postList = postService.getAllPosts();
			
			System.out.println("ctr postList : "+postList);
			model.addAttribute("postList", postList);
			System.out.println("model ck: " + model);
			
			return "main/index";
		}
	

		// post 등록
		@RequestMapping(value = "/post", method={RequestMethod.POST , RequestMethod.GET})
		public String writePost(HttpSession session, @RequestParam("fileImg") MultipartFile file, @ModelAttribute PostVo postVo) {
			
			System.out.println("post");
			System.out.println("File Name: " + file.getOriginalFilename());
//			System.out.println(file);
			UserVo userVo = (UserVo) session.getAttribute("authUser");
			int userNo = userVo.getUserNo();
			
			
			postVo.setUserNo(userNo);
			
			System.out.println("ctr postVo: " + postVo);
			
			
			if (file != null && !file.isEmpty()) {
				postService.saveFile(file, postVo);
			} else {
				postService.saveFile(file, postVo);
			}
			System.out.println(postVo.toString());



			return "redirect:/home";
		}
		
		// 포스트 page detail
		@RequestMapping(value = "/detail/{postNo}", method = RequestMethod.GET)
	    public String showDetail(@PathVariable("postNo") int postNo, Model model) {
			System.out.println("timeline ctr : " + postNo);
//	        PostVo post = postService.getPostByNo(postNo);


//	        model.addAttribute("post", post);

	        return "main/detail";
	    }
		
		
		
		
		
}
