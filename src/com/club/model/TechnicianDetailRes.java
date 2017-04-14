package com.club.model;

public class TechnicianDetailRes {
	private Integer id;
	private String name;
	private String mobile;
	private String technicianStatus;
	private int homeNum;
	private int grade;
	private int charge;
	private int hasUser;

	public int getHasUser() {
		return hasUser;
	}

	public void setHasUser(int hasUser) {
		this.hasUser = hasUser;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
	}

	public int getHomeNum() {
		return homeNum;
	}

	public void setHomeNum(int homeNum) {
		this.homeNum = homeNum;
	}

	public String getTechnicianStatus() {
		return technicianStatus;
	}

	public void setTechnicianStatus(String technicianStatus) {
		this.technicianStatus = technicianStatus;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
}
