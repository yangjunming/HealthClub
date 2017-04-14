package com.club.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.club.model.TechnicianDetailRes;
import com.club.model.User;
public interface UserMapper {
	
	public User selectUserById(int userId);

	public User login(User user);

	public User getUserByMobile(@Param("mobile")String mobile);

	public int insert(User user);

	public int update(User user);

	public List<TechnicianDetailRes> getTechnician();

	public TechnicianDetailRes getTechnicianDetail(@Param("id")int id);

}
