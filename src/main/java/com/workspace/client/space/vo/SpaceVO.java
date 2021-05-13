package com.workspace.client.space.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class SpaceVO {
	private String s_name = ""; //공간명 
	private String s_pop = ""; //공간종류 
	private String s_type = ""; //공간유형
	private int s_price = 0; //가격 
	private String s_exp = ""; //공간설명 
	private String s_photo= ""; //공간사진 
	private String s_note = ""; //비고
	private Date s_reg; //등록일 
	private String s_state=""; //사용현황 
	
	//파일 업로드를 위한 속성 
	private MultipartFile file; //첨부파일 
	private String b_file=""; //실제서버에 저장한 파일명 
	
	
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_pop() {
		return s_pop;
	}
	public void setS_pop(String s_pop) {
		this.s_pop = s_pop;
	}
	public String getS_type() {
		return s_type;
	}
	public void setS_type(String s_type) {
		this.s_type = s_type;
	}
	public int getS_price() {
		return s_price;
	}
	public void setS_price(int s_price) {
		this.s_price = s_price;
	}
	public String getS_exp() {
		return s_exp;
	}
	public void setS_exp(String s_exp) {
		this.s_exp = s_exp;
	}
	public String getS_photo() {
		return s_photo;
	}
	public void setS_photo(String s_photo) {
		this.s_photo = s_photo;
	}
	public String getS_note() {
		return s_note;
	}
	public void setS_note(String s_note) {
		this.s_note = s_note;
	}
	public Date getS_reg() {
		return s_reg;
	}
	public void setS_reg(Date s_reg) {
		this.s_reg = s_reg;
	}
	public String getS_state() {
		return s_state;
	}
	public void setS_state(String s_state) {
		this.s_state = s_state;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getB_file() {
		return b_file;
	}
	public void setB_file(String b_file) {
		this.b_file = b_file;
	}
	
	

}
