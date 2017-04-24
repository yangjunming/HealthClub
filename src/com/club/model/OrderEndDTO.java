/**
 * 
 */
package com.club.model;

import java.math.BigDecimal;

public class OrderEndDTO {
	private int orderId;
	private int homeId;
	private BigDecimal balance;
	private BigDecimal spaAmount;
	private BigDecimal massAmount;
	private BigDecimal cupAmount;
	private BigDecimal nodiscountSalesVolume;
	private BigDecimal salesVolume;
	private int memCardId;
	private int userId;
	private int flag;
	private BigDecimal homeCharge;

	public BigDecimal getHomeCharge() {
		return homeCharge;
	}

	public void setHomeCharge(BigDecimal homeCharge) {
		this.homeCharge = homeCharge;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getHomeId() {
		return homeId;
	}

	public void setHomeId(int homeId) {
		this.homeId = homeId;
	}

	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
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

	public BigDecimal getCupAmount() {
		return cupAmount;
	}

	public void setCupAmount(BigDecimal cupAmount) {
		this.cupAmount = cupAmount;
	}

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

	public int getMemCardId() {
		return memCardId;
	}

	public void setMemCardId(int memCardId) {
		this.memCardId = memCardId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}
