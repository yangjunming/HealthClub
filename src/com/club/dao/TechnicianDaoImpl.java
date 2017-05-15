package com.club.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.club.mapper.TechnicianMapper;
import com.club.model.Appointment;
import com.club.model.Technician;
import com.club.model.TechnicianDetailRes;

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

	@Override
	public List<TechnicianDetailRes> getTechnicianByGrade(Integer grade) {
		return technicianMapper.getTechnicianByGrade(grade);
	}

	@Override
	public List<Appointment> getTechnicianHasAppointment(Integer technicianId,Integer roomId) {
		return technicianMapper.getTechnicianHasAppointment(technicianId,roomId);
	}

	@Override
	public List<TechnicianDetailRes> getTechnician(Integer grade) {
		return technicianMapper.getTechnician(grade);
	}

}
