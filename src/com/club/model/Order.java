/**
 * 
 */
package com.club.model;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
	private int id;
	private int roomId;
	private int technicianId;
	private Date startTime;
	private Date endTime;
	private int isEnd;
	private int isReservation;
	private int userId;
	private Date resTime;
	private String resStarttime;
	private String resEndtime;
	private int orderStatus;
	private BigDecimal nodiscountSalesVolume;
	private BigDecimal salesVolume;
	private int isSpa;
	private int isMass;
	private int isCup;
	private BigDecimal spaAmount;
	private BigDecimal massAmount;
	private BigDecimal cupAmount;
	private String mobile;

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public int getTechnicianId() {
		return technicianId;
	}

	public void setTechnicianId(int technicianId) {
		this.technicianId = technicianId;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public int getIsEnd() {
		return isEnd;
	}

	public void setIsEnd(int isEnd) {
		this.isEnd = isEnd;
	}

	public int getIsReservation() {
		return isReservation;
	}

	public void setIsReservation(int isReservation) {
		this.isReservation = isReservation;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Date getResTime() {
		return resTime;
	}

	public void setResTime(Date resTime) {
		this.resTime = resTime;
	}

	public String getResStarttime() {
		return resStarttime;
	}

	public void setResStarttime(String resStarttime) {
		this.resStarttime = resStarttime;
	}

	public String getResEndtime() {
		return resEndtime;
	}

	public void setResEndtime(String resEndtime) {
		this.resEndtime = resEndtime;
	}

	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
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

	public int getIsSpa() {
		return isSpa;
	}

	public void setIsSpa(int isSpa) {
		this.isSpa = isSpa;
	}

	public int getIsMass() {
		return isMass;
	}

	public void setIsMass(int isMass) {
		this.isMass = isMass;
	}

	public int getIsCup() {
		return isCup;
	}

	public void setIsCup(int isCup) {
		this.isCup = isCup;
	}

}
