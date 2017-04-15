package com.club.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.club.model.MemberCard;

public interface MemberCardDao {

	public List<MemberCard> gethomeList(String query,Integer grade);

	public boolean addMemberCard(MemberCard memberCard);
	
	public MemberCard getMemberCardByUserId(int userId);

}
