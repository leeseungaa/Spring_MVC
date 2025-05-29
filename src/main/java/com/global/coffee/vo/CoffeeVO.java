package com.global.coffee.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class CoffeeVO {
	
	private String uuid;
	private String name;
	private int amount;
	private List<String> etc;
	private String etcStr;
	private Date regdate;

}
