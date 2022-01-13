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
	
	
	public boolean isDuplicateUrl(String url) {
		
		int count = favoriteDAO.selectCountUrl(url);
		if(count == 0) {
			return false;
		} else {
			return true;
		}
		
	}
	
	public boolean deleteFavorite(String name) {
		
		if(favoriteDAO.deleteData(name)) {
			return true;
		} else {
			return false;
		}
		
		
	}
}
