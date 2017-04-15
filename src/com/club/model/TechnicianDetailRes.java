package com.club.model;

import java.math.BigDecimal;

public class TechnicianDetailRes {
	private Integer id;
	private String name;
	private String mobile;
	private int technicianStatus;
	private int homeNum;
	private int grade;
	private BigDecimal charge;
	private int hasUser;
	private BigDecimal spaCharge;
	private BigDecimal massCharge;
	private BigDecimal cupCharge;

	public BigDecimal getSpaCharge() {
		return spaCharge;
	}

	public void setSpaCharge(BigDecimal spaCharge) {
		this.spaCharge = spaCharge;
	}

	public BigDecimal getMassCharge() {
		return massCharge;
	}

	public void setMassCharge(BigDecimal massCharge) {
		this.massCharge = massCharge;
	}

	public BigDecimal getCupCharge() {
		return cupCharge;
	}

	public void setCupCharge(BigDecimal cupCharge) {
		this.cupCharge = cupCharge;
	}

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

	public BigDecimal getCharge() {
		return charge;
	}

	public void setCharge(BigDecimal charge) {
		this.charge = charge;
	}

	public int getHomeNum() {
		return homeNum;
	}

	public void setHomeNum(int homeNum) {
		this.homeNum = homeNum;
	}

	public int getTechnicianStatus() {
		return technicianStatus;
	}

	public void setTechnicianStatus(int technicianStatus) {
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
