package com.occu.vo;




public class PostVo {
	
		// 필드
		private int postNo;
		private int userNo;
		private String userId;
		private String content;
		private String createDate;
		private String profileImg;
		private String file1;
		private String file2;
		private String file3;
		private String file4;
		
		
	
		// g/s
		public int getPostNo() {
			return postNo;
		}

		public void setPostNo(int postNo) {
			this.postNo = postNo;
		}

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

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public String getCreateDate() {
			return createDate;
		}

		public void setCreateDate(String createDate) {
			this.createDate = createDate;
		}

		public String getFile1() {
			return file1;
		}

		public void setFile1(String file1) {
			this.file1 = file1;
		}

		public String getFile2() {
			return file2;
		}

		public void setFile2(String file2) {
			this.file2 = file2;
		}

		public String getFile3() {
			return file3;
		}

		public void setFile3(String file3) {
			this.file3 = file3;
		}

		public String getFile4() {
			return file4;
		}

		public void setFile4(String file4) {
			this.file4 = file4;
		}


		public String getProfileImg() {
			return profileImg;
		}

		public void setProfileImg(String profileImg) {
			this.profileImg = profileImg;
		}

		@Override
		public String toString() {
			return "PostVo [ postNo :" + postNo + ", userNo: " + userNo +  ", content: "+ content+ ", createDate: " + createDate  + ", profileImg:" + profileImg + ", imgfile: " + file1 + " ]";
		}
		

}
