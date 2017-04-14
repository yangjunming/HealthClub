package com.club.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.club.model.Order;
import com.club.model.TechnicianPerform;
import com.club.model.TechnicianSalary;

public interface OrderMapper {

	public List<Order> getOrderByTechnician(@Param("technicianId")int technicianId);
	
	public List<TechnicianSalary> getSalaryByTechnician(@Param("technicianId")int technicianId);
	
	public List<TechnicianPerform> getPerformByTechnician(@Param("technicianId")int technicianId);
}
