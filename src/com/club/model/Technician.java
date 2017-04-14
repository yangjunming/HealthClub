package com.club.model;

public class Technician {
	private Integer id;
	private int userId;
	private String technicianStatus;
	private int grade;
	private int charge;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getTechnicianStatus() {
		return technicianStatus;
	}

	public void setTechnicianStatus(String technicianStatus) {
		this.technicianStatus = technicianStatus;
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

}
