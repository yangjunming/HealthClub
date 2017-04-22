package com.club.dao;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.club.mapper.MemberCardMapper;
import com.club.model.MemberCard;
import com.club.model.MemberCardIncome;
@Component
public class MemberCardDaoImpl implements MemberCardDao{
    @Autowired
	private MemberCardMapper memberCardMapper;

	@Override
	public List<MemberCard> gethomeList(String query,Integer grade) {
		List<MemberCard> list = memberCardMapper.gethomeList(query,grade);
		return list;
	}

	@Override
	public boolean addMemberCard(MemberCard memberCard) {
		int result = memberCardMapper.addMemberCard(memberCard);
		if(result>0){
			return true;
		}
		return false;
	}
	@Override
	public MemberCard getMemberCardByUserId(int userId){
		MemberCard mCard = memberCardMapper.getMemberCardByUserId(userId);
		return mCard;
	}

	@Override
	public boolean updateMemberCard(MemberCard memberCard) {
		int result = memberCardMapper.updateMemberCard(memberCard);
		if(result>0){
			return true;
		}
		return false;
	}

	@Override
	public MemberCard getMemCardByMemCardId(Integer id) {
		MemberCard mCard = memberCardMapper.getMemCardByMemCardId(id);
		return mCard;
	}

	@Override
	public boolean minusMemberCardPoint(Integer id, BigDecimal balan) {
		int result = memberCardMapper.minusMemberCardPoint(id, balan);
		if(result>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insertMemberCardIncome(MemberCardIncome memberCardIncome) {
		int result = memberCardMapper.insertMemberCardIncome(memberCardIncome);
		if(result>0){
			return true;
		}
		return false;
	};
	
}
