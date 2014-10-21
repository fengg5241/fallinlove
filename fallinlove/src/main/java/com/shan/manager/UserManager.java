package com.shan.manager;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shan.fallinlove.model.LoginForm;
import com.shan.fallinlove.model.User;
import com.shan.util.LoveTable;
@Component("usermanager")
public class UserManager {
	
	private static final Logger logger = LoggerFactory.getLogger(UserManager.class);
	
    private JdbcTemplate jdbcTemplate;
    
    private RowMapper<LoginForm> rowMapper = new LoginFormRowMapper();
    
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Transactional
    public User addUser(final User user){
		String nextValSql = "select nextval("+LoveTable.SEQ_USER_ID+")";
		long queryForInt = jdbcTemplate.queryForLong(nextValSql);
		user.setUserId(queryForInt);
		
		logger.info("queryForInt"+queryForInt);
		
		//insert sql
		//insert user
		String insertUserSql = "INSERT INTO "+LoveTable.TABLE_LOGIN+"("+
				LoveTable.COLUMN_USER_ID+", "+LoveTable.COLUMN_EMAIL+", "+LoveTable.COLUMN_SEX+", "+LoveTable.COLUMN_YEAR+", "+LoveTable.COLUMN_MONTH+", "+LoveTable.COLUMN_DAY+", "+LoveTable.COLUMN_CITY+", "+LoveTable.COLUMN_PROVINCE+", "+
				LoveTable.COLUMN_ADDRESS+", "+LoveTable.COLUMN_MARRIAGE+", "+LoveTable.COLUMN_HEIGHT+", "+LoveTable.COLUMN_EDUCATION+", "+LoveTable.COLUMN_INCOME+", "+LoveTable.COLUMN_SALARY+", "+
				LoveTable.COLUMN_REGISTER_TYPE+", "+LoveTable.COLUMN_PHONENUMBER+", "+LoveTable.COLUMN_MOBILE_VALI+", "+LoveTable.COLUMN_NICKNAME+", "+LoveTable.COLUMN_NOTEWHICH+", "+
				LoveTable.COLUMN_NOTEFINAL+", "+LoveTable.COLUMN_NOTE1+", "+LoveTable.COLUMN_NOTE2+", "+LoveTable.COLUMN_NOTE3+", "+LoveTable.COLUMN_MOBILE+")"+
	    "VALUES (?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?,?, ?, ?, ?, ?)";
		
		getJdbcTemplate().update(insertUserSql, new PreparedStatementSetter() {  
	      @Override  
	      public void setValues(PreparedStatement pstmt) throws SQLException {  
	          pstmt.setObject(1, user.getUserId());  
	          pstmt.setString(2, user.getEmailAdd());  
	          pstmt.setString(3, user.getSex());  
	          pstmt.setString(4, user.getYear());  
	          pstmt.setString(5, user.getMonth());  
	          pstmt.setString(6, user.getDay()); 
	          pstmt.setString(7, user.getCity());  
	          pstmt.setString(8, user.getProvince());  
	          pstmt.setString(9, user.getAddress()); 
	          pstmt.setString(10, user.getMarriage());  
	          pstmt.setString(11, user.getHeight());  
	          pstmt.setString(12, user.getEducation()); 
	          pstmt.setString(13, user.getIncome());  
	          pstmt.setString(14, user.getSalary());  
	          pstmt.setString(15, user.getRegisterType()); 
	          pstmt.setString(16, user.getPhoneNumber());  
	          pstmt.setString(17, user.getMobileVali());  
	          pstmt.setString(18, user.getNickname()); 
	          pstmt.setString(19, user.getIncome());  
	          pstmt.setString(20, user.getSalary());  
	          pstmt.setString(21, user.getRegisterType()); 
	          pstmt.setString(22, user.getPhoneNumber());  
	          pstmt.setString(23, user.getMobileVali());  
	          pstmt.setString(24, user.getNickname()); 
	  }});  
		
		//insert login_user
		String insertLoginSql = "INSERT INTO " + LoveTable.TABLE_LOGIN + " (" + LoveTable.COLUMN_USER_ID + ","+ LoveTable.COLUMN_USER_NAME + "," +
					LoveTable.COLUMN_PASSWORD + ")" + "VALUES(?,?,?)";
		jdbcTemplate.update(insertLoginSql, new PreparedStatementSetter() {  
	      @Override  
	      public void setValues(PreparedStatement pstmt) throws SQLException {  
	          pstmt.setObject(1, user.getUserId());  
	          pstmt.setObject(2, user.getEmailAdd());  
	          pstmt.setObject(3, user.getPassword());  
	  }}); 
		
//		String selectMaxIdSql = "select * from " + LoveTable.TABLE_LOGIN +" order by " + LoveTable.COLUMN_USER_ID +" desc LIMIT 1";
//		LoginForm queryForObject = jdbcTemplate.queryForObject(nextValSql, rowMapper);
//		System.out.println("USER_NAME: " + queryForObject.getUserName());
		
//		final long id = Long.valueOf(queryForObject.getUserId()) + 1;
		//insert sql
//		String insertSql = "INSERT INTO " + LoveTable.TABLE_LOGIN + " (" + LoveTable.COLUMN_USER_ID + ","+ LoveTable.COLUMN_USER_NAME + "," +
//					LoveTable.COLUMN_PASSWORD + ")" + "VALUES(?,?,?)";
		//update sql
//		String updateSql = "UPDATE " + LoveTable.TABLE_LOGIN +
//		   "SET " +  LoveTable.COLUMN_PASSWORD + "=?, " + LoveTable.COLUMN_USER_NAME + "=? WHERE " +
//		   LoveTable.COLUMN_USER_ID + "=?";
//		jdbcTemplate.update(updateSql, new PreparedStatementSetter() {  
//		      @Override  
//		      public void setValues(PreparedStatement pstmt) throws SQLException {  
//		          pstmt.setObject(1, loginForm.getPassword());  
//		          pstmt.setObject(2, loginForm.getUserName());  
//		          pstmt.setObject(3, id - 1);  
//		  }});  
		
        //getJdbcTemplate().update(insertSql,new Object[]{id,loginForm.getUserName(), loginForm.getPassword()});
    	
		//delete sql
//		String delSql = "DELETE FROM " + LoveTable.TABLE_LOGIN + "WHERE " + LoveTable.COLUMN_USER_ID + "=?";
//		getJdbcTemplate().update(delSql,new Object[]{1});
		return null;
    }
	/**
	 * Maps a row returned from a query of T_RESTAURANT to a Restaurant object.
	 * 
	 * @param rs the result set with its cursor positioned at the current row
	 */
	private LoginForm mapLoginForm(ResultSet rs) throws SQLException {
		// get the row column data
		long userId = rs.getLong("USER_ID");
		String username = rs.getString("USER_NAME");
		String password = rs.getString("PASSWORD");
		// map to the object
		LoginForm loginForm = new LoginForm(userId,username, password);
		return loginForm;
	}
	
	private class LoginFormRowMapper implements RowMapper<LoginForm> {
		public LoginForm mapRow(ResultSet rs, int rowNum) throws SQLException {
			return mapLoginForm(rs);
		}
	}
	
}
