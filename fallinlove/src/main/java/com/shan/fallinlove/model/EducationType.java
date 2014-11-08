package com.shan.fallinlove.model;

public enum EducationType {
	VOCATIONAL("中专或相当学历", 10), DIPLOMA("大专", 20), DEGREE("本科", 30), 
	DUALDEGREE("双学士", 40), MASTER("硕士", 50), PHD("博士", 60), POSTDOC("博士后", 70);
	// 成员变量
	private String name;
	private int index;
	// 构造方法
	private EducationType(String name, int index) {
		this.name = name;
		this.index = index;
	}
	// 普通方法
	public static String getName(int index) {
		for (EducationType m : EducationType.values()) {
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
