package com.mcl.sv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mcl.sv.model.BoardDataVo;
import com.mcl.sv.model.PageVo;
import com.mcl.sv.model.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;

	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(@RequestParam(defaultValue = "1") int page, @RequestParam(required = false) String keyword, Model model) {
		int boardSize;
		if(keyword!= null){
			boardSize = boardService.getSearchByTitleList(keyword).size();
		}
		else{
			boardSize = boardService.getBoardSize();
		}
		int pageRows = 10;
		int totalPage = (int) Math.ceil((double) boardSize / pageRows);
		int currentPage = page;
		int firstPage = (currentPage / 10) + 1;
		int lastPage = currentPage / 10 + 10;
		if (lastPage > totalPage) {
			lastPage = totalPage;
		}
		int lastRow = boardSize - (currentPage - 1) * 10;
		int firstRow = boardSize - ((currentPage - 1) * 10 + 9);
		if (firstRow < 1) {
			firstRow = 1;
		}
		PageVo pageVo = new PageVo();
		pageVo.setFirstRow(firstRow);
		pageVo.setLastRow(lastRow);	
		List<BoardDataVo> list;
		if(keyword!= null){
			list = boardService.getSearchByTitleList(keyword);
		}
		else
		{
			list = boardService.getBoardList(pageVo);
		}
		System.out.println("Current Page : " + currentPage);
		System.out.println("Board Size : " + boardSize);
		System.out.println("Total Page : " + totalPage);
		System.out.println("First Row : " + firstRow);
		System.out.println("Last Row : " + lastRow);
		model.addAttribute("keyword", keyword);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("firstPage", firstPage);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("list", list);
		return "board/board";
	}

	@RequestMapping(value = "/board/write", method = RequestMethod.GET)
	public String write(Model model) {
		return "board/write";
	}

	@RequestMapping(value = "/board/read", method = RequestMethod.GET)
	public String read(int no, Model model) {
		BoardDataVo GBoardDataVo = boardService.getBoardData(no);
		if (GBoardDataVo != null) {
			GBoardDataVo.setHits(GBoardDataVo.getHits() + 1);
			boardService.increaseBoardHits(GBoardDataVo);
			model.addAttribute("rowNumber", GBoardDataVo.getRowNumber());
			model.addAttribute("text", GBoardDataVo.getText());
			model.addAttribute("writer", GBoardDataVo.getWriter());
			model.addAttribute("date", GBoardDataVo.getDate());
			model.addAttribute("title", GBoardDataVo.getTitle());
			model.addAttribute("hits", GBoardDataVo.getHits());
			return "board/read";
		} else {
			return "board/readfailed";
		}
	}

	@RequestMapping(value = "/board/writeText", method = RequestMethod.POST)
	public String writeText(String title, String text, Model model) {
		BoardDataVo boardDataVo = new BoardDataVo();
		boardDataVo.setTitle(title);
		boardDataVo.setText(text);
		int affectedRow = boardService.addBoardData(boardDataVo);
		if (affectedRow == 1) {
			return "board/writesuccess";
		} else {
			return "board/write";
		}
	}

	@RequestMapping(value = "/board/delete", method = RequestMethod.POST)
	public String delete(int no, Model model) {
		int boardNumber = boardService.getNumber(no);
		int affectedRow = boardService.deleteBoardData(boardNumber);
		if (affectedRow == 1) {
			return "board/deletesuccess";
		} else {
			return "board/deletefailed";
		}
	}

	@RequestMapping(value = "/board/modify", method = RequestMethod.POST)
	public String modify(int no, Model model) {
		BoardDataVo GBoardDataVo = boardService.getBoardData(no);
		if (GBoardDataVo != null) {
			model.addAttribute("rowNumber", GBoardDataVo.getRowNumber());
			model.addAttribute("text", GBoardDataVo.getText());
			model.addAttribute("writer", GBoardDataVo.getWriter());
			model.addAttribute("date", GBoardDataVo.getDate());
			model.addAttribute("title", GBoardDataVo.getTitle());
			model.addAttribute("hits", GBoardDataVo.getHits());
			return "board/modify";
		} else {
			return "board/readfailed";
		}
	}

	@RequestMapping(value = "/board/update", method = RequestMethod.POST)
	public String update(int no, String title, String text, Model model) {
		BoardDataVo boardDataVo = new BoardDataVo();
		boardDataVo.setNo(no);
		boardDataVo.setTitle(title);
		boardDataVo.setText(text);
		int affectedRow = boardService.updateBoardData(boardDataVo);
		if (affectedRow == 1) {
			return "board/modifysuccess";
		} else {
			return "board";
		}
	}

}
