package com.club.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.club.mapper.UserMapper;
import com.club.model.TechnicianDetailRes;
import com.club.model.User;
@Component
public class UserDaoImpl implements UserDao{
    @Autowired
	private UserMapper userMapper;
	@Override
	public User findUserById(int id) {
		User user = userMapper.selectUserById(id);
		 return user; 
	}
	@Override
	public User login(User user) {
		User result = userMapper.login(user);
		return result;
	}
	@Override
	public User getUserByMobile(String mobile) {
		User user = userMapper.getUserByMobile(mobile);
		return user;
	}
	@Override
	public Integer insert(User user) {
		int reult = userMapper.insert(user);
		if(reult==0){
			return 0;
		}
		return user.getId();
	}
	@Override
	public boolean update(User user) {
		int reult = userMapper.update(user);
		if(reult==0){
			return false;
		}
		return true;
	}
	@Override
	public List<TechnicianDetailRes> getTechnician() {
		return userMapper.getTechnician();
	}
	@Override
	public TechnicianDetailRes getTechnicianDetail(int id) {
		return userMapper.getTechnicianDetail(id);
	}
	
}
