package com.shan.fallinlove.model;

public enum MarriageType {
	SINGLE("未婚", 1), DIVORCED("离异", 2), WIDOWED("丧偶", 3);
	// 成员变量
	private String name;
	private int index;
	// 构造方法
	private MarriageType(String name, int index) {
		this.name = name;
		this.index = index;
	}
	// 普通方法
	public static String getName(int index) {
		for (MarriageType m : MarriageType.values()) {
			if (m.getIndex() == index) {
				return m.name;
			}
		}
		return null;
	}
	// get set 方法
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
}
