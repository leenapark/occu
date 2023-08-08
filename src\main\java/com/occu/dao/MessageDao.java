package com.occu.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.occu.vo.MessageVo;

@Repository
public class MessageDao {

	@Autowired
	private SqlSession sqlSession;

	// 메세지 리스트
	public ArrayList<MessageVo> messageList(MessageVo to) {

		String nick = to.getNick();
		System.out.println("dao: " + nick);
		// 메세지 리스트에 나타낼 것들 가져오기 - 가장 최근 메세지, 보낸사람 profile 사진, 보낸사람 nick
		ArrayList<MessageVo> list = (ArrayList) sqlSession.selectList("mss.message_list", to);
		System.out.println("dao(list): " + list);
		for (MessageVo mto : list) {
			mto.setNick(nick);
			// 현재 사용자가 해당 room에서 안읽은 메세지의 갯수를 가져온다.
			int unread = sqlSession.selectOne("count_unread", mto);
			System.out.println("dao: " + unread);
			// 현재 사용자가 메세지를 주고받는 상대 profile을 가져온다.
			String profile = sqlSession.selectOne("get_other_profile",mto);
			System.out.println("dao: " + profile);

			// 안읽은 메세지 갯수를 mto에 set한다.
			mto.setUnread(unread);
			// 메세지 상대의 프로필사진을 mto에 set한다.
			mto.setProfile(profile);
			System.out.println("dao: " + mto);
			// 메세지 상대 nick을 세팅한다. other_nick
			if (nick.equals(mto.getSend_nick())) {
				mto.setOther_nick(mto.getRecv_nick());
			} else {
				mto.setOther_nick(mto.getSend_nick());
			}
		}

		return list;
	}


	// room 별 메세지 내용을 가져온다.
	public ArrayList<MessageVo> roomContentList(MessageVo to) {

		System.out.println("dao(rCL, room): " + to.getRoom());
		to.setRecv_nick("김km2");
		System.out.println("dao(rCL, recv_nick): " + to.getRecv_nick());
		System.out.println("dao(rCL, nick): " + to.getNick());
		// 메세지 내역을 가져온다
		ArrayList<MessageVo> clist = (ArrayList) sqlSession.selectList("mss.room_content_list", to);
		System.out.println("dao(rCL, clist): " + clist );
		// 해당 방의 메세지들 중 받는 사람이 현재사용자의 nick인 메세지를 모두 읽음 처리한다
		sqlSession.update("mss.message_read_chk", to);

		return clist;
	}

	// 메세지 list에서 메세지를 보낸다.
	public int messageSendInlist(MessageVo to) {

		// 메세지리스트에서 보낸건지 프로필에서 보낸건지 구분하기 위함
		// room = 0이란건 int로 지정된 room컬럼에 null값이 입력되었다는 의미
		if(to.getRoom() == 0) {	// room이 0이라면 프로필에서 보낸거다
			int exist_chat = sqlSession.selectOne("mss.exist_chat", to);
			System.out.println("dao(mSI, exist_chat): " + exist_chat);
			// 프로필에서 보낸것중 메세지 내역이없어서 첫메세지가 될경우를 구분하기 위함
			if(exist_chat == 0) {	// 메세지 내역이 없어서 0이면 message 테이블의 room 최댓값을 구해서 to에 set 한다(null인 room에 값 부여하기).
				int max_room = sqlSession.selectOne("mss.max_room", to);
				to.setRoom(max_room+1);
			}else {		// 메세지 내역이 있다면 해당 room 번호를 가져온다.
				int room = Integer.parseInt(sqlSession.selectOne("mss.select_room", to) );
				to.setRoom(room);
			}
		}
		
		// 메시지가 없는 새 방인지 아닌지 여부를 결정
		if(to.getRoom() != 0) {
			int exist_chat_r = sqlSession.selectOne("mss.exist_chat_r", to);
			System.out.println("dao(mSI, exist_chat_r): " + exist_chat_r);
			
			// 새 방을 판 경우 해당 방의 메시지 번호인 no값을 1로 초기화
			if(exist_chat_r == 0) {
				to.setNo(1);
			//	int reset = sqlSession.update("mss.messageNoReset", to);

				System.out.println("dao(mSI, to): " +  to);
			// 예전 방일 경우 방을 바꿀 때마다 no를 exist_chat_r로 갱신
			} else if(exist_chat_r != 0) {
				exist_chat_r = exist_chat_r + 1;
				System.out.println("dao(mSI, exist_chat_r): " + exist_chat_r);
				to.setNo(exist_chat_r);
				System.out.println("dao(mSI, to): " + to);
				// 시퀸스 증가값 일시 변경
				
				
				/*
				 * int setNo2 = sqlSession.update("mss.messageNoChangeInc", diffCount);
				 * System.out.println("dao(mSI, setNo): " + diffCount + setNo2);
				 */

			}
		}
		
		
		// 새로운 방을 만들 경우, 해당 방의 메시지 번호를 가리키는 시퀸스인 no의 값이 초기화 되어야 함
		
		int flag = sqlSession.insert("mss.messageSendInlist",to);
		return flag;
	}

}
