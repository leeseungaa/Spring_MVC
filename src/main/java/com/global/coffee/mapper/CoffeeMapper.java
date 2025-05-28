package com.global.coffee.mapper;

import com.global.coffee.vo.CoffeeVO;

//쿼리기 때문에 네이밍 인서트 이런식으로 해도 됨.

public interface CoffeeMapper {
	
	public int insertCoffee(CoffeeVO coffeeVO);
	

}
