package com.mcl.sv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mcl.sv.model.UserVo;
import com.mcl.sv.model.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	UserService userService;
	

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
