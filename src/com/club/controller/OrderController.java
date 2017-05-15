package com.club.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.club.dao.HomeDao;
import com.club.dao.MemberCardDao;
import com.club.dao.OrderDao;
import com.club.dao.UserDao;
import com.club.model.AchievementOfMonth;
import com.club.model.Appointment;
import com.club.model.ExpenditureDetails;
import com.club.model.Home;
import com.club.model.MemberCard;
import com.club.model.Order;
import com.club.model.OrderEndDTO;
import com.club.model.OrderRes;
import com.club.model.User;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderDao orderDao;
	@Autowired
	private HomeDao homeDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private MemberCardDao memberCardDao;

	/**
	 * 预约提交订单
	 * 
	 * @param order
	 * @return
	 */
	@RequestMapping("/submitOrder")
	@ResponseBody
	public boolean submitOrder(@RequestBody Order order) {
		order.setResTime(new Date());
		order.setIsReservation(1);
		int insertOrderId = orderDao.submitOrder(order);
		Home home = new Home();
		home.setId(order.getRoomId());
		home.setIsReservation(0);
		home.setResTime(order.getResStarttime());
		home.setTechnicianId(order.getTechnicianId());
		home.setHasUser(0);
		boolean updateHome = homeDao.updateByHomeId(home);
		if (insertOrderId > 0 && updateHome) {
			Appointment appointment = new Appointment();
			appointment.setRoomId(order.getRoomId());
			appointment.setTechnicianId(order.getTechnicianId());
			appointment.setStartTime(order.getResStarttime());
			appointment.setEndTime(order.getResEndtime());
			appointment.setOrderId(insertOrderId);
			homeDao.insertAppointment(appointment);
			return true;
		}
		return false;
	}

	/**
	 * 管理员直接提交订单
	 * 
	 * @param order
	 * @return
	 */
	@RequestMapping("/submitOrderByManager")
	@ResponseBody
	public boolean submitOrderByManager(@RequestBody Order order) {
		String mobile = order.getMobile();
		User user = userDao.getUserByMobile(mobile);
		Home home = new Home();
		if (null != user) {
			order.setUserId(user.getId());
			home.setUserId(user.getId());
		}
		order.setOrderStatus(1);
		order.setStartTime(new Date());
		int insertOrderId = orderDao.submitOrder(order);
		home.setId(order.getRoomId());
		home.setStartTime(new Date());
		home.setTechnicianId(order.getTechnicianId());
		home.setHasUser(1);
		home.setOrderId(insertOrderId);
		boolean updateHome = homeDao.updateByHomeId(home);
		if (insertOrderId > 0 && updateHome) {
			return true;
		}
		return false;
	}

	/**
	 * 根据房间id获取订单
	 * 
	 * @param roomId
	 * @return
	 */
	@RequestMapping("/getOrderByHomeId")
	@ResponseBody
	public OrderRes getOrderByHomeId(@RequestParam(required = false) Integer roomId) {
		OrderRes order = new OrderRes();
		if (null == roomId || roomId == 0) {
			return order;
		}
		order = orderDao.getOrderByHomeId(roomId);
		return order;
	}
	
	/**
	 * 根据订单id获取订单信息
	 * @param orderId
	 * @return
	 */
	@RequestMapping("/getOrderByOrderId")
	@ResponseBody
	public OrderRes getOrderByOrderId(@RequestParam(required = false) Integer orederId) {
		OrderRes order = new OrderRes();
		if (null == orederId || orederId == 0) {
			return order;
		}
		order = orderDao.getOrderByOrderId(orederId);
		return order;
	}
	
	/**
	 * 根据房间id获取订单列表
	 * 
	 * @param roomId
	 * @return
	 */
	@RequestMapping("/getOrderListByHomeId")
	@ResponseBody
	public List<OrderRes> getOrderListByHomeId(@RequestParam(required = false) Integer roomId) {
		List<OrderRes> order = new ArrayList<>();
		if (null == roomId || roomId == 0) {
			return order;
		}
		order = orderDao.getOrderListByHomeId(roomId);
		return order;
	}

	/**
	 * 更新订单
	 * 
	 * @param order
	 * @return
	 */
	@RequestMapping("/updateOrder")
	@ResponseBody
	public boolean updateOrder(@RequestBody Order order) {
		Home home = new Home();
		boolean updateHome = false;
		boolean updateOrder = false;
		if (order.getOrderStatus() == 1) {
			order.setStartTime(new Date());
			home.setId(order.getRoomId());
			home.setIsReservation(0);
			home.setOrderId(order.getId());
			home.setHasUser(1);
			updateHome = homeDao.updateHomeToStart(home);
		} else {
			home.setId(order.getRoomId());
			home.setIsReservation(0);
			home.setTechnicianId(0);
			home.setStartTime(new Date());
			updateHome = homeDao.updateHomeByOrder(home);
		}
		updateOrder = orderDao.updateOrder(order);
		if (updateOrder && updateHome) {
			boolean result = homeDao.updateAppointmentByOrderId(order.getId());
			if(result){
			return true;
			}
		}
		return false;
	}

	/**
	 * 结单
	 * 
	 * @param order
	 * @return
	 */
	@RequestMapping("/endOrder")
	@ResponseBody
	public boolean endOrder(@RequestBody OrderEndDTO orderEndDTO) {
		boolean updateHome = false;
		boolean updateOrder = false;
		Home home = new Home();
		home.setId(orderEndDTO.getHomeId());
		home.setHasUser(0);
		home.setIsEnd(1);
		home.setTechnicianId(0);
		home.setUserId(0);
		updateHome = homeDao.updateHomeToEnd(home);
		Order order = new Order();
		order.setId(orderEndDTO.getOrderId());
		order.setEndTime(new Date());
		order.setIsEnd(1);
		order.setOrderStatus(2);
		order.setNodiscountSalesVolume(orderEndDTO.getNodiscountSalesVolume());
		order.setSalesVolume(orderEndDTO.getSalesVolume());
		order.setHomeCharge(orderEndDTO.getHomeCharge());
		// 会员
		if (orderEndDTO.getMemCardId() != 0) {
			MemberCard memberCard = memberCardDao.getMemberCardByUserId(orderEndDTO.getUserId());
			MemberCard MemberCard = new MemberCard();
			MemberCard.setId(memberCard.getId());
			BigDecimal pointBalance = memberCard.getPointBalance();
			pointBalance = pointBalance.add(orderEndDTO.getSalesVolume().multiply(memberCard.getPoint()));
			MemberCard.setPointBalance(pointBalance);
			// 余额支付
			if (orderEndDTO.getFlag() == 1) {
				BigDecimal balance = memberCard.getBalance();
				balance = balance.subtract(orderEndDTO.getSalesVolume());
				MemberCard.setBalance(balance);
			}
			memberCardDao.updateMemberCard(MemberCard);
			order.setSpaAmount(orderEndDTO.getSpaAmount());
			order.setMassAmount(orderEndDTO.getMassAmount());
			order.setCupAmount(orderEndDTO.getCupAmount());
		} else {
			order.setSpaAmount(orderEndDTO.getSpaAmount());
			order.setMassAmount(orderEndDTO.getMassAmount());
			order.setCupAmount(orderEndDTO.getCupAmount());
		}
		updateOrder = orderDao.updateOrder(order);
		if (updateOrder && updateHome) {
			return true;
		}
		return false;
	}

	/**
	 * 查询三种服务各月数据明细
	 * 
	 * @param roomId
	 * @return
	 */
	@RequestMapping("/getAchievementOfMonth")
	@ResponseBody
	public List<AchievementOfMonth> getAchievementOfMonth() {
		List<AchievementOfMonth> achievementOfMonth = new ArrayList<>();
		achievementOfMonth = orderDao.getAchievementOfMonth();
		return achievementOfMonth;
	}

	/**
	 * 查询收支明细
	 * 
	 * @return
	 */
	@RequestMapping("/getExpenditureDetails")
	@ResponseBody
	public List<ExpenditureDetails> getExpenditureDetails() {
		List<ExpenditureDetails> list = new ArrayList<>();
		list = orderDao.getExpenditureDetails();
		return list;
	}

	/**
	 * 取消订单
	 * @param orderId
	 * @param appointmentId
	 * @return
	 */
	@RequestMapping("/cancelOrder")
	@ResponseBody
	public boolean cancelOrder(@RequestParam Integer orderId, @RequestParam Integer appointmentId) {
		Order order = new Order();
		order.setId(orderId);
		order.setOrderStatus(3);
		boolean updateOrder = orderDao.updateOrder(order);
		if (updateOrder) {
			Appointment appointment = new Appointment();
			appointment.setId(appointmentId);
			appointment.setStatus(2);
			boolean result = homeDao.updateAppointment(appointment);
			if (result) {
				return true;
			}
		}
		return false;

	}
	
	/**
	 * 根据用户id获取订单列表
	 * 
	 * @param userId
	 * @return
	 */
	@RequestMapping("/getOrderListByUserId")
	@ResponseBody
	public List<OrderRes> getOrderListByUserId(@RequestParam(required = false) Integer userId) {
		List<OrderRes> order = new ArrayList<>();
		if (null == userId || userId == 0) {
			return order;
		}
		order = orderDao.getOrderListByUserId(userId);
		return order;
	}

}
