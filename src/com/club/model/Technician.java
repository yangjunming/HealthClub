package com.club.model;

import java.math.BigDecimal;

public class Technician {
	private Integer id;
	private int userId;
	private int technicianStatus;
	private int grade;
	private BigDecimal charge;
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

	public int getTechnicianStatus() {
		return technicianStatus;
	}

	public void setTechnicianStatus(int technicianStatus) {
		this.technicianStatus = technicianStatus;
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

}
