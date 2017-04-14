package com.club.dao;

import java.util.List;

import com.club.model.Home;

public interface HomeDao {

	public Home getHomeById(int homeId);

	public List<Home> gethomeList();

	public List<Home> getHomeNotTechnician(int id);

	public boolean updateByUserId(int userId);

	public Home getHomeByUserId(Integer id);

	public boolean updateByHomeId(Home home1);

	public boolean updateByHomeNum(Integer id, int homeNum);
	
}
