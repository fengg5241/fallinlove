package com.shan.fallinlove.model;

import java.sql.Timestamp;

public class BaseModel {
	
	private String createTime;
	
	private String updateTime;

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
}
