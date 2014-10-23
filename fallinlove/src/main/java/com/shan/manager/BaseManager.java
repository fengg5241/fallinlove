package com.shan.manager;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.shan.util.LoveTable;

@Component("basemanager")
public class BaseManager {
	private static final Logger logger = LoggerFactory.getLogger(BaseManager.class);
	
    private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public static Logger getLogger() {
		return logger;
	}
	
	public long getNextSeqId(String seqIdName){
		String nextValSql = "select nextval("+seqIdName+")";
		long nextSeqId = getJdbcTemplate().queryForLong(nextValSql);
		return nextSeqId;
	}
}
