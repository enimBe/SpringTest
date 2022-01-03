package com.enimbe.test.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enimbe.test.lesson04.dao.SellerDAO;
import com.enimbe.test.lesson04.model.NewSeller;

@Service
public class SellerBO {

	@Autowired
	private SellerDAO newSellerDAO;
	
	public int addSeller(String nickname, String profileImageUrl, double temperature) {
		return newSellerDAO.insertSeller(nickname, profileImageUrl, temperature);
	}
	
	public NewSeller getSeller(int id) {
		return newSellerDAO.selectSeller(id);
	}
}
