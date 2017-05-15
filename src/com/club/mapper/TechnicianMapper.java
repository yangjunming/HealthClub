package com.club.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.club.model.Appointment;
import com.club.model.Technician;
import com.club.model.TechnicianDetailRes;

public interface TechnicianMapper {

	public int updateByUserId(Technician technician);

	public List<TechnicianDetailRes> getTechnicianByGrade(@Param("grade")Integer grade);

    public int insert(Technician technician);

	public List<Appointment> getTechnicianHasAppointment(@Param("technicianId")Integer technicianId,@Param("roomId")Integer roomId);

	public List<TechnicianDetailRes> getTechnician(@Param("grade")Integer grade);

}
