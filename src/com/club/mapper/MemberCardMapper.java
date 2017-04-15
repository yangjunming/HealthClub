package com.club.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.club.model.MemberCard;

public interface MemberCardMapper {

	public List<MemberCard> gethomeList(@Param("query")String query,@Param("grade")Integer grade);

	public int addMemberCard(MemberCard memberCard);
	
	public MemberCard getMemberCardByUserId(@Param("userId")int userId);

}
