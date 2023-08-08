package com.occu.vo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PostVo {
	
		// 필드
		private int postNo;
		private int userNo;
		private String userId;
		private String content;
		private Timestamp createDate;
		private String profileImg;
		private String file1;
		private String file2;
		private String file3;
		private String file4;
		
		private int seq;
	    private String dateWrite;
	   
	    public PostVo() {
	    	
	    }
	
		public PostVo(int postNo, int userNo, String userId, String content, Timestamp createDate, String file1,
				int seq) {
			this.postNo = postNo;
			this.userNo = userNo;
			this.userId = userId;
			this.content = content;
			this.createDate = createDate;
			this.file1 = file1;
			this.seq = seq;
		}

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

		public Timestamp getCreateDate() {
			return createDate;
		}

		public void setCreateDate(Timestamp createDate) {
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
		
		

		public int getSeq() {
			return seq;
		}

		public void setSeq(int seq) {
			this.seq = seq;
		}

		public String getDateWrite() {
			long createDate = this.createDate.getTime(); 
	        long current_time = System.currentTimeMillis(); 
	        long getTime = (current_time - createDate) / 1000; 
	        if (getTime < 60) {
	            return "방금 전";
	        } else if (getTime < 300) {
	            return "5분 전";
	        } else if (getTime < 600) {
	            return "10분 전";
	        } else if (getTime < 900) {
	            return "15분 전";
	        } else if (getTime < 1200) {
	            return "20분 전";
	        }else if (getTime < 1800) {
	            return "30분 전";
	        } else if (getTime < 3600) {
	            return "1시간 전";
	        } else if (getTime < 43200) {
	            return "12시간 전";
	        } else if (getTime < 86400) {
	            return "1일 전";
	        } else if (getTime < 172800) {
	            return "2일 전";
	        } else if (getTime < 259200) {
	            return "3일 전";
	        } else {
	            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	            return sdf.format(new Date(createDate));
	        }
		}

		public void setDateWrite(String dateWrite) {
			this.dateWrite = dateWrite;
		}

		
		@Override
		public String toString() {
			return "PostVo [ postNo :" + postNo + ", userNo: " + userNo +  ", content: "+ content+ ", createDate: " + createDate  + ", profileImg:" + profileImg + ", imgfile: " + file1 + " ]";
		}
		

}