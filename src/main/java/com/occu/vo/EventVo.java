package com.occu.vo;

import org.springframework.web.multipart.MultipartFile;

public class EventVo {
	
	
	private int formNo;    //not null unique
	private int eventNo;
	private MultipartFile formFile;
	private String formPath;
	private String formName;
	private String formGName;
	private int formGPrice;
	private int formQnt;
	private String formLmtb;
	private int formLmtc;
	private String formStockOpen;
	
	
	
	
	// constructor
	



	// g/s
	public int getEventNo() {
		return eventNo;
	}

	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}
	
	public String getFormPath() {
		return formPath;
	}

	public void setFormPath(String formPath) {
		this.formPath = formPath;
	}

	public void setformPath(String formPath) {
		this.formPath = formPath;
	}

	public String getFormLmtb() {
		return formLmtb;
	}
	
	public void setFormLmtb(String formLmtb) {
		this.formLmtb = formLmtb;
	}
	
	public int getFormLmtc() {
		return formLmtc;
	}
	
	public void setFormLmtc(int formLmtc) {
		this.formLmtc = formLmtc;
	}
	
	public int getFormNo() {
		return formNo;
	}
	
	public void setFormNo(int formNo) {
		this.formNo = formNo;
	}
	
	public String getFormName() {
		return formName;
	}
	
	public MultipartFile getFormFile() {
		return formFile;
	}
	
	public void setFormFile(MultipartFile formFile) {
		this.formFile = formFile;
	}
	
	public void setFormName(String formName) {
		this.formName = formName;
	}
	
	public String getFormGName() {
		return formGName;
	}
	
	public void setFormGName(String formGName) {
		this.formGName = formGName;
	}
	
	public int getFormGPrice() {
		return formGPrice;
	}
	
	public void setFormGPrice(int formGPrice) {
		this.formGPrice = formGPrice;
	}
	
	public int getFormQnt() {
		return formQnt;
	}
	
	public void setFormQnt(int formQnt) {
		this.formQnt = formQnt;
	}

	public String getFormStockOpen() {
		return formStockOpen;
	}
	
	public void setFormStockOpen(String formStockOpen) {
		this.formStockOpen = formStockOpen;
	}
	
	

	
	// method
	@Override
	public String toString() {
		return "EventVo [formNo=" + formNo + ", formPath=" + formPath + 
				", formFile=" + formFile + ", formName=" + formName + 
				", formGName=" + formGName + ", formGPrice=" + formGPrice + 
				", formQnt=" + formQnt + ", formLmtb=" + formLmtb + 
				", formLmtc=" + formLmtc + ", formStockOpen=" + formStockOpen + 
				"]";
	}
	
	
}
