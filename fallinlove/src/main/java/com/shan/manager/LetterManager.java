package com.shan.manager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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

	private RowMapper<Letter> letterRowMapper = new LetterRowMapper();

	/**
	 * 查发的信
	 * @param userId
	 * @return
	 */
	public List<Letter> getLettersToUser(long userId) {

		String sql = "SELECT * FROM " + LoveTable.TABLE_LETTER + " WHERE "
				+ LoveTable.COLUMN_FROM_USER_ID + " = " + userId + " AND "
				+ LoveTable.COLUMN_RECORD_STATUS + " != 'D' order by "
				+ LoveTable.COLUMN_FROM_USER_ID + " , "
				+ LoveTable.COLUMN_CREATE_TIME + " desc";
		List<Letter> tempLetters = getJdbcTemplate()
				.query(sql, letterRowMapper);

		long tempId = -1;
		List<Letter> letters = new ArrayList<Letter>();
		for (Letter letter : tempLetters) {
			if (tempId != (letter.getToUserId())) {
				tempId = letter.getToUserId();
				letters.add(letter);
			}
		}

		return letters;
	}
	
	/**
	 * 查询收到的信 status:1 是未读信 2是读过的信
	 * @param userId
	 * @param status
	 * @return
	 */
	public List<Letter> getLettersFromUser(long userId, String status) {

		String sql = "SELECT * FROM " + LoveTable.TABLE_LETTER + " WHERE "
				+ LoveTable.COLUMN_TO_USER_ID + " = " + userId + " AND "
				+ LoveTable.COLUMN_STATUS + " = '" + status + "' AND "
				+ LoveTable.COLUMN_RECORD_STATUS + " != 'D' order by "
				+ LoveTable.COLUMN_TO_USER_ID + " , "
				+ LoveTable.COLUMN_CREATE_TIME + " desc";
		List<Letter> tempLetters = getJdbcTemplate()
				.query(sql, letterRowMapper);

		// need to filter, because fromUser can send lots of letters for the
		// same toUser, only need show the latest one
		long tempId = -1;
		List<Letter> letters = new ArrayList<Letter>();
		for (Letter letter : tempLetters) {
			if (tempId != (letter.getFromUserId())) {
				tempId = letter.getFromUserId();
				letters.add(letter);
			}
		}
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
	 * 查询当前fromUser是否曾经给toUser用邮票发过信，
	 * 如果用过，双方以后都可以免费看彼此的信
	 * @param fromUserId
	 * @param toUserId
	 * @return
	 */
	public boolean checkEachOtherLetterWithStamp(long fromUserId, long toUserId){
		
		//insert sql
//		String insertSql = "select " + LoveTable.TABLE_LETTER + " SET " + LoveTable.COLUMN_STATUS + "=? WHERE " + LoveTable.COLUMN_SEQ_ID + " = ?";
//		
//		getJdbcTemplate().update(insertSql, new PreparedStatementSetter() {  
//		      @Override  
//		      public void setValues(PreparedStatement pstmt) throws SQLException {  
//		          pstmt.setObject(1, "2");  
//		          pstmt.setObject(2, letter.getSeqId());  
//		  }});
		return false;
	}
	
	public List<Letter> getAllHistoryLetters(long fromUserId, long toUserId){
		List<Letter> letters = new ArrayList<Letter>();
		String sql = "select * from " + LoveTable.TABLE_LETTER + " where " + LoveTable.COLUMN_RECORD_STATUS + " != 'D'" + 
				"and ((" + LoveTable.COLUMN_FROM_USER_ID +"=" + fromUserId + "and " + LoveTable.COLUMN_TO_USER_ID +"=" + toUserId +
					")	or (" +LoveTable.COLUMN_FROM_USER_ID +"=" + toUserId + "and " + LoveTable.COLUMN_TO_USER_ID +"=" + fromUserId +
					")) order by "+LoveTable.COLUMN_CREATE_TIME;
		
		
		return letters;
	}
	
	/**
	 * Maps a row returned from a query of LETTER to a Restaurant object.
	 * 
	 * @param rs the result set with its cursor positioned at the current row
	 */
	private Letter mapLetter(ResultSet rs) throws SQLException {
		// get the row column data
		Letter letter = new Letter();
		letter.setContent(LoveTable.COLUMN_CONTENT);
		letter.setFromUserId(rs.getLong(LoveTable.COLUMN_FROM_USER_ID));
		letter.setReplyLetterId(rs.getLong(LoveTable.COLUMN_REPLY_ID));
		letter.setSeqId(rs.getLong(LoveTable.COLUMN_SEQ_ID));
		letter.setStatus(rs.getString(LoveTable.COLUMN_STATUS));
		letter.setToUserId(rs.getLong(LoveTable.COLUMN_TO_USER_ID));
		letter.setType(rs.getString(LoveTable.COLUMN_TYPE));
		letter.setWithStamp(rs.getString(LoveTable.COLUMN_WITH_STAMP));
		letter.setCreateTime(rs.getTimestamp(LoveTable.COLUMN_CREATE_TIME));
		letter.setUpdateTime(rs.getTimestamp(LoveTable.COLUMN_UPDATE_TIME));
		return letter;
	}
	
	private class LetterRowMapper implements RowMapper<Letter> {
		public Letter mapRow(ResultSet rs, int rowNum) throws SQLException {
			return mapLetter(rs);
		}
	}
}
