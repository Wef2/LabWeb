package com.mcl.sv.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mcl.sv.model.UserVo;

@Service
public class UserService {
	
	@Autowired	
	private SqlSessionTemplate sqlSession;

	public List<UserVo> getUserList() {
		return sqlSession.selectList("UserMapper.getUserList");
	}

	public UserVo getUser(UserVo userVo) {
		return sqlSession.selectOne("UserMapper.getUser", userVo);
	}

	public int updateUser(UserVo userVo) {
		return sqlSession.update("UserMapper.updateUser", userVo);
	}

	public int deleteUser(String id) {
		return sqlSession.delete("UserMapper.deleteUser", id);
	}
	
	public int addUser(UserVo userVo){
		return sqlSession.insert("UserMapper.addUser", userVo);
	}
}

