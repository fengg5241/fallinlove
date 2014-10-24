package com.shan.manager;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
public class UserManager extends BaseManager{
	
	private static final Logger logger = LoggerFactory.getLogger(UserManager.class);
	
    private RowMapper<LoginForm> rowMapper = new LoginFormRowMapper();
    
    private RowMapper<User> userRowMapper = new UserRowMapper();
    
	@Transactional
    public User addUser(final User user){
		String nextValSql = "select nextval("+LoveTable.SEQ_USER_ID+")";
		long queryForInt = getJdbcTemplate().queryForLong(nextValSql);
		user.setUserId(queryForInt);
		
		getLogger().info("queryForInt"+queryForInt);
		
		//insert sql
		//insert user
		String insertUserSql = "INSERT INTO "+LoveTable.TABLE_USER+"("+
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
	          pstmt.setString(19, user.getNoteWhich());  
	          pstmt.setString(20, user.getNoteFinal());  
	          pstmt.setString(21, user.getNote1()); 
	          pstmt.setString(22, user.getNote2());  
	          pstmt.setString(23, user.getNote3());  
	          pstmt.setString(24, user.getMobile()); 
	  }});  
		
		//insert login_user
		String insertLoginSql = "INSERT INTO " + LoveTable.TABLE_LOGIN + " (" + LoveTable.COLUMN_USER_ID + ","+ LoveTable.COLUMN_USER_NAME + "," +
					LoveTable.COLUMN_PASSWORD + ")" + "VALUES(?,?,?)";
		getJdbcTemplate().update(insertLoginSql, new PreparedStatementSetter() {  
	      @Override  
	      public void setValues(PreparedStatement pstmt) throws SQLException {  
	          pstmt.setObject(1, user.getUserId());  
	          pstmt.setObject(2, user.getEmailAdd());  
	          pstmt.setObject(3, user.getPassword());  
	  }}); 
		
//		String selectMaxIdSql = "select * from " + LoveTable.TABLE_LOGIN +" order by " + LoveTable.COLUMN_USER_ID +" desc LIMIT 1";
//		LoginForm queryForObject = jdbcTemplate.queryForObject(nextValSql, rowMapper);
//		System.out.println("USER_NAME: " + queryForObject.getUserName());
		
		//delete sql
//		String delSql = "DELETE FROM " + LoveTable.TABLE_LOGIN + "WHERE " + LoveTable.COLUMN_USER_ID + "=?";
//		getJdbcTemplate().update(delSql,new Object[]{1});
		return null;
    }
	
	/**
	 * 修改头像
	 * @param user
	 */
	public void updateUserHeadPic(final User user){
		
		String sql = "UPDATE " + LoveTable.TABLE_USER + " SET " + LoveTable.COLUMN_HEAD_PIC + "=? WHERE " + LoveTable.COLUMN_USER_ID + " = ?";
		
		getJdbcTemplate().update(sql, new PreparedStatementSetter() {  
		      @Override  
		      public void setValues(PreparedStatement pstmt) throws SQLException {  
		          pstmt.setObject(1, user.getHeadPic());  
		          pstmt.setLong(2, user.getUserId());  
		  }});
	}
	
	public List<User> getUsersByIdList(List<Long> userIdList) {
		
		List<User> userList = new ArrayList<User>();
		if (userIdList != null && userIdList.size() > 0) {
			String sql = "SELECT * FROM " + LoveTable.TABLE_USER + " WHERE " + LoveTable.COLUMN_USER_ID +" IN (";
			String idStr = "";
			for (int i = 0; i < userIdList.size(); i++) {
				idStr += userIdList.get(i);
				if (i != userIdList.size() - 1) {
					idStr += ",";
				}
			}
			sql = sql + idStr + ")";
			
			userList = getJdbcTemplate().query(sql, userRowMapper);
		}

		return userList;
	}
	
	/**
	 * 点击个人信息按钮后，返回个人基本信息
	 * @param userId
	 * @return
	 */
	public User getUserBasicInfoById(long userId){
		String sql = "SELECT * FROM " + LoveTable.TABLE_USER + " WHERE " + LoveTable.COLUMN_USER_ID +" =?";
		User user = getJdbcTemplate().queryForObject(sql, new Object[]{userId}, userRowMapper);
		return user;
	}
	
	/*********************************** 查询LOGIN_USER信息*******************************/
	/**
	 * @param userId
	 * @return
	 */
	public LoginForm getLoginUserByName(String userName){
		String sql = "SELECT * FROM" + 
				LoveTable.TABLE_LOGIN +" WHERE " + LoveTable.COLUMN_USER_NAME + " = ?";
		LoginForm loginUser = getJdbcTemplate().queryForObject(sql, new Object[]{userName}, rowMapper);
		return loginUser;
	}
	
	
	/*********************************** 对看过和被看过的人的操作*******************************/
	
	/**
	 * 显示所有看过的人
	 * @param userId
	 * @return
	 */
	public List<User> getMeSeeById(long userId){
		return null;
	}
	
	/**
	 * 当进入myself后，显示看过自己那些人
	 * @param userId
	 * @return
	 */
	public List<User> getSeeMeUsersById(long userId){
		//get see me userId list
		String sql = "SELECT "+ LoveTable.COLUMN_SEE_USER_ID+" FROM" + 
				LoveTable.TABLE_SEE_EACH_OTHER +" WHERE " + LoveTable.COLUMN_USER_ID + " = "+ userId;
		List<Long> seeUserIdList = getJdbcTemplate().queryForList(sql, Long.class);
		
		List<User> users = getUsersByIdList(seeUserIdList);
		return users;
	}
	

	/**
	 * Maps a row returned from a query of LOGIN_USER to a Restaurant object.
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
	
	/**
	 * Maps a row returned from a query of USER to a Restaurant object.
	 * 
	 * @param rs the result set with its cursor positioned at the current row
	 */
	private User mapUser(ResultSet rs) throws SQLException {
		// get the row column data
		User user = new User();
		user.setUserId(rs.getLong("USER_ID"));
		user.setAddress(rs.getString("ADDRESS"));
		user.setCity(rs.getString("CITY"));
		user.setDay(rs.getString("DAY"));
		user.setEducation(rs.getString("EDUCATION"));
		user.setHeight(rs.getString("HEIGHT"));
		user.setIncome(rs.getString("INCOME"));
		user.setMarriage(rs.getString("MARRIAGE"));
		user.setMobile(rs.getString("MOBILE"));
		user.setMobileVali(rs.getString("MOBILE_VALI"));
		user.setMonth(rs.getString("MONTH"));
		user.setNickname(rs.getString("NICKNAME"));
		user.setNote1(rs.getString("NOTE1"));
		user.setNote2(rs.getString("NOTE2"));
		user.setNote3(rs.getString("NOTE3"));
		user.setNoteFinal(rs.getString("NOTEFINAL"));
		user.setNoteWhich(rs.getString("NOTEWHICH"));
		user.setPhoneNumber(rs.getString("PHONENUMBER"));
		user.setProvince(rs.getString("PROVINCE"));
		user.setRegisterType(rs.getString("REGISTER_TYPE"));
		user.setSalary(rs.getString("SALARY"));
		user.setSex(rs.getString("SEX"));
		user.setYear(rs.getString("YEAR"));
		return user;
	}
	
	private class UserRowMapper implements RowMapper<User> {
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			return mapUser(rs);
		}
	}
	
}
