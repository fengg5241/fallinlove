package com.shan.fallinlove.model;

public class Letter extends BaseModel{
	private long seqId;
	
	private long fromUserId;
	
	private long toUserId;
	
	private String content;
	
	/**
	 * 1：普通,2:收费
	 */
	private String type;
	
	/**
	 * 1 未读 2 已读
	 */
	private String status;
	
	/**
	 * 1 没有邮票 2 有邮票
	 */
	private String withStamp; 
	
	private long replyLetterId;

	public long getSeqId() {
		return seqId;
	}

	public void setSeqId(long seqId) {
		this.seqId = seqId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getWithStamp() {
		return withStamp;
	}

	public void setWithStamp(String withStamp) {
		this.withStamp = withStamp;
	}

	public long getReplyLetterId() {
		return replyLetterId;
	}

	public void setReplyLetterId(long replyLetterId) {
		this.replyLetterId = replyLetterId;
	}
	
	public long getFromUserId() {
		return fromUserId;
	}

	public void setFromUserId(long fromUserId) {
		this.fromUserId = fromUserId;
	}

	public long getToUserId() {
		return toUserId;
	}

	public void setToUserId(long toUserId) {
		this.toUserId = toUserId;
	}

	@Override
	public String toString() {
		return "Letter [seqId=" + seqId + ", content=" + content + ", type="
				+ type + ", status=" + status + ", withStamp=" + withStamp
				+ ", replyLetterId=" + replyLetterId + "]";
	}
}
