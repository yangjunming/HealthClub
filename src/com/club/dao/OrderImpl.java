package com.club.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.club.mapper.OrderMapper;
import com.club.model.IncomeAndExpense;
import com.club.model.Order;
import com.club.model.TechnicianPerform;
import com.club.model.TechnicianSalary;

@Component
public class OrderImpl implements OrderDao{
	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public List<Order> getOrderByTechnician(int technicianId) {
		List<Order> orders = orderMapper.getOrderByTechnician(technicianId);
		return orders;
	}

	@Override
	public List<TechnicianSalary> getSalaryByTechnician(int technicianId) {
		List<TechnicianSalary> salaries = orderMapper.getSalaryByTechnician(technicianId);
		return salaries;
	}
	
	@Override
	public List<TechnicianPerform> getPerformByTechnician(int technicianId) {
		List<TechnicianPerform> perform = orderMapper.getPerformByTechnician(technicianId);
		return perform;
	}

	@Override
	public List<TechnicianPerform> getAllPerform() {
		List<TechnicianPerform> performs = orderMapper.getAllPerform();
		return performs;
	}

	@Override
	public List<IncomeAndExpense> getIncomeAndExpense() {
		List<IncomeAndExpense> incomeAndExpenses = orderMapper.getIncomeAndExpense();
		return incomeAndExpenses;
	}
	

}
