package com.shan.manager;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shan.fallinlove.model.EducationType;
import com.shan.fallinlove.model.LoginForm;
import com.shan.fallinlove.model.MarriageType;
import com.shan.fallinlove.model.User;
import com.shan.util.LoveTable;
import com.shan.util.UserSearchParamHelper;
@Component("usermanager")
public class UserManager extends BaseManager{
	
    private RowMapper<LoginForm> rowMapper = new LoginFormRowMapper();
    
    private RowMapper<User> userRowMapper = new UserRowMapper();
    
	@Transactional
    public User addUser(final User user){
		String nextValSql = "select nextval("+LoveTable.SEQ_USER_ID+")";
		long queryForInt = getJdbcTemplate().queryForLong(nextValSql);
		user.setUserId(queryForInt);
		
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
	public void updateUserHeadPic(final String picPath, final long userId){
		
		String sql = "UPDATE " + LoveTable.TABLE_USER + " SET " + LoveTable.COLUMN_HEAD_PIC + "=? WHERE " + LoveTable.COLUMN_USER_ID + " = ?";
		
		getJdbcTemplate().update(sql, new PreparedStatementSetter() {  
		      @Override  
		      public void setValues(PreparedStatement pstmt) throws SQLException {  
		          pstmt.setObject(1, picPath);  
		          pstmt.setLong(2, userId);  
		  }});
	}
	

	/**
	 * 修改
	 * @param userId
	 * @param stampCount
	 */
	public void updateStampCount(final long userId, final long stampCount) {
		String sql = "UPDATE " + LoveTable.TABLE_USER + " SET "
				+ LoveTable.COLUMN_STAMP_COUNT + "=?, "
				+ LoveTable.COLUMN_UPDATE_TIME + "=now() WHERE "
				+ LoveTable.COLUMN_USER_ID + " = ?";

		getJdbcTemplate().update(sql, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement pstmt) throws SQLException {
				pstmt.setLong(1, stampCount);
				pstmt.setLong(2, userId);
			}
		});
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
	public User getUserBasicInfoById(long userId) throws EmptyResultDataAccessException{
		String sql = "SELECT * FROM " + LoveTable.TABLE_USER + " WHERE " + LoveTable.COLUMN_USER_ID +" =?";
		User user = getJdbcTemplate().queryForObject(sql, new Object[]{userId}, userRowMapper);
		return user;
	}
	
	/*********************************** 查询LOGIN_USER信息*******************************/
	/**
	 * @param userId
	 * @return
	 */
	public LoginForm getLoginUserByName(String userName) throws EmptyResultDataAccessException{
		String sql = "SELECT * FROM " + 
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
		String sql = "SELECT "+ LoveTable.COLUMN_SEE_USER_ID+" FROM " + 
				LoveTable.TABLE_SEE_EACH_OTHER +" WHERE " + LoveTable.COLUMN_USER_ID + " = "+ userId;
		List<Long> seeUserIdList = getJdbcTemplate().queryForList(sql, Long.class);
		
		List<User> users = getUsersByIdList(seeUserIdList);
		return users;
	}
	
	public long getStampCount(long userId){
		//get see me userId list
		String sql = "SELECT "+ LoveTable.COLUMN_STAMP_COUNT+" FROM " + 
				LoveTable.TABLE_USER +" WHERE " + LoveTable.COLUMN_USER_ID + " = "+ userId;
		long count = getJdbcTemplate().queryForLong(sql);
		return count;
	}
	
	/**
	 * 搜索所有用户
	 * @param userId
	 * @return
	 */
	public List<User> searchAllUser(long userId){
		String sql = "SELECT * FROM " + 
				LoveTable.TABLE_USER +" WHERE " + LoveTable.COLUMN_USER_ID + " != "+ userId;
		List<User> users = getJdbcTemplate().query(sql, userRowMapper);
		return users;
	}
	
	public List<User> defaultSearchWomen(long userId){
//		String sql = "SELECT * FROM " + LoveTable.TABLE_USER +" WHERE " + LoveTable.COLUMN_SEX + " = '1' AND " +
//						LoveTable.COLUMN_USER_ID + " != "+ userId + " AND " +
//						LoveTable.COLUMN_YEAR + ">= '1985' AND " + LoveTable.COLUMN_YEAR + "<= '1993' AND " + 
//						LoveTable.COLUMN_HEIGHT + ">= '155厘米' AND " + LoveTable.COLUMN_HEIGHT + "<= '170厘米'"	;
		String sql = "SELECT * FROM " + LoveTable.TABLE_USER 	;
		List<User> users = getJdbcTemplate().query(sql, userRowMapper);
		return users;
	}
	
	public List<User> defaultSearchMen(long userId){
//		String sql = "SELECT * FROM " + LoveTable.TABLE_USER +" WHERE " + LoveTable.COLUMN_SEX + " = '1' AND " +
//				LoveTable.COLUMN_USER_ID + " != "+ userId + " AND " +
//				LoveTable.COLUMN_YEAR + ">= '1985' AND " + LoveTable.COLUMN_YEAR + "<= '1993' AND " + 
//				LoveTable.COLUMN_HEIGHT + ">= '165厘米' AND " + LoveTable.COLUMN_HEIGHT + "<= '180厘米'"	;
		String sql = "SELECT * FROM " + LoveTable.TABLE_USER ;
		List<User> users = getJdbcTemplate().query(sql, userRowMapper);
		return users;
	}

	/**
	 * @param condition
	 * @param sex
	 * @return
	 */
	public List<User> searchByConditions(String[] condition, String sex) {
		String sql = "SELECT * FROM " + LoveTable.TABLE_USER + " WHERE ";
//		"1:99|2:22.30|3:155.170|23:1"
		if (condition.length > 0) {
			for (String cond : condition) {
				String[] splitCond = cond.split(":");
				String key = splitCond[0];
				if ("23".equals(key)) {
					continue;
				}
				String value = splitCond[1];

				System.out.println("condition: "+cond);
				System.out.println("==column:"+UserSearchParamHelper.getParamKeyColumnMap().get(key));
				if ("1".equals(key)) {		//means search conditions include address
					if (key.length() > 3) { //means search by actual city
						key += "city";
					}else {
						key += "province";
					}
				}
				
				String column = UserSearchParamHelper.getParamKeyColumnMap().get(key);
				if (value.contains(".")) {
					String[] splitValue = value.split("\\.");
					String srcVal = splitValue[0];
					String tarVal = splitValue[1];
					String smallVal = UserSearchParamHelper.userSearchParam.get(key,srcVal);
					String bigVal = UserSearchParamHelper.userSearchParam.get(key,tarVal);
					
					if ("4".equals(key) || "5".equals(key)){ // means education or salary
						if (tarVal.equals("0")) { // 不查询以上
							sql += column + " = '" + smallVal+"' AND ";
						}else {
							sql += column + " >= '" + smallVal+"' AND ";
						}
					}else {
						if ("2".equals(key)) {		//means age
							sql += column + " >= '" +bigVal+"' AND " + column + " <= '" +smallVal+"' AND ";
						}else {
							sql += column + " >= '" +smallVal+"' AND " + column + " <= '" +bigVal+"' AND ";
						}
					}
				}else {
					String equalValue = null;
					if ("1city".equals(key) || "1province".equals(key)) {
						equalValue = value;
					}else {
						equalValue = UserSearchParamHelper.userSearchParam.get(key,value);
					}
					sql += column + "='" +equalValue+"' AND ";
					
				}
			}

		}
		
		if (sex.equals('0')) {
			sql += LoveTable.COLUMN_SEX + " = '1'";
		}else {
			sql += LoveTable.COLUMN_SEX + " = '0'";
		}
		System.out.println("===sql:"+sql);
		List<User> users = getJdbcTemplate().query(sql, userRowMapper);
		
		return users;
	}
	
	/**
	 * Maps a row returned from a query of LOGIN_USER to a Restaurant object.
	 * 
	 * @param rs the result set with its cursor positioned at the current row
	 */
	private LoginForm mapLoginForm(ResultSet rs) throws SQLException {
		// get the row column data
		long userId = rs.getLong(LoveTable.COLUMN_USER_ID);
		String username = rs.getString(LoveTable.COLUMN_USER_NAME);
		String password = rs.getString(LoveTable.COLUMN_PASSWORD);
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
		user.setUserId(rs.getLong(LoveTable.COLUMN_USER_ID));
		user.setAddress(rs.getString(LoveTable.COLUMN_ADDRESS));
		user.setCity(rs.getString(LoveTable.COLUMN_CITY));
		user.setDay(rs.getString(LoveTable.COLUMN_DAY));
		user.setEducation(EducationType.getName(rs.getInt(LoveTable.COLUMN_EDUCATION)));
		user.setHeight(rs.getString(LoveTable.COLUMN_HEIGHT));
		user.setIncome(rs.getString(LoveTable.COLUMN_INCOME));
		user.setMarriage(MarriageType.getName(rs.getInt(LoveTable.COLUMN_MARRIAGE)));
		user.setMobile(rs.getString(LoveTable.COLUMN_MOBILE));
		user.setMobileVali(rs.getString(LoveTable.COLUMN_MOBILE_VALI));
		user.setMonth(rs.getString(LoveTable.COLUMN_MONTH));
		user.setNickname(rs.getString(LoveTable.COLUMN_NICKNAME));
		user.setNote1(rs.getString(LoveTable.COLUMN_NOTE1));
		user.setNote2(rs.getString(LoveTable.COLUMN_NOTE2));
		user.setNote3(rs.getString(LoveTable.COLUMN_NOTE3));
		user.setNoteFinal(rs.getString(LoveTable.COLUMN_NOTEFINAL));
		user.setNoteWhich(rs.getString(LoveTable.COLUMN_NOTEWHICH));
		user.setPhoneNumber(rs.getString(LoveTable.COLUMN_PHONENUMBER));
		user.setProvince(rs.getString(LoveTable.COLUMN_PROVINCE));
		user.setRegisterType(rs.getString(LoveTable.COLUMN_REGISTER_TYPE));
		user.setSalary(rs.getString(LoveTable.COLUMN_SALARY));
		user.setSex(rs.getString(LoveTable.COLUMN_SEX));
		user.setYear(rs.getString(LoveTable.COLUMN_YEAR));
		
		int year = Integer.parseInt(user.getYear());
		int month = Integer.parseInt(user.getMonth());
		int day = Integer.parseInt(user.getDay());
		
		user.setAge(caculateAge(year,month,day));
		String constellation = getConstellation(Integer.parseInt(user.getMonth()),Integer.parseInt(user.getDay()));
		user.setConstellation(constellation);
		
		return user;
	}
	
	private class UserRowMapper implements RowMapper<User> {
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			return mapUser(rs);
		}
	}
	
	private int caculateAge(int yearBirth, int monthBirth, int dayOfMonthBirth) {
        Calendar cal = Calendar.getInstance();

//        if (cal.before(birthDay)) {
//            throw new IllegalArgumentException(
//                "The birthDay is before Now.It's unbelievable!");
//        }

        int yearNow = cal.get(Calendar.YEAR);
        int monthNow = cal.get(Calendar.MONTH)+1;
        int dayOfMonthNow = cal.get(Calendar.DAY_OF_MONTH);
       
//        cal.setTime(birthDay);
        int age = yearNow - yearBirth;

        if (monthNow <= monthBirth) {
            if (monthNow == monthBirth) {
                //monthNow==monthBirth
                if (dayOfMonthNow < dayOfMonthBirth) {
                    age--;
                }
            } else {
                //monthNow>monthBirth
                age--;
            }
        }

        return age;
    }
	
	/**
	 * 计算星座
	 * @param month
	 * @param day
	 * @return
	 */
	private String getConstellation(int month, int day) {
		String s = "魔羯水瓶双鱼牡羊金牛双子巨蟹狮子处女天秤天蝎射手魔羯";
		int[] arr = { 20, 19, 21, 21, 21, 22, 23, 23, 23, 23, 22, 22 };
		int num = month * 2 - (day < arr[month - 1] ? 2 : 0);
		return s.substring(num, num + 2);
	}

}
