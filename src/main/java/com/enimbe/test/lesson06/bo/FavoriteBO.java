package com.enimbe.test.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enimbe.test.lesson06.dao.FavoriteDAO;
import com.enimbe.test.lesson06.model.Favorite;

@Service
public class FavoriteBO {

	@Autowired
	private FavoriteDAO favoriteDAO;
	
	public int addFavorite(String name, String url) {
		return favoriteDAO.insertFavorite(name, url);
	}
	
	public List<Favorite> getFavoriteList() {
		return favoriteDAO.selectFavorite();
	}
}
