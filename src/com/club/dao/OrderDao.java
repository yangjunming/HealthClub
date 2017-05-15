package com.club.dao;

import java.util.List;

import com.club.model.AchievementOfMonth;
import com.club.model.ExpenditureDetails;
import com.club.model.IncomeAndExpense;
import com.club.model.Order;
import com.club.model.OrderRes;
import com.club.model.TechnicianPerform;
import com.club.model.TechnicianSalary;


public interface OrderDao {
	
	public List<Order> getOrderByTechnician(int technicianId);
	
	public List<TechnicianSalary> getSalaryByTechnician(int technicianId);
	
	public List<TechnicianPerform> getPerformByTechnician(int technicianId);

	public int submitOrder(Order order);

	public OrderRes getOrderByHomeId(Integer roomId);

	public boolean updateOrder(Order order);
	
	public List<TechnicianPerform> getAllPerform();
	
	public List<IncomeAndExpense> getIncomeAndExpense();

	public List<AchievementOfMonth> getAchievementOfMonth();

	public List<ExpenditureDetails> getExpenditureDetails();

	public List<OrderRes> getOrderListByHomeId(Integer roomId);

	public OrderRes getOrderByOrderId(Integer orederId);


	
	
}
