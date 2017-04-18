package com.club.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.club.mapper.HomeMapper;
import com.club.model.Home;
@Component
public class HomeDaoImpl implements HomeDao{
    @Autowired
	private HomeMapper homeMapper;

	@Override
	public Home getHomeById(int homeId) {
		Home home = homeMapper.getHomeById(homeId);
		return home;
	}

	@Override
	public List<Home> gethomeList() {
		List<Home> home = homeMapper.gethomeList();
		return home;
	}

	@Override
	public List<Home> getHomeNotTechnician(int id) {
		List<Home> home = homeMapper.getHomeNotTechnician(id);
		return home;
	}

	@Override
	public boolean updateByUserId(int userId) {
		int result = homeMapper.updateHomeByUserId(userId);
		if(result>0){
			return true;
		}
		return false;
	}

	@Override
	public Home getHomeByUserId(Integer userId) {
		return homeMapper.getHomeByUserId(userId);
	}

	@Override
	public boolean updateByHomeId(Home home) {
		int result = homeMapper.updateByHomeId(home);
		if(result>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateByHomeNum(Integer userId, int homeNum) {
		int result = homeMapper.updateByHomeNum(userId,homeNum);
		if(result>0){
			return true;
		}
		return false;
	}

	@Override
	public List<Home> getHomeBySize(int homeSize) {
		return homeMapper.getHomeBySize(homeSize);
	}

	@Override
	public boolean updateHomeByOrder(Home home) {
		int result = homeMapper.updateHomeByOrder(home);
		if(result>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateHomeToStart(Home home) {
		int result = homeMapper.updateHomeToStart(home);
		if(result>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateHomeToEnd(Home home) {
		int result = homeMapper.updateHomeToEnd(home);
		if(result>0){
			return true;
		}
		return false;
	}
	
}
