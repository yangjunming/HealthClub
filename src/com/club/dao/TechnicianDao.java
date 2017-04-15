package com.club.dao;

import java.util.List;

import com.club.model.Technician;
import com.club.model.TechnicianDetailRes;

public interface TechnicianDao {

	public boolean updateByUserId(Technician technician);

	public List<TechnicianDetailRes> getTechnicianByGrade(Integer grade);

}
