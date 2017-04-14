package com.club.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.club.mapper.TechnicianMapper;
import com.club.model.Technician;

@Component
public class TechnicianDaoImpl implements TechnicianDao {
	@Autowired
	private TechnicianMapper technicianMapper;

	@Override
	public boolean updateByUserId(Technician technician) {
		int resulet = technicianMapper.updateByUserId(technician);
		if (resulet > 0) {
			return true;
		}
		return false;
	}

}
