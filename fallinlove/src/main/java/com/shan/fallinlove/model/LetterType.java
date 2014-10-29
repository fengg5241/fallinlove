package com.shan.fallinlove.model;

public enum LetterType {
	FREE("free", 1), STAMP("stamp", 2);
	// 成员变量
	private String name;
	private int index;
	// 构造方法
	private LetterType(String name, int index) {
		this.name = name;
		this.index = index;
	}
	// 普通方法
	public static String getName(int index) {
		for (LetterType l : LetterType.values()) {
			if (l.getIndex() == index) {
				return l.name;
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
