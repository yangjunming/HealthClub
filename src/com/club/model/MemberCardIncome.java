package com.club.model;

import java.math.BigDecimal;
import java.util.Date;

public class MemberCardIncome {
	private int id;
	private BigDecimal charge;
	private Date createDate;
	private int memberCardId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public BigDecimal getCharge() {
		return charge;
	}

	public void setCharge(BigDecimal charge) {
		this.charge = charge;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public int getMemberCardId() {
		return memberCardId;
	}

	public void setMemberCardId(int memberCardId) {
		this.memberCardId = memberCardId;
	}

}
