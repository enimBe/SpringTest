package com.enimbe.test.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.enimbe.test.lesson04.model.NewSeller;

@Repository
public interface SellerDAO {

	public int insertSeller(
			@Param("nickname") String nickname,
			@Param("profileImageUrl") String profileImageUrl, 
			@Param("temperature") double temperature
			);
	
	public NewSeller selectSeller(@Param("id") int id);
}
