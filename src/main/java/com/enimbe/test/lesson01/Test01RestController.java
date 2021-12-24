package com.enimbe.test.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/lesson01/test01")
public class Test01RestController {

	@RequestMapping("/1")
	public String print() {
		
		return "테스트 프로젝트 완성";
	}
	
	@RequestMapping("/2")
	public Map<String, Integer> printMap()  {
		Map<String, Integer> scores= new HashMap<>();
		scores.put("국어", 80);
		scores.put("영어", 95);
		scores.put("수학", 90);
		
		return scores;
	}
	
}
