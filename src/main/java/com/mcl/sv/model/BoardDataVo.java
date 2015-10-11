package com.mcl.sv.model;

public class BoardDataVo {
	private int rowNumber;
	private int no;
	private String title;
	private String text;
	private String writer;
	private String date;
	int hits;
	
	public void setRowNumber(int rowNumber){
		this.rowNumber = rowNumber;
	}
	
	public int getRowNumber(){
		return rowNumber;
	}
	
	public void setNo(int no){
		this.no = no;
	}
	
	public int getNo(){
		return no;
	}
	
	public void setTitle(String title){
		this.title = title;
	}
	
	public String getTitle(){
		return title;
	}
	
	public void setText(String text){
		this.text = text;
	}
	
	public String getText(){
		return text;
	}
	
	public void setWriter(String writer){
		this.writer = writer;
	}
	
	public String getWriter(){
		return writer;
	}
	
	public void setDate(String date){
		this.date = date;
	}
	
	public String getDate(){
		return date;
	}
	
	public void setHits(int hits){
		this.hits = hits;
	}
	
	public int getHits(){
		return hits;
	}

}
