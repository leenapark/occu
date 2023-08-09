package com.occu.vo;

public class MessageVo{
	private int pk;
	private int no;
	private int room;
	private String send_nick;
	private String recv_nick;
	private String send_time;
	private String read_time;
	private String content;
	private String read_chk;
		

	// 현재 사용자의 메세지 상대 nick을 담는다.
	private String other_nick;
	// 현재 사용자의 메세지 상대 profile을 담는다.
	private String profile;
	// 현재 사용자 nick
	private String nick;
	// 안읽은 메세지 갯수
	private int unread;

	
	

	
	// g/s
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
	public String getOther_nick() {
		return other_nick;
	}
	public void setOther_nick(String other_nick) {
		this.other_nick = other_nick;
	}
	
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
	public int getUnread() {
		return unread;
	}
	public void setUnread(int unread) {
		this.unread = unread;
	}
	
	// g/s message table
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getRoom() {
		return room;
	}
	public void setRoom(int room) {
		this.room = room;
	}

	public String getSend_nick() {
		return send_nick;
	}
	public void setSend_nick(String send_nick) {
		this.send_nick = send_nick;
	}
	public String getRecv_nick() {
		return recv_nick;
	}
	public void setRecv_nick(String recv_nick) {
		this.recv_nick = recv_nick;
	}
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String send_time) {
		this.send_time = send_time;
	}
	public String getRead_time() {
		return read_time;
	}
	public void setRead_time(String read_time) {
		this.read_time = read_time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRead_chk() {
		return read_chk;
	}
	public void setRead_chk(String read_chk) {
		this.read_chk = read_chk;
	}

	@Override
	public String toString() {
		return "MessageVo [pk=" + pk + ", no=" + no + ", room=" + room + ", send_nick=" + send_nick + 
				", recv_nick=" + recv_nick + ", send_time=" + send_time + ", read_time=" + read_time + ", content=" + content + ", read_chk=" + read_chk +
				", other_nick=" + other_nick + ", profile=" + profile + ", nick=" + nick + ", unread=" + unread + "]";
	}
	

}