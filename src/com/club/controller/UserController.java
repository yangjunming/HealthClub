package com.club.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.club.dao.HomeDao;
import com.club.dao.TechnicianDao;
import com.club.dao.UserDao;
import com.club.model.Home;
import com.club.model.Technician;
import com.club.model.TechnicianDetailRes;
import com.club.model.User;

@Controller
public class UserController {
	@Autowired
	private UserDao userDao;
	@Autowired
	private TechnicianDao technicianDao;
	@Autowired
	private HomeDao homeDao;

	@RequestMapping(value = "/findUser", method = RequestMethod.POST)
	public String getUser() {
		return "login";
	}

	@RequestMapping("/index")
	public ModelAndView getIndex(@RequestParam String userName, @RequestParam String password,HttpSession httpSession) {
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		User result = userDao.login(user);
		ModelAndView mv = new ModelAndView();
		if (null != result) {
			switch (result.getType()) {
			case 1:
				mv.setViewName("manager/manager-index");
				break;
			case 2:
				mv.setViewName("technician/technician-index");
				break;
			case 3:
				mv.setViewName("customer/tourist-index");
				break;
			case 4:
				mv.setViewName("customer/member-index");
				break;
			}
			mv.addObject("result", result);
			httpSession.setAttribute("User", result);
			return mv;
		}
		mv.addObject("message", "登录失败");
		mv.addObject("flag", false);
		mv.setViewName("login");
		return mv;
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "Hello World!");
		mv.addObject("flag", true);
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping("/loginout")
	public ModelAndView loginOut(HttpSession httpSession) {
		ModelAndView mv = new ModelAndView();
		if(httpSession != null){
			httpSession.removeAttribute("User"); 
		}
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping("/getUserByMobile")
	@ResponseBody
	public String getUserByMobile(@RequestParam String mobile) {
		if(null == mobile || mobile.equals("")){
			return "";
		}
		User user = userDao.getUserByMobile(mobile);
		if(null != user){
			return user.getName();
		}
		return "";
	}
	
	@RequestMapping("/user/getTechnician")
	@ResponseBody
	public List<TechnicianDetailRes> getTechnician() {
		List<TechnicianDetailRes> user = userDao.getTechnician();
		return user;
	}
	
	@RequestMapping("/user/getTechnicianDetail")
	@ResponseBody
	public TechnicianDetailRes getTechnicianDetail(@RequestParam(required =false) int id) {
		TechnicianDetailRes user = userDao.getTechnicianDetail(id);
		return user;
	}
	
	@RequestMapping("/user/editTechnician")
	@ResponseBody
	public Object editTechnician(@RequestBody TechnicianDetailRes request){
		User user = new User();
		user.setId(request.getId());
		user.setMobile(request.getMobile());
		user.setName(request.getName());
		boolean updateUser = userDao.update(user);
		Technician technician = new Technician();
		technician.setUserId(request.getId());
		technician.setGrade(request.getGrade());
		technician.setTechnicianStatus(request.getTechnicianStatus());
		technician.setCharge(request.getCharge());
		boolean updateTe = technicianDao.updateByUserId(technician);
		Home home = homeDao.getHomeByUserId(request.getId());
		if(null !=home){
			boolean updateHome = homeDao.updateByUserId(home.getUserId());
		}
		boolean updateHome = homeDao.updateByHomeNum(request.getId(),request.getHomeNum());
		if(updateUser&&updateTe&&updateHome){
			return true;
		}
		return false;
	}
	
}
