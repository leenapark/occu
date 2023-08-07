package com.occu.vo;


public class UserVo {
	
	private int userNo;
	private String userId;
	private String password;
	private String email;
	private String nickName;
	private String joinData;
	private String profileImg;
	private String birthDate; /* 연령대 */
	private int bYear;
	private int bMon;
	private int bDay;
	
	

	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public String getJoinData() {
		return joinData;
	}


	public void setJoinData(String joinData) {
		this.joinData = joinData;
	}


	public String getProfileImg() {
		return profileImg;
	}


	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}


	public String getBirthDate() {
		return birthDate;
	}


	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	
	
	public int getbYear() {
		return bYear;
	}


	public void setbYear(int bYear) {
		this.bYear = bYear;
	}


	public int getbMon() {
		return bMon;
	}


	public void setbMon(int bMon) {
		this.bMon = bMon;
	}


	public int getbDay() {
		return bDay;
	}


	public void setbDay(int bDay) {
		this.bDay = bDay;
	}


	@Override
	public String toString() {
		return "UserVo [userNo=" + userNo + ", userId=" + userId + ", password=" + password + ", email="
				+ email + ", nickName=" + nickName + ", joinData=" + joinData + ", profileImg="
				+ profileImg + ", birthDate=" + birthDate + ", bYear: " + bYear + ", bMon: " + bMon + ", bDay: " + bDay + "]";
	}
}