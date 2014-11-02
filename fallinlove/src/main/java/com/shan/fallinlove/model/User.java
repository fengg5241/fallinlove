package com.shan.fallinlove.model;

public class User extends BaseModel{
	
	private long userId;
	
	private String password;
	
	private String sex;
	
	private String year;
	
	private String month;
	
	private String day;
	
	private String city;
	
	private String province;
	
	private String address;
	
	private String marriage;
	
	private String height;
	
	private String education;
	
	private String income;
	
	private String salary;
	
	private String registerType;
	
	private String phoneNumber;
	
	private String emailAdd;
	
	private String mobileVali;
	
	private String nickname;
	
	private String noteWhich;
	
	private String noteFinal;
	
	private String note1;
	
	private String note2;
	
	private String note3;
	
	private String validateCode;
	
	private String mobile;
	
	private String headPic;
	
	private long stampCount;
	
	//not in DB
	private int age;
	
	private String constellation;
	
	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMarriage() {
		return marriage;
	}

	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getIncome() {
		return income;
	}

	public void setIncome(String income) {
		this.income = income;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getRegisterType() {
		return registerType;
	}

	public void setRegisterType(String registerType) {
		this.registerType = registerType;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmailAdd() {
		return emailAdd;
	}

	public void setEmailAdd(String emailAdd) {
		this.emailAdd = emailAdd;
	}

	public String getMobileVali() {
		return mobileVali;
	}

	public void setMobileVali(String mobileVali) {
		this.mobileVali = mobileVali;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getNoteWhich() {
		return noteWhich;
	}

	public void setNoteWhich(String noteWhich) {
		this.noteWhich = noteWhich;
	}

	public String getNoteFinal() {
		return noteFinal;
	}

	public void setNoteFinal(String noteFinal) {
		this.noteFinal = noteFinal;
	}

	public String getNote1() {
		return note1;
	}

	public void setNote1(String note1) {
		this.note1 = note1;
	}

	public String getNote2() {
		return note2;
	}

	public void setNote2(String note2) {
		this.note2 = note2;
	}

	public String getNote3() {
		return note3;
	}

	public void setNote3(String note3) {
		this.note3 = note3;
	}

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getHeadPic() {
		return headPic;
	}

	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getConstellation() {
		return constellation;
	}

	public void setConstellation(String constellation) {
		this.constellation = constellation;
	}

	public long getStampCount() {
		return stampCount;
	}

	public void setStampCount(long stampCount) {
		this.stampCount = stampCount;
	}

	@Override
	public String toString() {
		return "User [password=" + password + ", sex=" + sex + ", year=" + year
				+ ", month=" + month + ", day=" + day + ", city=" + city
				+ ", province=" + province + ", address=" + address
				+ ", marriage=" + marriage + ", height=" + height
				+ ", education=" + education + ", income=" + income
				+ ", salary=" + salary + ", registerType=" + registerType
				+ ", phoneNumber=" + phoneNumber + ", emailAdd=" + emailAdd
				+ ", mobileVali=" + mobileVali + ", nickname=" + nickname
				+ ", noteWhich=" + noteWhich + ", noteFinal=" + noteFinal
				+ ", note1=" + note1 + ", note2=" + note2 + ", note3=" + note3
				+ ", validateCode=" + validateCode + "]";
	}

}
