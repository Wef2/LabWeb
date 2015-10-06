package com.mcl.sv.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mcl.sv.model.NewsVo;


@Service
public class NewsService {
	
	@Autowired	
	private SqlSessionTemplate sqlSession;
	
	public List<NewsVo> getNewsList() {
		return sqlSession.selectList("NewsMapper.getNewsList");
	}

}