package com.mcl.sv.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mcl.sv.model.DownloadVo;

@Service
public class DownloadService {
	
	@Autowired	
	private SqlSessionTemplate sqlSession;
	
	public List<DownloadVo> getDownloadList() {
		return sqlSession.selectList("DownloadMapper.getDownloadList");
	}

}