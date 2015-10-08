package com.mcl.sv.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mcl.sv.model.BoardDataVo;

@Service
public class BoardService {
	
	@Autowired	
	private SqlSessionTemplate sqlSession;
	
	public int getTotalCount(){
		return sqlSession.selectList("BoardMapper.getBoardList").size();
	}

	public List<BoardDataVo> getBoardList() {
		return sqlSession.selectList("BoardMapper.getBoardList");
	}
	
	public List<BoardDataVo> getSearchByTitleList() {
		return sqlSession.selectList("BoardMapper.getSearchByTitleList");
	}
	
	public BoardDataVo getBoardData(BoardDataVo boardDataVo) {
		return sqlSession.selectOne("BoardMapper.getBoardData", boardDataVo);
	}
	
	public int increaseBoardHits(BoardDataVo boardDataVo) {
		return sqlSession.update("BoardMapper.increaseBoardHits", boardDataVo);
	}

	public int updateBoardData(BoardDataVo boardDataVo) {
		return sqlSession.update("BoardMapper.updateBoardData", boardDataVo);
	}

	public int deleteBoardData(int no) {
		return sqlSession.delete("BoardMapper.deleteBoardData", no);
	}
	
	public int addBoardData(BoardDataVo boardDataVo){
		return sqlSession.insert("BoardMapper.addBoardData", boardDataVo);
	}
}