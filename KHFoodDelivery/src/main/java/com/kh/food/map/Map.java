package com.kh.food.map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Map {
	
	
	@RequestMapping("/map/test.do")
	public String admainMainView() {
		return "custom/main";
	}

}
