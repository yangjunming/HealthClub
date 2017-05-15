/**
 * 
 */
package com.club.model;

import java.math.BigDecimal;
import java.util.Date;

public class OrderRes {
	private int id;
	private int roomId;
	private int technicianId;
	private String technicianName;
	private Date startTime;
	private Date endTime;
	private int isEnd;
	private int isReservation;
	private int userId;
	private Date resTime;
	private Date resStarttime;
	private Date resEndtime;
	private int orderStatus;
	private int salesVolume;
	private int isSpa;
	private int isMass;
	private int isCup;
	private int size;
	private int homeNum;
	private String mobile;
	private String name;
	private int type;
	private BigDecimal spaCharge;
	private BigDecimal massCharge;
	private BigDecimal homeCharge;
	private int appointmentId;

	public int getAppointmentId() {
		return appointmentId;
	}

	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}

	public BigDecimal getHomeCharge() {
		return homeCharge;
	}

	public void setHomeCharge(BigDecimal homeCharge) {
		this.homeCharge = homeCharge;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

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

	private BigDecimal cupCharge;

	public String getTechnicianName() {
		return technicianName;
	}

	public void setTechnicianName(String technicianName) {
		this.technicianName = technicianName;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getHomeNum() {
		return homeNum;
	}

	public void setHomeNum(int homeNum) {
		this.homeNum = homeNum;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Date getResStarttime() {
		return resStarttime;
	}

	public void setResStarttime(Date resStarttime) {
		this.resStarttime = resStarttime;
	}

	public Date getResEndtime() {
		return resEndtime;
	}

	public void setResEndtime(Date resEndtime) {
		this.resEndtime = resEndtime;
	}

	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getSalesVolume() {
		return salesVolume;
	}

	public void setSalesVolume(int salesVolume) {
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
