package com.enimbe.test.lesson06.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enimbe.test.lesson06.dao.BookingDAO;
import com.enimbe.test.lesson06.model.Booking;

@Service
public class BookingBO {

	@Autowired
	private BookingDAO bookingDAO;
	
	public List<Booking> getBookingList() {
		return bookingDAO.selectBooking();
	}
	
	public int deleteBooking(int id) {
		return bookingDAO.deleteBooking(id);
	}
	
	public int addBooking(String name, int day, Date date, int headcount, String phoneNumber) {
		return bookingDAO.insertBooking(name, day, date, headcount, phoneNumber);
	}
	
	public Booking searchBooking(int id) {
		return bookingDAO.searchBooking(id);
	}
	
}

