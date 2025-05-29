package com.global.coffee.service;

import java.util.HashMap;

import com.global.coffee.vo.CoffeeVO;

public interface CoffeeService {
	
	public HashMap<String, String> getCoffeeList();
	
	public void orderCoffee(CoffeeVO coffeeVO);

	public String getCoffeeName(String code);
	
	public boolean checkAmount(CoffeeVO coffeeVO);

}
