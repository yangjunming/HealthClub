package com.club.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.club.dao.OrderDao;
import com.club.dao.TechnicianDao;
import com.club.model.Order;
import com.club.model.TechnicianDetailRes;
import com.club.model.TechnicianPerform;
import com.club.model.TechnicianSalary;

@Controller
@RequestMapping("/technician")
public class TechnicianController {
	@Autowired
	private OrderDao orderDao;
	@Autowired
	private TechnicianDao technicianDao;

	@RequestMapping("/schedule")
	public ModelAndView techModelAndView(@RequestParam(required = false) int id) {
		List<Order> orders = orderDao.getOrderByTechnician(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("orders", orders);
		mv.setViewName("technician/schedule");
		return mv;
	}
	
	@RequestMapping("/salary")
	public ModelAndView salaryModelAndView(@RequestParam(required = false) int id) {
		List<TechnicianSalary> salaries = orderDao.getSalaryByTechnician(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("salaries", salaries);
		mv.setViewName("technician/salary");
		return mv;
	}
	
	@RequestMapping("/performance")
	public ModelAndView performanceModelAndView(@RequestParam(required = false) int id) {
		List<TechnicianPerform> perform = orderDao.getPerformByTechnician(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("perform", perform);
		mv.setViewName("technician/performance");
		return mv;
	}
	
	@RequestMapping("/getTechnicianByGrade")
	@ResponseBody
	public List<TechnicianDetailRes> getTechnicianByGrade(@RequestParam(required = false) Integer grade) {
		List<TechnicianDetailRes> technicianList = new ArrayList<>();
		technicianList = technicianDao.getTechnicianByGrade(grade);
		return technicianList;
	}
	
}
