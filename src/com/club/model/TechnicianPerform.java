package com.club.model;

import java.math.BigDecimal;

public class TechnicianPerform {
	private int day;
	private String name;
	private float spaAmount;
	private float massAmount;
	private float cupAmount;
	private float salesVolume;
	private BigDecimal homeAmount;

	public BigDecimal getHomeAmount() {
		return homeAmount;
	}

	public void setHomeAmount(BigDecimal homeAmount) {
		this.homeAmount = homeAmount;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public float getSpaAmount() {
		return spaAmount;
	}

	public void setSpaAmount(float spaAmount) {
		this.spaAmount = spaAmount;
	}

	public float getMassAmount() {
		return massAmount;
	}

	public void setMassAmount(float massAmount) {
		this.massAmount = massAmount;
	}

	public float getCupAmount() {
		return cupAmount;
	}

	public void setCupAmount(float cupAmount) {
		this.cupAmount = cupAmount;
	}

	public float getSalesVolume() {
		return salesVolume;
	}

	public void setSalesVolume(float salesVolume) {
		this.salesVolume = salesVolume;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
