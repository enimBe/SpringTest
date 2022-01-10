package com.enimbe.test.lesson05.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.enimbe.test.lesson05.model.Weather;

@Repository
public interface WeatherHistoryDAO {

	public List<Weather> selectWeather();
	
	public int insertWeather(
			@Param("date") String date, 
			@Param("weather") String weather,
			@Param("microDust") String microDust,
			@Param("temperatures") double temperatures, 
			@Param("precipitation") double precipitation, 
			@Param("windSpeed") double windSpeed
			);
	
}
