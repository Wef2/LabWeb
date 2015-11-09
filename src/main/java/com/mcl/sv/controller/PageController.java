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
import com.mcl.sv.model.ProfileVo;
import com.mcl.sv.model.service.DownloadService;
import com.mcl.sv.model.service.EventService;
import com.mcl.sv.model.service.NewsService;
import com.mcl.sv.model.service.ProfileService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class PageController {
	
	@Autowired
	private EventService eventService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private DownloadService downloadService;
	
	@Autowired
	private ProfileService profileService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {
		List<ProfileVo> list = profileService.getProfileList();
		model.addAttribute("list", list);
		return "about/about";
	}
	
	@RequestMapping(value = "/about/profile", method = RequestMethod.GET)
	public String profile(int no, Model model) {
		ProfileVo newProfileVo = new ProfileVo();
		newProfileVo.setNo(no);
		ProfileVo profileVo = profileService.getProfile(newProfileVo);
		model.addAttribute("no", profileVo.getNo());
		model.addAttribute("name", profileVo.getName());
		model.addAttribute("type", profileVo.getType());
		model.addAttribute("phone", profileVo.getPhone());
		model.addAttribute("email", profileVo.getEmail());
		model.addAttribute("sns", profileVo.getSns());	
		model.addAttribute("image", profileVo.getImage());
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
		List<NewsVo> list1 = newsService.getNewsList();
		List<EventVo> list2 = eventService.getEventList();
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		return "newsandevents";
	}

}
