package com.enimbe.test.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enimbe.test.lesson05.bo.WeatherHistoryBO;
import com.enimbe.test.lesson05.model.Weather;

@RequestMapping("/lesson05/test05")
@Controller
public class WeatherHistoryController {

	@Autowired
	private WeatherHistoryBO weatherHistoryBO;
	
	@GetMapping("/weatherHistory")
	public String weatherHistoryView(Model model) {
		
		 List<Weather> weathers = weatherHistoryBO.getWeather();
		
		model.addAttribute("weathers", weathers);
		
		return "/lesson05/test05/weatherHistory";
	}
	
	
	@GetMapping("/weatherHistory/add_weather")
	public String addWeatherView() {
		return "lesson05/test05/addWeather";
	}
	
	// /lesson05/test05/weatherHistory/addWeather
	
	@PostMapping("/weatherHistory/addWeather")
	public String addWeather(
			@RequestParam("date") String date,
			@RequestParam("weather") String weather,
			@RequestParam("microDust") String microDust,
			@RequestParam("temperatures") double temperatures,
			@RequestParam("precipitation") double precipitation,
			@RequestParam("windSpeed") double windSpeed
			) {
		
		weatherHistoryBO.addWeather(date, weather, microDust, temperatures, precipitation, windSpeed);
		
		return "/lesson05/test05/weatherHistory" ;
		
	}
	
	
}
