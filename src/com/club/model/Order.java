/**
 * 
 */
package com.club.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

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
	private Date resStarttime;
	private Date resEndtime;
	private int orderStatus;
	private int salesVolume;
	private int isSpa;
	private int isMass;
	private int isCup;
	
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
