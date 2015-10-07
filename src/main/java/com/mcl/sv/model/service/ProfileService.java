package com.mcl.sv.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mcl.sv.model.ProfileVo;

@Service
public class ProfileService {

	@Autowired	
	private SqlSessionTemplate sqlSession;

	public List<ProfileVo> getProfileList() {
		return sqlSession.selectList("ProfileMapper.getProfileList");
	}

	public ProfileVo getProfile(ProfileVo profileVo) {
		return sqlSession.selectOne("ProfileMapper.getProfile", profileVo);
	}

	public int updateUser(ProfileVo profileVo) {
		return sqlSession.update("ProfileMapper.updateProfile", profileVo);
	}

	public int deleteUser(String id) {
		return sqlSession.delete("ProfileMapper.deleteProfile", id);
	}
	
	public int addUser(ProfileVo profileVo){
		return sqlSession.insert("ProfileMapper.addProfile", profileVo);
	}
}
