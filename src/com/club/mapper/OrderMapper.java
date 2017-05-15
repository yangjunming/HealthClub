package com.club.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.club.model.AchievementOfMonth;
import com.club.model.ExpenditureDetails;
import com.club.model.IncomeAndExpense;
import com.club.model.Order;
import com.club.model.OrderRes;
import com.club.model.TechnicianPerform;
import com.club.model.TechnicianSalary;

public interface OrderMapper {

	public List<Order> getOrderByTechnician(@Param("technicianId")int technicianId);
	
	public List<TechnicianSalary> getSalaryByTechnician(@Param("technicianId")int technicianId);
	
	public List<TechnicianPerform> getPerformByTechnician(@Param("technicianId")int technicianId);

	public int insert(Order order);

	public OrderRes getOrderByHomeId(@Param("roomId")Integer roomId);

	public int updateOrder(Order order);
	
	public List<TechnicianPerform> getAllPerform();
	
	public List<IncomeAndExpense> getIncomeAndExpense();

	public List<AchievementOfMonth> getAchievementOfMonth();

	public List<ExpenditureDetails> getExpenditureDetails();

	public List<OrderRes> getOrderListByHomeId(@Param("roomId")Integer roomId);

	public OrderRes getOrderByOrderId(@Param("orderId")Integer orderId);

	public List<OrderRes> getOrderListByUserId(@Param("userId")Integer userId);

}
