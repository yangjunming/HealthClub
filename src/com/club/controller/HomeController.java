package com.club.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.club.dao.HomeDao;
import com.club.dao.TechnicianDao;
import com.club.model.Appointment;
import com.club.model.Home;

@Controller
public class HomeController {
	
	@Autowired
	private HomeDao homeDao;
	@Autowired
	private TechnicianDao technicianDao;

	/**
	 * 获取房间列表
	 * 
	 * @return
	 */
	@RequestMapping("/homebase")
	public ModelAndView homebase() {
		List<Home> homeList = homeDao.gethomeList();
		for (Home home : homeList) {
			int id = home.getId();
			List<Appointment> appointmentList = technicianDao.getTechnicianHasAppointment(0,id);
			if(appointmentList.size()>0){
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			    try {
					Date date = sdf.parse(appointmentList.get(0).getStartTime());
					Date newDate= new Date();
					long between=(date.getTime()-newDate.getTime())/1000;//除以1000是为了转换成秒
					long day1=between/(24*3600);
					long hour1=between%(24*3600)/3600;
					long minute1=between%3600/60;
					System.out.println(""+day1+"天"+hour1+"小时"+minute1+"分");
					if(day1==0&&hour1==0&&minute1<30){
						home.setIsReservation(1);
					}
				} catch (ParseException e) {
					e.printStackTrace();
				}  
			}
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("homeList", homeList);
		mv.setViewName("home/home-base");
		return mv;
	}

	/**
	 * 根据房间id获取房间信息
	 * 
	 * @param homeId
	 * @return
	 */
	@RequestMapping("/home")
	public ModelAndView homeInfo(@RequestParam int homeId) {
		Home home = homeDao.getHomeById(homeId);
		ModelAndView mv = new ModelAndView();
		mv.addObject("id", home.getId());
		mv.addObject("size",home.getSize());
		mv.addObject("isEnd", home.getIsEnd());
		mv.addObject("isReservation", home.getIsReservation());
		mv.addObject("resTime", home.getResTime());
		mv.addObject("startTime", home.getStartTime());
		mv.addObject("userId", home.getUserId());
		mv.addObject("charge", home.getCharge());
		mv.addObject("hasUser", home.getHasUser());
		mv.setViewName("home/home");
		return mv;
	}

	/**
	 * 获取本人可负责房间
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/home/getHomeNotTechnician")
	@ResponseBody
	public List<Home> getHomeNotTechnician(@RequestParam(required = false) int id) {
		List<Home> home = homeDao.getHomeNotTechnician(id);
		return home;
	}

	/**
	 * 根据房间大小获取房间列表
	 * 
	 * @param homeSize
	 * @return
	 */
	@RequestMapping("/home/getHomeBySize")
	@ResponseBody
	public List<Home> getHomeBySize(@RequestParam(required = false) int homeSize) {
		List<Home> home = homeDao.getHomeBySize(homeSize);
		return home;
	}
	
	/**
	 * 更新房间信息
	 * @param home
	 * @return
	 */
	@RequestMapping("/home/updateHome")
	@ResponseBody
	public boolean updateHome(@RequestBody Home home) {
		return homeDao.updateHome(home);
	}

}
