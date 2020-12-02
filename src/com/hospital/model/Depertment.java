package com.hospital.model;

public class Depertment {

	private String depEmploy;
	private String depName;
	private String depDes;
	
	public String getDepEmploy() {
		return depEmploy;
	}
	public void setDepEmploy(String depEmploy) {
		this.depEmploy = depEmploy;
	}
	public String getDepName() {
		return depName;
	}
	public void setDepName(String depName) {
		this.depName = depName;
	}
	public String getDepDes() {
		return depDes;
	}
	public void setDepDes(String depDes) {
		this.depDes = depDes;
	}
	
	
	@Override
	public String toString() {
		return "Depertment [depName=" + depName + ", depDes=" + depDes + "]";
	}
	
	
	
	
}
