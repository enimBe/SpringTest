package com.enimbe.test.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.enimbe.test.lesson03.bo.RealEstateBO;
import com.enimbe.test.lesson03.model.RealEstate;

@RequestMapping("/lesson03/test01")
@RestController
public class RealEstateRestController {

	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("/1")
	public RealEstate test01_1(@RequestParam("id") int id) {
		
		return realEstateBO.getRealEstate(id);
	}
	
	@RequestMapping("/2")
	public List<RealEstate> test01_2(@RequestParam("rent") int rentPrice) {
		
		return realEstateBO.getRealEstateAsRent(rentPrice);
		
	}
	
//	http://localhost/lesson03/test01/3?area=90&price=130000
	@RequestMapping("/3")
	public List<RealEstate> test01_3(
			@RequestParam("area") int area, 
			@RequestParam("price") int price) {
		
		return realEstateBO.getRealEstateAsAreaPrice(area, price);
	}
}
