package com.club.model;

public class Home {
	private int id;
	private String startTime;
	private int isEnd;
	private int isReservation;
	private String resTime;
	private int userId;
	private int hasUser;
	private int technicianId;
	private int homeNum;
	public int getTechnicianId() {
		return technicianId;
	}
	public void setTechnicianId(int technicianId) {
		this.technicianId = technicianId;
	}
	public int getHomeNum() {
		return homeNum;
	}
	public void setHomeNum(int homeNum) {
		this.homeNum = homeNum;
	}
	public int getHasUser() {
		return hasUser;
	}
	public void setHasUser(int hasUser) {
		this.hasUser = hasUser;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
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
	public String getResTime() {
		return resTime;
	}
	public void setResTime(String resTime) {
		this.resTime = resTime;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

}
