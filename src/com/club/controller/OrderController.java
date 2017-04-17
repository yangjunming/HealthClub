package com.club.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.club.dao.HomeDao;
import com.club.dao.OrderDao;
import com.club.dao.UserDao;
import com.club.model.Home;
import com.club.model.Order;
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
	
	/**
	 * 预约提交订单
	 * @param order
	 * @return
	 */
	@RequestMapping("/submitOrder")
	@ResponseBody
	public boolean submitOrder(@RequestBody Order order){
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
		if(insertOrder&&updateHome){
			return true;
		}
		return false;
	}
	
	/**
	 * 管理员直接提交订单
	 * @param order
	 * @return
	 */
	@RequestMapping("/submitOrderByManager")
	@ResponseBody
	public boolean submitOrderByManager(@RequestBody Order order){
		String mobile = order.getMobile();
		User user = userDao.getUserByMobile(mobile);
		Home home = new Home();
		if(null!=user){
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
		if(insertOrder&&updateHome){
			return true;
		}
		return false;
	}
	
	@RequestMapping("/getOrderByHomeId")
	@ResponseBody
	public OrderRes getOrderByHomeId(@RequestParam(required=false) Integer roomId){
		OrderRes order =new OrderRes();
		if(null == roomId || roomId==0){
			return order;
		}
		order = orderDao.getOrderByHomeId(roomId);
		return order;
	}
	
	@RequestMapping("/updateOrder")
	@ResponseBody
	public boolean updateOrder(@RequestBody Order order){
		Home home = new Home();
		boolean updateHome = false;
		boolean updateOrder =false;
		if(order.getOrderStatus() == 1){
			order.setStartTime(new Date());
			home.setId(order.getRoomId());
			home.setIsReservation(0);
			home.setHasUser(1);
			updateHome = homeDao.updateHomeToStart(home);
		}else{
		home.setId(order.getRoomId());
		home.setIsReservation(0);
		home.setTechnicianId(0);
		home.setStartTime(new Date());
		updateHome = homeDao.updateHomeByOrder(home);
		}
		updateOrder = orderDao.updateOrder(order);
		if(updateOrder&&updateHome){
			return true;
		}
		return false;
	}

}
