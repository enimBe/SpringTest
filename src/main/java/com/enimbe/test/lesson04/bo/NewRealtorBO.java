package com.enimbe.test.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enimbe.test.lesson04.dao.NewRealtorDAO;
import com.enimbe.test.lesson04.model.NewRealtor;

@Service
public class NewRealtorBO {

	@Autowired
	private NewRealtorDAO newRealtorDAO;
	
	public int addRealtor(NewRealtor realtor) {
		return newRealtorDAO.insertRealtor(realtor);
	}
	
	public NewRealtor getRealtor(int id) {
		return newRealtorDAO.selectRealtor(id);
	}
}
