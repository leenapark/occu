package com.occu.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.occu.dao.MessageDao;
import com.occu.vo.MessageVo;
import com.occu.vo.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MessageController {

	@Autowired
	private MessageDao messageDao;

	// 메세지 목록
	@RequestMapping(value = "/messageList.do")
	public String message_list(@ModelAttribute UserVo userVo, HttpServletRequest request, HttpSession session) {
		// System.out.println("현대 사용자 nick : " + session.getAttribute("nick"));
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		System.out.println("ctr(MC): " + authUser);
		// String nick = (String) session.getAttribute("nick");
		System.out.println("ctr(MC): " + authUser.getNickName());
		MessageVo to = new MessageVo();
		// nick 값을 메세지 객체 to에 입력
		to.setNick(authUser.getNickName());
		System.out.println("ctr(MC): " + to);


		// 메세지 리스트
		ArrayList<MessageVo> list = messageDao.messageList(to);

		request.setAttribute("list", list);
		System.out.println("ctr(list): " + list);
		return "message/messageList";
	}

	// 메세지 목록
	@RequestMapping(value = "/messageAjaxList.do")
	public String message_ajax_list(@ModelAttribute UserVo userVo, HttpServletRequest request, HttpSession session) {
		// System.out.println("현대 사용자 nick : " + session.getAttribute("nick"));
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		String nick = (String) authUser.getNickName();
		System.out.println("ctr(m_a_l, nick): " + nick);
		MessageVo to = new MessageVo();
		to.setNick(nick);

		// 메세지 리스트
		ArrayList<MessageVo> list = messageDao.messageList(to);

		request.setAttribute("list", list);

		return "message/messageAjaxList";
	}

	@RequestMapping(value = "/messageContentList.do")
	public String message_content_list(HttpServletRequest request, HttpSession session) {
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		String nick = (String) authUser.getNickName();
		System.out.println("ctr(m_c_t, nick): " + nick);
		/* System.out.println("nick : " + session.getAttribute("nick")); */
		int room = Integer.parseInt(request.getParameter("room"));
		/* System.out.println("req: " + request.getParameterNames()); */
		System.out.println("ctr(m_c_t, room) : " + room);
		MessageVo to = new MessageVo();
		to.setRoom(room);
		to.setNick(nick);

		// 메세지 내용을 가져온다.
		ArrayList<MessageVo> clist = messageDao.roomContentList(to);

		request.setAttribute("clist", clist);

		return "message/messageContentList";
	}

	// 메세지 리스트에서 메세지 보내기
	@ResponseBody
	@RequestMapping(value = "/message_send_inlist.do")
	public int message_send_inlist(@RequestParam int room, @RequestParam String other_nick,
			@RequestParam String content, HttpSession session) {

		MessageVo to = new MessageVo();
		to.setRoom(room);
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		String nick = (String) authUser.getNickName();
		System.out.println("ctr(m_s_l), nick): " + nick);
		to.setSend_nick(nick);
		to.setRecv_nick(other_nick);
		to.setContent(content);

		int flag = messageDao.messageSendInlist(to);

		return flag;
	}

}
