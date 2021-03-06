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
import com.club.model.Appointment;
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
	
	@RequestMapping("/getTechnician")
	@ResponseBody
	public List<TechnicianDetailRes> getTechnician(@RequestParam(required = false) Integer grade) {
		List<TechnicianDetailRes> technicianList = new ArrayList<>();
		technicianList = technicianDao.getTechnician(grade);
		return technicianList;
	}
	
	@RequestMapping("/all_performance")
	public ModelAndView performanceModelAndView() {
		List<TechnicianPerform> performs = orderDao.getAllPerform();
		ModelAndView mv = new ModelAndView();
		mv.addObject("performs", performs);
		mv.setViewName("manager/technician-performance");
		return mv;
	}
	@RequestMapping("/incomeAndExpense")
	public ModelAndView incomeModelAndView() {
		List<TechnicianPerform> incomes = orderDao.getAllPerform();
		ModelAndView mv = new ModelAndView();
		mv.addObject("incomes", incomes);
		mv.setViewName("manager/income-expense");
		return mv;
	}
	
	@RequestMapping("/getTechnicianHasAppointment")
	@ResponseBody
	public List<Appointment> getTechnicianHasAppointment(@RequestParam Integer technicianId,@RequestParam Integer roomId) {
		if(technicianId==0 && roomId == 0){
			return new ArrayList<>();
		}
		List<Appointment> appointmentList = technicianDao.getTechnicianHasAppointment(technicianId,roomId);
		return appointmentList;
	}
	
}
