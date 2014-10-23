package com.shan.manager;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shan.util.LoveTable;
@Component
public class UserRelationManager extends BaseManager{
	private static final Logger logger = LoggerFactory.getLogger(UserRelationManager.class);
	
	@Transactional
	public void addUserSeeRelation(final long userId,final long seeUserId){
		final long nextSeqId = getNextSeqId(LoveTable.SEQ_SEE_USER_ID);
		
		//insert sql
		String insertSql = "INSERT INTO " + LoveTable.TABLE_SEE_EACH_OTHER + " (" + LoveTable.COLUMN_SEQ_ID + ","+ LoveTable.COLUMN_USER_ID + ","+ 
				LoveTable.COLUMN_SEE_USER_ID + ")" + "VALUES(?,?,?)";
		
		getJdbcTemplate().update(insertSql, new PreparedStatementSetter() {  
		      @Override  
		      public void setValues(PreparedStatement pstmt) throws SQLException {  
		          pstmt.setObject(1, nextSeqId);  
		          pstmt.setObject(2, userId);  
		          pstmt.setObject(3, seeUserId);  
		  }});
	}
}
