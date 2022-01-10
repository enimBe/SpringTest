package com.enimbe.test.lesson05.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enimbe.test.lesson05.dao.WeatherHistoryDAO;
import com.enimbe.test.lesson05.model.Weather;

@Service
public class WeatherHistoryBO {
	
	@Autowired
	private WeatherHistoryDAO weatherHistoryDAO;
	
	public  List<Weather> getWeather() {
		return weatherHistoryDAO.selectWeather();
	}
	
	public int addWeather(String date, String weather, String microDust, double temperatures, double precipitation, double windSpeed) {
		return weatherHistoryDAO.insertWeather(date, weather, microDust, temperatures, precipitation, windSpeed);
	}
}
