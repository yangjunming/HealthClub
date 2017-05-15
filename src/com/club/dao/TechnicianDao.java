package com.club.dao;

import java.util.List;

import com.club.model.Appointment;
import com.club.model.Technician;
import com.club.model.TechnicianDetailRes;

public interface TechnicianDao {

	public boolean updateByUserId(Technician technician);

	public List<TechnicianDetailRes> getTechnicianByGrade(Integer grade);

	public List<Appointment> getTechnicianHasAppointment(Integer technicianId,Integer roomId);

	public List<TechnicianDetailRes> getTechnician(Integer grade);

}
