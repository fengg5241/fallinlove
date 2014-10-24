package com.shan.manager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.shan.fallinlove.model.Letter;
import com.shan.util.LoveTable;

@Component
public class LetterManager extends BaseManager {

	private static final Logger logger = LoggerFactory.getLogger(LetterManager.class);
	
	private RowMapper<Letter> letterRowMapper = new LetterRowMapper();

	public List<Letter> getLettersByUserId(long userId,String status){
		
		String sql = "SELECT * FROM" + LoveTable.TABLE_LETTER +" WHERE " + 
				LoveTable.COLUMN_FROM_USER_ID + " = "+ userId + "AND " + LoveTable.COLUMN_STATUS + " = " + status 
				 + "AND " + LoveTable.COLUMN_RECORD_STATUS + " != 'D'";
		List<Letter> letters = getJdbcTemplate().query(sql, letterRowMapper);
		
		return letters;
	}
	
	public void addLetter(final Letter letter) {
		final long nextSeqId = getNextSeqId(LoveTable.SEQ_LETTER_ID);
		//insert sql
		String insertSql = "INSERT INTO " + LoveTable.TABLE_LETTER + " (" + LoveTable.COLUMN_SEQ_ID + ","+ LoveTable.COLUMN_CONTENT +
				","+ LoveTable.COLUMN_TYPE +","+ LoveTable.COLUMN_STATUS + ","+ LoveTable.COLUMN_WITH_STAMP +
				","+ LoveTable.COLUMN_REPLY_ID +","+ LoveTable.COLUMN_FROM_USER_ID +","+ LoveTable.COLUMN_TO_USER_ID +","+ 
				LoveTable.COLUMN_RECORD_STATUS + ")" + "VALUES(?,?,?,?,?,?,?,?,?)";
		
		getJdbcTemplate().update(insertSql, new PreparedStatementSetter() {  
		      @Override  
		      public void setValues(PreparedStatement pstmt) throws SQLException {  
		          pstmt.setObject(1, nextSeqId);  
		          pstmt.setObject(2, letter.getContent());  
		          pstmt.setObject(3, letter.getType());
		          pstmt.setObject(4, "1");  
		          pstmt.setObject(5, letter.getWithStamp());  
		          pstmt.setLong(6, letter.getReplyLetterId()); 
		          pstmt.setLong(7, letter.getFromUserId());  
		          pstmt.setLong(8, letter.getToUserId());  
		          pstmt.setString(9, "C"); 
		  }});
	}
	
	public void makeLetterReaded(final Letter letter) {
		//insert sql
		String insertSql = "UPDATE " + LoveTable.TABLE_LETTER + " SET " + LoveTable.COLUMN_STATUS + "=? WHERE " + LoveTable.COLUMN_SEQ_ID + " = ?";
		
		getJdbcTemplate().update(insertSql, new PreparedStatementSetter() {  
		      @Override  
		      public void setValues(PreparedStatement pstmt) throws SQLException {  
		          pstmt.setObject(1, "2");  
		          pstmt.setObject(2, letter.getSeqId());  
		  }});
	}
	
//	public void deleteLetter(Letter letter){
//		
//	}
	
	/**
	 * Maps a row returned from a query of LETTER to a Restaurant object.
	 * 
	 * @param rs the result set with its cursor positioned at the current row
	 */
	private Letter mapLetter(ResultSet rs) throws SQLException {
		// get the row column data
		Letter letter = new Letter();
		letter.setContent(rs.getString("CONTENT"));
		letter.setFromUserId(rs.getLong("FROM_USER_ID"));
		letter.setReplyLetterId(rs.getLong("REPLY_LETTER_ID"));
		letter.setSeqId(rs.getLong("SEQ_ID"));
		letter.setStatus(rs.getString("STATUS"));
		letter.setToUserId(rs.getLong("TO_USER_ID"));
		letter.setType(rs.getString("TYPE"));
		letter.setWithStamp(rs.getString("WITH_STAMP"));
		return letter;
	}
	
	private class LetterRowMapper implements RowMapper<Letter> {
		public Letter mapRow(ResultSet rs, int rowNum) throws SQLException {
			return mapLetter(rs);
		}
	}
}
