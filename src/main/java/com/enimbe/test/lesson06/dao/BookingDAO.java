package com.enimbe.test.lesson06.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.enimbe.test.lesson06.model.Booking;

@Repository
public interface BookingDAO {
	
	public List<Booking> selectBooking();

	public int deleteBooking(@Param("id") int id);
	
	public int insertBooking(
			@Param("name") String name,
			@Param("day") int day,
			@Param("date") Date date,
			@Param("headcount") int headcount,
			@Param("phoneNumber") String phoneNumber);
	
	public int searchBooking(int id);
}
