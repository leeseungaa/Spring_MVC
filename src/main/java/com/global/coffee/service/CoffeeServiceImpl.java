package com.global.coffee.service;

import java.util.HashMap;
import java.util.UUID;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;

//import org.springframework.beans.factory.annotation.*; 

import org.springframework.stereotype.Service;

import com.global.coffee.mapper.CoffeeMapper;
import com.global.coffee.vo.CoffeeVO;

import lombok.Setter;


@Service
public class CoffeeServiceImpl implements CoffeeService {
	
	@Setter(onMethod_ = @Autowired)
	private CoffeeMapper coffeeMapper;
	
	// 정보 관리 수정해야 함.
	static HashMap<String, String> map = new HashMap<String, String>();

	@Override
	public HashMap<String, String> getCoffeeList() {
		
		map.put("A", "아메리카노");
		map.put("L", "카페라떼");
		
		return map;
	}
	
	@Override
	public String getCoffeeName(String code) {
		
		return map.get(code);
	}
	
	@Override
	public void orderCoffee(CoffeeVO coffeeVO) {
		
		coffeeVO.setEtcStr(coffeeVO.getEtc().stream().collect(Collectors.joining(", ")));
		coffeeVO.setUuid(UUID.randomUUID().toString());
		
		coffeeMapper.insertCoffee(coffeeVO);
		
	}

	@Override
	public boolean checkAmount(CoffeeVO coffeeVO) {
		//log.info("커피 재고 확인 서비스");
		if (10 < coffeeVO.getAmount()) {
			
			return false;
		}
		
		return true;
	}

}
