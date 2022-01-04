package com.enimbe.test.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.enimbe.test.lesson04.model.NewRealtor;

@Repository
public interface NewRealtorDAO {

	public int insertRealtor(NewRealtor realtor);
	
	public NewRealtor selectRealtor(@Param("id") int id);
	
}
