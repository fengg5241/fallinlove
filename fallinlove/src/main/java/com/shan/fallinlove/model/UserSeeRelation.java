package com.shan.fallinlove.model;

public class UserSeeRelation {
	
	private long seqId;
	
	private long userId;
	
	private long seeUserId;

	public long getSeqId() {
		return seqId;
	}

	public void setSeqId(long seqId) {
		this.seqId = seqId;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public long getSeeUserId() {
		return seeUserId;
	}

	public void setSeeUserId(long seeUserId) {
		this.seeUserId = seeUserId;
	}
}
