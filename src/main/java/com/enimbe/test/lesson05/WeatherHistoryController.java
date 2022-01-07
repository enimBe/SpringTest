package com.enimbe.test.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.enimbe.test.lesson05.bo.WeatherHistoryBO;
import com.enimbe.test.lesson05.model.Weather;


@Controller
public class WeatherHistoryController {

	@Autowired
	private WeatherHistoryBO weatherHistoryBO;
	
	@GetMapping("/lesson05/weatherHistory")
	public String weatherHistoryView(Model model) {
		
		 List<Weather> weathers = weatherHistoryBO.getWeather();
		
		model.addAttribute("weathers", weathers);
		
		return "lesson05/weatherHistory";
	}
	
	@GetMapping("/lesson05/weatherHistory/add_weather")
	public String addWeather() {
		return "/lesson05/addWeather";
	}
	
	
}
