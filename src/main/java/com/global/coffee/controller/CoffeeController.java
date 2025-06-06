
package com.global.coffee.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.global.coffee.service.CoffeeService;
import com.global.coffee.vo.CoffeeVO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value = "/coffee/*")
@AllArgsConstructor
public class CoffeeController {
	
	@GetMapping(value = "/main")
	public String main() {
		
		log.info("메인 화면");
		return "main";
		
	}
	
	private CoffeeService coffeeService;
	
	@GetMapping(value = "/orderForm")
	public String orderForm(Model model) {
		
		log.info("커피 주문 화면");
		
		model.addAttribute("menu", coffeeService.getCoffeeList());
		
		return "coffee_order_form";
		
	}
	
	@PostMapping(value = "/order")
	public String order(CoffeeVO coffeeVO, Model model) {
		
		log.info("커피 주문 처리");
		coffeeService.orderCoffee(coffeeVO);
		
		model.addAttribute("menu", coffeeService.getCoffeeName(coffeeVO.getName()));
		
		return "coffee_order_result";
		
	}
	
	
	@PostMapping(value = "/checkAmount")
	public ResponseEntity<String> checkAmount(CoffeeVO coffeeVO) {
		Gson gson = new Gson();
		JsonObject jo = new JsonObject();
		if (coffeeService.checkAmount(coffeeVO)) {
			jo.addProperty("result", "success");
		} else {
			jo.addProperty("result", "fail");
		}
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Type", "application/json;charset=UTF-8");
		return new ResponseEntity<>(gson.toJson(jo), header, HttpStatus.OK);
	}
	
}
