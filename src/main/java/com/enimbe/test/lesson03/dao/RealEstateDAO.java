package com.enimbe.test.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.enimbe.test.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {

	public RealEstate selectRealEstate(@Param("id") int id);
	
	public List<RealEstate> selectRealEstateAsRent(@Param("rentPrice") int rentPrice);
	
	public List<RealEstate> selectRealEstateAsAreaPrice(
				@Param("area") int area,
				@Param("price") int price);
			
}
