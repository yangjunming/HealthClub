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
		boolean insertOrder = orderDao.submitOrder(order);
		Home home = new Home();
		home.setId(order.getRoomId());
		home.setIsReservation(1);
		home.setResTime(order.getResStarttime());
		home.setTechnicianId(order.getTechnicianId());
		home.setHasUser(2);
		boolean updateHome = homeDao.updateByHomeId(home);
		if (insertOrder && updateHome) {
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
		boolean insertOrder = orderDao.submitOrder(order);
		home.setId(order.getRoomId());
		home.setStartTime(new Date());
		home.setTechnicianId(order.getTechnicianId());
		home.setHasUser(1);
		boolean updateHome = homeDao.updateByHomeId(home);
		if (insertOrder && updateHome) {
			return true;
		}
		return false;
	}

	/**
	 * 根据房间id获取订单
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
	 * 更新订单
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
			return true;
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
		if (orderEndDTO.getMemCardId() != 0) {
			MemberCard memberCard = memberCardDao.getMemberCardByUserId(orderEndDTO.getUserId());
			MemberCard MemberCard = new MemberCard();
			MemberCard.setId(memberCard.getId());
			BigDecimal pointBalance = memberCard.getPointBalance();
			pointBalance = pointBalance.add(orderEndDTO.getSalesVolume().multiply(memberCard.getPoint()));
			MemberCard.setPointBalance(pointBalance);
			if (orderEndDTO.getFlag() == 1) {
				BigDecimal balance = memberCard.getBalance();
				balance = balance.subtract(orderEndDTO.getSalesVolume());
			}
			memberCardDao.updateMemberCard(MemberCard);
			order.setSpaAmount(orderEndDTO.getSpaAmount().multiply(memberCard.getPoint()));
			order.setMassAmount(orderEndDTO.getMassAmount().multiply(memberCard.getPoint()));
			order.setCupAmount(orderEndDTO.getCupAmount().multiply(memberCard.getPoint()));
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

}
