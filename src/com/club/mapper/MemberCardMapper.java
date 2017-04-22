package com.club.mapper;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.club.model.MemberCard;
import com.club.model.MemberCardIncome;

public interface MemberCardMapper {

	public List<MemberCard> gethomeList(@Param("query")String query,@Param("grade")Integer grade);

	public int addMemberCard(MemberCard memberCard);
	
	public MemberCard getMemberCardByUserId(@Param("userId")int userId);

	public int updateMemberCard(MemberCard memberCard);

	public MemberCard getMemCardByMemCardId(@Param("id")Integer id);
	
	public int minusMemberCardPoint(@Param("id")Integer id,@Param("balan")BigDecimal balan);

	public int insertMemberCardIncome(MemberCardIncome memberCardIncome);

}
