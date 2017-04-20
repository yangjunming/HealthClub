package com.club.dao;

import java.math.BigDecimal;
import java.util.List;

import com.club.model.MemberCard;

public interface MemberCardDao {

	public List<MemberCard> gethomeList(String query,Integer grade);

	public boolean addMemberCard(MemberCard memberCard);
	
	public MemberCard getMemberCardByUserId(int userId);

	public boolean updateMemberCard(MemberCard memberCard);

	public MemberCard getMemCardByMemCardId(Integer id);
	
	public boolean minusMemberCardPoint(Integer id, BigDecimal balan);
}
