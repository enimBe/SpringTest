package com.enimbe.test.lesson05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.enimbe.test.lesson05.model.Weather;

@Repository
public interface WeatherHistoryDAO {

	public List<Weather> selectWeather();
}
