package com.club.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.club.dao.HomeDao;
import com.club.model.Home;

@Controller
public class HomeController {
	@Autowired
	private HomeDao homeDao;
	
	/**
	 * 获取房间列表
	 * @return
	 */
	@RequestMapping("/homebase")
	public ModelAndView homebase() {
		List<Home> homeList = homeDao.gethomeList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("homeList",homeList);
		mv.setViewName("home/home-base");
		return mv;
	}

	/**
	 * 根据房间id获取房间信息
	 * @param homeId
	 * @return
	 */
	@RequestMapping("/home")
	public ModelAndView homeInfo(@RequestParam int homeId) {
		Home home = homeDao.getHomeById(homeId);
		ModelAndView mv = new ModelAndView();
		mv.addObject("id", home.getId());
		mv.addObject("isEnd", home.getIsEnd());
		mv.addObject("isReservation", home.getIsReservation());
		mv.addObject("resTime", home.getResTime());
		mv.addObject("startTime", home.getStartTime());
		mv.addObject("userId", home.getUserId());
			mv.addObject("hasUser", home.getHasUser());
		mv.setViewName("home/home");
		return mv;
	}
	
	/**
	 * 获取本人可负责房间
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
	 * @param homeSize
	 * @return
	 */
	@RequestMapping("/home/getHomeBySize")
	@ResponseBody
	public List<Home> getHomeBySize(@RequestParam(required = false) int homeSize) {
		List<Home> home = homeDao.getHomeBySize(homeSize);
		return home;
	}

}
