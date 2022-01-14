package com.enimbe.test.lesson06;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.enimbe.test.lesson06.bo.BookingBO;
import com.enimbe.test.lesson06.model.Booking;

@Controller
@RequestMapping("/lesson06/test02")
public class BookingController {

	@Autowired
	private BookingBO bookingBO;
	
	@GetMapping("booking_list")
	public String bookingList(Model model) {
		
		List<Booking> bookingList = bookingBO.getBookingList();
		model.addAttribute("bookingList", bookingList);
		
		return "/lesson06/bookingList";
	}
	
	@ResponseBody
	@GetMapping("/delete_booking")
	public String deleteBooking(@RequestParam("id") int id) {
		
		int count = bookingBO.deleteBooking(id);
		
		if(count == 0) {
			return "fail";
		} else {
			return "success";
		}
		
	}
	
	@GetMapping("/add_booking_view")
	public String addBookingView() {
		return "/lesson06/addBooking";
	}
	
	@ResponseBody
	@PostMapping("/add_booking")
	public String addFavorite(
			@RequestParam("name") String name,
			@RequestParam("day") int day,
			@DateTimeFormat(pattern = "yyyy-MM-dd") 
			@RequestParam("date") Date date,
			@RequestParam("headcount") int headcount,
			@RequestParam("phoneNumber") String phoneNumber
			) {
		
		int count = bookingBO.addBooking(name, day, date, headcount, phoneNumber);
		
		if(count == 1) {
			return "success";
		} else {
			return "fail";
		}
		
	}
	
	@GetMapping("/homepage")
	public String mainPageView() {
		return "/lesson06/homepage";
	}
	
	@ResponseBody
	@PostMapping("/lookup_booking")
	public String lookup(
			@RequestParam("name") String name,
			@RequestParam("phoneNumber") String phoneNumber
			) {
		
		
	}
	
	
	
}







































