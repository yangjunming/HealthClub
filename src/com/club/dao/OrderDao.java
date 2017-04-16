package com.club.dao;

import java.util.List;

import com.club.model.IncomeAndExpense;
import com.club.model.Order;
import com.club.model.TechnicianPerform;
import com.club.model.TechnicianSalary;


public interface OrderDao {
	
	public List<Order> getOrderByTechnician(int technicianId);
	
	public List<TechnicianSalary> getSalaryByTechnician(int technicianId);
	
	public List<TechnicianPerform> getPerformByTechnician(int technicianId);
	
	public List<TechnicianPerform> getAllPerform();
	
	public List<IncomeAndExpense> getIncomeAndExpense();


	
	
}
