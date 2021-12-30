package com.enimbe.test.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.enimbe.test.lesson03.bo.RealEstateBO;
import com.enimbe.test.lesson03.model.RealEstate;

@RequestMapping("/lesson03")
@RestController
public class RealEstateRestController {

	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("/test01/1")
	public RealEstate test01_1(@RequestParam("id") int id) {
		
		return realEstateBO.getRealEstate(id);
	}
	
	@RequestMapping("/test01/2")
	public List<RealEstate> test01_2(@RequestParam("rent") int rentPrice) {
		
		return realEstateBO.getRealEstateAsRent(rentPrice);
		
	}
	
//	http://localhost/lesson03/test01/3?area=90&price=130000
	@RequestMapping("/test01/3")
	public List<RealEstate> test01_3(
			@RequestParam("area") int area, 
			@RequestParam("price") int price) {
		
		return realEstateBO.getRealEstateAsAreaPrice(area, price);
	}
	
	@RequestMapping("/test02/1")
	public String test02_1() {
		RealEstate realEstate = new RealEstate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		int count = realEstateBO.addRealEstate(realEstate);
		
		return"입력성공 : " + count;
	}
	
	@RequestMapping("/test02/2")
	public String test02_2(@RequestParam("realtorId") int realtorId) {
		int count = realEstateBO.addRealEstateAsField(realtorId, "샹떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		
		return "입력 성공 : " + count;
	}
	
	@RequestMapping("/test03")
	public String test02_3() {
		int count = realEstateBO.updateRealEstate(24, "전세", 70000);
		
		return "수정 성공 : " + count;
	}
	
	@RequestMapping("/test04?id=34")
	public String test02_4(@RequestParam("id") int id) {
		int count = realEstateBO.deleteRealEstate(id);
		
		return "삭제 성공 : " + count;
	}
	
}
