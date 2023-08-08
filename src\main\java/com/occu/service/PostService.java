package com.occu.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


import com.occu.dao.PostDao;
import com.occu.vo.PostVo;

@Service
public class PostService {

	@Autowired
	private PostDao postDao;

	public void savePost(PostVo postVo) {
		
		postDao.insertPost(postVo);

	}

	// file 저장
	public void saveFile(MultipartFile file, PostVo postVo) {
		System.out.println("postservice");

		String uploadPath = "/Users/soryo/Documents/Im/upload";
		System.out.println("uploadPath: "+ uploadPath);
		
		
        // 원본 파일명 가져오기
        String orglFileName = file.getOriginalFilename();
        System.out.println("orglFileName: "+ orglFileName);
        if (orglFileName != "") {
        	// 파일 확장자 추출
        	String fileExtension = orglFileName.substring(orglFileName.lastIndexOf("."));
        	System.out.println("fileExtension: "+fileExtension);
        	
        	// 고유한 파일명 생성 (UUID를 이용하여 파일명 중복 방지)
        	String saveName = System.currentTimeMillis()+UUID.randomUUID().toString() + fileExtension;
        	System.out.println("saveName: " + saveName);
        	
        	// 파일 저장 경로와 파일명을 결합하여 실제 파일 경로 생성
        	String filePath = uploadPath + "/" + saveName;
        	System.out.println("filePath "+filePath);
        	
        	// 파일 사이즈
        	long fileSize = file.getSize();
        	System.out.println("fileSize: " + fileSize);
        	
        	// 서버 하드 디스크 저장
        	try {
        		byte[] fileData = file.getBytes();
        		OutputStream out = new FileOutputStream(filePath);
        		BufferedOutputStream bos = new BufferedOutputStream(out);
        		
        		bos.write(fileData);
        		bos.close();
        		
        	} catch (IOException e) {
        		
        		e.printStackTrace();
        	}
        	
        	postVo.setFile1(saveName);
//		System.out.println("postService check: " + postVo);
        	postDao.insertPost(postVo);
        } else {
        	postDao.insertPost(postVo);
        }
	
	}
	// 로그인 한 사람의 글을 몽땅 가져옴
	public List<PostVo> getAllPosts() {
		System.out.println("postService imageList");

		return postDao.selectAllPosts();
	}
	// 포스트 상세페이지
	 public PostVo getPostByNo(int postNo) {
	        return postDao.selectPostByNo(postNo);
	 }
	 // 포스트 삭제
	 public void deletePost(Long postNo) {
    	 System.out.println("deletePost postNo: " + postNo);
        postDao.deletePost(postNo);
    }
}