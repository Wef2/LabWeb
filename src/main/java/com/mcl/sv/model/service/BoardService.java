package com.mcl.sv.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mcl.sv.model.BoardDataVo;
import com.mcl.sv.model.PageVo;

@Service
public class BoardService {
	
	@Autowired	
	private SqlSessionTemplate sqlSession;
	
	public int getBoardSize(){
		return sqlSession.selectOne("BoardMapper.getBoardSize");
	}

	public List<BoardDataVo> getBoardList(PageVo pageVo) {
		return sqlSession.selectList("BoardMapper.getBoardList", pageVo);
	}
		
	public List<BoardDataVo> getSearchByTitleList(String keyword) {
		return sqlSession.selectList("BoardMapper.getSearchByTitleList", keyword);
	}
	
	public int getNumber(int rowNumber){
		return sqlSession.selectOne("BoardMapper.getNumber", rowNumber);
	}
	
	public BoardDataVo getBoardData(int rowNumber) {
		return sqlSession.selectOne("BoardMapper.getBoardData", rowNumber);
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