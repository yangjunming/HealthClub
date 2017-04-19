/**
 * 
 */
package com.club.model;

import java.math.BigDecimal;

public class AchievementOfMonth {
	private String month;
	private BigDecimal cupAmount;
	private BigDecimal spaAmount;
	private BigDecimal massAmount;

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public BigDecimal getCupAmount() {
		return cupAmount;
	}

	public void setCupAmount(BigDecimal cupAmount) {
		this.cupAmount = cupAmount;
	}

	public BigDecimal getSpaAmount() {
		return spaAmount;
	}

	public void setSpaAmount(BigDecimal spaAmount) {
		this.spaAmount = spaAmount;
	}

	public BigDecimal getMassAmount() {
		return massAmount;
	}

	public void setMassAmount(BigDecimal massAmount) {
		this.massAmount = massAmount;
	}

}
