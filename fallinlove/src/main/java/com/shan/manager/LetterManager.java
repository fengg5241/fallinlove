package com.shan.manager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
				LoveTable.COLUMN_FROM_USER_ID + " = "+ userId + "AND " + LoveTable.COLUMN_STATUS + " = " + status;
		List<Letter> letters = getJdbcTemplate().query(sql, letterRowMapper);
		
		return letters;
	}
	
	public void addLetter(Letter letter) {
		
	}
	
	public void makeLetterReaded(Letter letter) {
		
	}
	
	public void deleteLetter(Letter letter){
		
	}
	
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
