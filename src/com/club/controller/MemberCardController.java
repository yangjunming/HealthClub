package com.club.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.club.dao.MemberCardDao;
import com.club.dao.UserDao;
import com.club.model.MemberCard;
import com.club.model.User;
import com.sun.org.apache.regexp.internal.recompile;

@Controller
@RequestMapping("/memberCard")
public class MemberCardController {
	@Autowired
	private MemberCardDao memberCardDao;
	@Autowired
	private UserDao userDao;

	@RequestMapping("/list")
	public ModelAndView getList(@RequestParam(required = false) String query,
			@RequestParam(required = false) Integer grade) {
		List<MemberCard> cardList = new ArrayList<>();
		cardList = memberCardDao.gethomeList(query, grade);
		for (MemberCard memberCard : cardList) {
			switch (memberCard.getGrade()) {
			case 1:
				memberCard.setCardName("普通会员");
				break;

			case 2:
				memberCard.setCardName("银卡会员");
				break;

			case 3:
				memberCard.setCardName("金卡会员");
				break;

			case 4:
				memberCard.setCardName("白金会员");
				break;

			case 5:
				memberCard.setCardName("至尊会员");
				break;

			default:
				break;
			}

		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("cardList", cardList);
		mv.setViewName("manager/memberCard");
		return mv;
	}
	
	@RequestMapping("/addView")
	public ModelAndView addView(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/add-memberCard");
		return mv;
	}
	
	@RequestMapping(value="/addMemberCard")
	public ModelAndView addMemberCard(@RequestParam Integer grade,
			@RequestParam String cardNum,
			@RequestParam BigDecimal price,
			@RequestParam BigDecimal point,@RequestParam BigDecimal discount,@RequestParam String name,@RequestParam String mobile){
		MemberCard memberCard = new MemberCard();
		memberCard.setGrade(grade);
		memberCard.setCardNum(cardNum);
		memberCard.setPrice(price);
		memberCard.setPoint(point);
		memberCard.setDiscount(discount);
		User user = userDao.getUserByMobile(mobile);
		User user1= new User();
		Integer userId = 0;
		if(user==null){
			user1.setMobile(mobile);
			user1.setName(name);
			user1.setPassword("123456");
			user1.setType(4);
			userId = userDao.insert(user1);
		}else{
			user1.setId(user.getId());
			user1.setType(4);
			boolean updateUser = userDao.update(user1);
			if(updateUser){
				userId = user1.getId();
			}
		}
		boolean result = false;
		if(userId!=0){
			memberCard.setUserId(userId);
			result = memberCardDao.addMemberCard(memberCard);
		}
		ModelAndView mv = new ModelAndView();
		if(result){
			ModelAndView mv1 = getList(null,null);
			return mv1;
		}
		mv.setViewName("manager/memberCard");
		return mv;
	}
	
	@RequestMapping(value="/getMemCard")
	public ModelAndView addMemberCard(@RequestParam(required = false) int id){
		MemberCard mCard = memberCardDao.getMemberCardByUserId(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("mCard", mCard);
		mv.setViewName("customer/member-card");
		return mv;
	}
	
}
