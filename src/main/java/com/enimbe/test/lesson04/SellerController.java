package com.enimbe.test.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.enimbe.test.lesson04.bo.SellerBO;

@RequestMapping("/lesson04")
@Controller
public class SellerController {

	@Autowired
	private SellerBO newSellerBO;
	
	@RequestMapping("/test01/1")
	public String addSellerView() {
		return "lesson04/addSeller";
	}
	
	@ResponseBody
	@RequestMapping("/test01/add_seller")
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam("profileImageUrl") String profileImageUrl,
			@RequestParam("temperature") double temperature
			) {
		int count = newSellerBO.addSeller(nickname, profileImageUrl, temperature);
		
		return "입력 성공 : " + count;
	}
}
