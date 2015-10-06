package com.mcl.sv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mcl.sv.model.DownloadVo;
import com.mcl.sv.model.EventVo;
import com.mcl.sv.model.NewsVo;
import com.mcl.sv.model.UserVo;
import com.mcl.sv.model.BoardDataVo;
import com.mcl.sv.model.service.BoardService;
import com.mcl.sv.model.service.DownloadService;
import com.mcl.sv.model.service.EventService;
import com.mcl.sv.model.service.NewsService;
import com.mcl.sv.model.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class PageController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private EventService eventService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private DownloadService downloadService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {
		return "about/contact";
	}

	@RequestMapping(value = "/about/aboutthelab", method = RequestMethod.GET)
	public String aboutthelab(Model model) {
		return "about/aboutthelab";
	}

	@RequestMapping(value = "/about/people", method = RequestMethod.GET)
	public String aboutthepeople(Model model) {
		return "about/people";
	}
	
	@RequestMapping(value = "/about/profile", method = RequestMethod.GET)
	public String profile(Model model) {
		return "about/profile";
	}

	@RequestMapping(value = "/research", method = RequestMethod.GET)
	public String research(Model model) {
		return "research/iot";
	}

	@RequestMapping(value = "/research/ecoaching", method = RequestMethod.GET)
	public String ecoaching(Model model) {
		return "research/ecoaching";
	}

	@RequestMapping(value = "/research/embedded", method = RequestMethod.GET)
	public String embedded(Model model) {
		return "research/embedded";
	}

	@RequestMapping(value = "/research/mobilecomputing", method = RequestMethod.GET)
	public String mobilecomputing(Model model) {
		return "research/mobilecomputing";
	}
	
	@RequestMapping(value = "/research/documents", method = RequestMethod.GET)
	public String documents(Model model) {
		List<DownloadVo> list = downloadService.getDownloadList();
		model.addAttribute("list", list);
		return "research/documents";
	}	
	
	@RequestMapping(value = "/newsandevents", method = RequestMethod.GET)
	public String newsandevent(Model model) {
		List<NewsVo> list = newsService.getNewsList();
		model.addAttribute("list", list);
		return "newsandevents/news";
	}

	@RequestMapping(value = "/newsandevents/events", method = RequestMethod.GET)
	public String events(Model model) {
		List<EventVo> list = eventService.getEventList();
		model.addAttribute("list", list);
		return "newsandevents/events";
	}

	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(Model model) {
		List<BoardDataVo> list = boardService.getBoardList();
		int boardSize = boardService.getTotalCount();
		int pageRows = 10;
		int totalPage = (int) Math.ceil((double)boardSize / pageRows);
		System.out.println("Board Size : " + boardSize);
		System.out.println("Total Page : " + totalPage);
		model.addAttribute("list", list);
		return "board/board";
	}

	@RequestMapping(value = "/board/write", method = RequestMethod.GET)
	public String write(Model model) {
		return "board/write";
	}
	
	@RequestMapping(value = "board/read", method = RequestMethod.GET)
	public String read(int no, Model model) {
		BoardDataVo boardDataVo = new BoardDataVo();
		boardDataVo.setNo(no);
		BoardDataVo GBoardDataVo = boardService.getBoardData(boardDataVo);
		if (GBoardDataVo != null) {
			GBoardDataVo.setHits(GBoardDataVo.getHits() + 1);
			boardService.increaseBoardHits(GBoardDataVo);
			model.addAttribute("no", GBoardDataVo.getNo());
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
	public String writeText(String title, String text, Model model){
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
	public String delete(int no, Model model){
		int affectedRow = boardService.deleteBoardData(no);
		if(affectedRow == 1){
			return "board/deletesuccess";
		}else{
			return "board/deletefailed";
		}
	}
	
	@RequestMapping(value = "board/modify", method = RequestMethod.POST)
	public String modify(int no, Model model){
		BoardDataVo boardDataVo = new BoardDataVo();
		boardDataVo.setNo(no);
		BoardDataVo GBoardDataVo = boardService.getBoardData(boardDataVo);
		if (GBoardDataVo != null) {
			model.addAttribute("no", GBoardDataVo.getNo());
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
	
	@RequestMapping(value = "board/update", method = RequestMethod.POST)
	public String update(int no, String title, String text, Model model){
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

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "user/login";
	}

	@RequestMapping(value = "/userLogin", method = RequestMethod.POST)
	public String userlogin(String id, String pw, Model model) {
		UserVo mUser = new UserVo();
		mUser.setId(id);
		mUser.setPw(pw);
		UserVo userVo = userService.getUser(mUser);
		if (userVo != null) {
			model.addAttribute("userID", userVo.getId());
			return "user/loginsuccess";
		} else {
			return "user/loginfailed";
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		return "user/register";
	}

	@RequestMapping(value = "/userRegister", method = RequestMethod.POST)
	public String userRegister(String id, String pw, String confirmPw, String email, Model model) {
		UserVo aUser = new UserVo();
		aUser.setId(id);
		aUser.setPw(pw);
		aUser.setEmail(email);
		int affectedRow = userService.addUser(aUser);
		if (affectedRow == 1) {
			return "user/registersuccess";
		} else {
			return "user/register";
		}
	}

}
