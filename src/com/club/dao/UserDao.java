package com.club.dao;

import java.util.List;

import com.club.model.TechnicianDetailRes;
import com.club.model.User;
public interface UserDao {
	public User findUserById(int id);

	public User login(User user);

	public User getUserByMobile(String mobile);

	public Integer insert(User user1);

	public boolean update(User user1);

	public List<TechnicianDetailRes> getTechnician();

	public TechnicianDetailRes getTechnicianDetail(int id);
}
