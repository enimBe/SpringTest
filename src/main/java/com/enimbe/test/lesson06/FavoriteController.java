package com.enimbe.test.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.enimbe.test.lesson06.bo.FavoriteBO;
import com.enimbe.test.lesson06.model.Favorite;

@Controller
@RequestMapping("/lesson06/test01")
public class FavoriteController {
	
	@Autowired
	private FavoriteBO favoriteBO;

	@GetMapping("/add_favorite_view") 
	public String addFavoriteView() {
		return "/lesson06/addFavorite";
	}
	
	@ResponseBody
	@PostMapping("/add_favorite")
	public String addFavorite(
			@RequestParam("name") String name,
			@RequestParam("url") String url
			) {
		
		int count = favoriteBO.addFavorite(name, url);
		
		if(count == 1) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	@GetMapping("/favorite_list")
	public String favoriteList(Model model) {
		
		List<Favorite> favoriteList = favoriteBO.getFavoriteList();
		model.addAttribute("favoriteList", favoriteList);
		
		return "/lesson06/favoriteList";
	}
}
