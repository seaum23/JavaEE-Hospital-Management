package com.hospital.model;

public class Patient {
	private String pName;
	private String docId;
	private String docName;
	private String docVisit;
	private String pPhone;
	private String date;
	private String age;
	private String userId;
	
	
	public String getDocName() {
		return docName;
	}
	public void setDocName(String docName) {
		this.docName = docName;
	}
	public String getDocVisit() {
		return docVisit;
	}
	public void setDocVisit(String docVisit) {
		this.docVisit = docVisit;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getDocId() {
		return docId;
	}
	public void setDocId(String docId) {
		this.docId = docId;
	}
	public String getpPhone() {
		return pPhone;
	}
	public void setpPhone(String pPhone) {
		this.pPhone = pPhone;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
