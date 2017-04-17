package com.club.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.club.mapper.MemberCardMapper;
import com.club.model.MemberCard;
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
	};
	
}
