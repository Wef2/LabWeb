package com.mcl.sv.controller;

import java.io.File;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DownloadController implements ApplicationContextAware {

	private WebApplicationContext context = null;

	@RequestMapping("download.do")
	public ModelAndView download(@RequestParam("fileName") String fileName) {

		
		String path = "C://Users/Kim/Documents/GitHub/LabWeb/src/main/webapp/resources/files";
				
		String fullPath = path + "\\" + fileName;

		File file = new File(fullPath);

		return new ModelAndView("download", "downloadFile", file);
	}

	@Override
	public void setApplicationContext(ApplicationContext arg0) throws BeansException {

		this.context = (WebApplicationContext) arg0;

	}

}