/**
 * 
 */
package com.club.model;

import java.math.BigDecimal;

public class ExpenditureDetails {
	private String month;
	private BigDecimal cupAmount;
	private BigDecimal spaAmount;
	private BigDecimal massAmount;
	private BigDecimal nodiscountSalesVolume;
	private BigDecimal salesVolume;
	private BigDecimal wages;

	public BigDecimal getNodiscountSalesVolume() {
		return nodiscountSalesVolume;
	}

	public void setNodiscountSalesVolume(BigDecimal nodiscountSalesVolume) {
		this.nodiscountSalesVolume = nodiscountSalesVolume;
	}

	public BigDecimal getSalesVolume() {
		return salesVolume;
	}

	public void setSalesVolume(BigDecimal salesVolume) {
		this.salesVolume = salesVolume;
	}

	public BigDecimal getWages() {
		return wages;
	}

	public void setWages(BigDecimal wages) {
		this.wages = wages;
	}

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
