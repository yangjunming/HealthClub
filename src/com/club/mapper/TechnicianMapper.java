package com.club.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.club.model.Technician;
import com.club.model.TechnicianDetailRes;

public interface TechnicianMapper {

	public int updateByUserId(Technician technician);

	public List<TechnicianDetailRes> getTechnicianByGrade(@Param("grade")Integer grade);

}
