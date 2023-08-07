package com.occu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.occu.vo.PostVo;

import oracle.jdbc.proxy.annotation.Post;

@Repository
public class PostDao {
	  @Autowired
	  private SqlSession sqlSession;

	    public int insertPost(PostVo postVo) {
	    	System.out.println(postVo);
	    	int result = sqlSession.insert("post.insertPost", postVo);
	    
	    	return result;
	    	
	    }
	    // 타임라인 구
	    public List<PostVo> selectAllPosts() {
	    	System.out.println("selectAllPosts dao");
	    	List<PostVo> postList = sqlSession.selectList("post.selectAllPosts");
	    	System.out.println("dao postList: "+postList);
	    	
	        return postList;
	    }

	  
	
}
