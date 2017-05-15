package com.club.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.club.model.Appointment;
import com.club.model.Home;
public interface HomeMapper {

	public Home getHomeById(@Param("homeId")int homeId);

	public List<Home> gethomeList();

	public List<Home> getHomeNotTechnician(@Param("id")int id);

	public int updateHomeByUserId(@Param("userId") int userId);

	public Home getHomeByUserId(@Param("userId")Integer userId);

	public int updateByHomeId(Home home);

	public int updateByHomeNum(@Param("userId")Integer userId,@Param("homeNum") int homeNum);

	public List<Home> getHomeBySize(@Param("homeSize")int homeSize);

	public int updateHomeByOrder(Home home);

	public int updateHomeToStart(Home home);

	public int updateHomeToEnd(Home home);

	public int insertAppointment(Appointment appointment);

	public int updateAppointment(Appointment appointment);

	public int updateAppointmentByOrderId(@Param("orderId")int orderId);

}
