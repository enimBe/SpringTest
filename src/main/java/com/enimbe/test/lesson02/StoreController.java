package com.enimbe.test.lesson02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.enimbe.test.lesson02.bo.StoreBO;
import com.enimbe.test.lesson02.model.Store;

@Controller
public class StoreController {

	@Autowired
	private StoreBO storeBO;
	
	@ResponseBody
	@RequestMapping("/lesson02/test01")
	public List<Store> test01() {
		return storeBO.getStoreList();
	}
}
