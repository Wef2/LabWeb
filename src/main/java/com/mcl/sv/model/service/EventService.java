package com.mcl.sv.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mcl.sv.model.EventVo;

@Service
public class EventService {

	@Autowired	
	private SqlSessionTemplate sqlSession;
	
	public List<EventVo> getEventList() {
		return sqlSession.selectList("EventMapper.getEventList");
	}

}
