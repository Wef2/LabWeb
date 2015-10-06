package com.mcl.sv.view;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownloadView extends AbstractView{
	
	public void Download(){
		setContentType("application/download; utf-8");
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		File file = (File)model.get("downloadFile");
		System.out.println("DownloadView --> file.getPath() : " + file.getPath());
		System.out.println("DownloadView --> file.getName() : " + file.getName());
		
		response.setContentType(getContentType());
		response.setContentLength((int)file.length());
		
		String userAgent = request.getHeader("User-Agent");
		
		boolean ie = userAgent.indexOf("MSIE") > -1;
		
		String fileName = null;
		
		if(ie){
			fileName = URLEncoder.encode(file.getName(),"utf-8");
		}
		else{
			fileName = new String(file.getName().getBytes("utf-8"), "iso-8859-1").replace("+", "%20");
		}
		
		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		OutputStream out = response.getOutputStream();
		FileInputStream fileInputStream = null;
		
		try{
			fileInputStream = new FileInputStream(file);
			FileCopyUtils.copy(fileInputStream, out);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if(fileInputStream != null){
				try{
					fileInputStream.close();
				}
				catch(Exception e){
					
				}
			}
		}
		
		out.flush();
	}

}