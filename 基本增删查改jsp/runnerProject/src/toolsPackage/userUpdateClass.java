package toolsPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import databasePackage.databaseLink;

public class userUpdateClass {
	private databaseLink dbl = new databaseLink();
	private Connection conn = dbl.getConnection();
	private PreparedStatement pstmt;
	
////////////////////////////////////////////////////////////////////////////////////////////
	/*
	 * 以下数据是appuser表中的数据
	 */
	private String appID;
	private String app_type;
	private String username;
	private String nickname;
	private String password;
	private String birthday;
	private int app_priority;
	private String email;
	private String phone;
	private String bound_phonenumber;
	private String sex;
	private String headPictureURL;
	private int paytype_num;
	private String paytype;
	public String getAppID() {
		return appID;
	}
	public void setAppID(String appID) {
		this.appID = appID;
	}
	public String getApp_type() {
		return app_type;
	}
	public void setApp_type(String app_type) {
		this.app_type = app_type;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public int getApp_priority() {
		return app_priority;
	}
	public void setApp_priority(int app_priority) {
		this.app_priority = app_priority;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBound_phonenumber() {
		return bound_phonenumber;
	}
	public void setBound_phonenumber(String bound_phonenumber) {
		this.bound_phonenumber = bound_phonenumber;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getHeadPictureURL() {
		return headPictureURL;
	}
	public void setHeadPictureURL(String headPictureURL) {
		this.headPictureURL = headPictureURL;
	}
	public int getPaytype_num() {
		return paytype_num;
	}
	public void setPaytype_num(int paytype_num) {
		this.paytype_num = paytype_num;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	
////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
/*
 * history_location表的信息
 */
	
	

	private String terminalId;
	private int Number;
	private String Location;
	private String Time;
	private int Location_order;
	private String Location_city;
	private String Location_street;
	private String Location_building;
	public String getTerminalId() {
		return terminalId;
	}
	public void setTerminalId(String terminalId) {
		this.terminalId = terminalId;
	}
	public int getNumber() {
		return Number;
	}
	public void setNumber(int number) {
		Number = number;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
	public int getLocation_order() {
		return Location_order;
	}
	public void setLocation_order(int location_order) {
		Location_order = location_order;
	}
	public String getLocation_city() {
		return Location_city;
	}
	public void setLocation_city(String location_city) {
		Location_city = location_city;
	}
	public String getLocation_street() {
		return Location_street;
	}
	public void setLocation_street(String location_street) {
		Location_street = location_street;
	}
	public String getLocation_building() {
		return Location_building;
	}
	public void setLocation_building(String location_building) {
		Location_building = location_building;
	}
	
////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////
	/*
	 * terminal表的数据
	 */
	private char isOnline;
	private char inPrivate;
	private int electricity;
	private char isPathForever;
	private char temporaryRight;
	private String currentVersion;
	private String retireTime;
	private String initialTime;
	private String serviceName;
	private String startTime;
	private String endTime;
	private String serviceDetail;
	private float payment;
	private int Num;
	private String priorityTime;
	private int discount;
	private int App_num;
	private String App_ID;
	public char getIsOnline() {
		return isOnline;
	}
	public void setIsOnline(char isOnline) {
		this.isOnline = isOnline;
	}
	public char getInPrivate() {
		return inPrivate;
	}
	public void setInPrivate(char inPrivate) {
		this.inPrivate = inPrivate;
	}
	public int getElectricity() {
		return electricity;
	}
	public void setElectricity(int electricity) {
		this.electricity = electricity;
	}
	public char getIsPathForever() {
		return isPathForever;
	}
	public void setIsPathForever(char isPathForever) {
		this.isPathForever = isPathForever;
	}
	public char getTemporaryRight() {
		return temporaryRight;
	}
	public void setTemporaryRight(char temporaryRight) {
		this.temporaryRight = temporaryRight;
	}
	public String getCurrentVersion() {
		return currentVersion;
	}
	public void setCurrentVersion(String currentVersion) {
		this.currentVersion = currentVersion;
	}
	public String getRetireTime() {
		return retireTime;
	}
	public void setRetireTime(String retireTime) {
		this.retireTime = retireTime;
	}
	public String getInitialTime() {
		return initialTime;
	}
	public void setInitialTime(String initialTime) {
		this.initialTime = initialTime;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getServiceDetail() {
		return serviceDetail;
	}
	public void setServiceDetail(String serviceDetail) {
		this.serviceDetail = serviceDetail;
	}
	public float getPayment() {
		return payment;
	}
	public void setPayment(float payment) {
		this.payment = payment;
	}
	public int getNum() {
		return Num;
	}
	public void setNum(int num) {
		Num = num;
	}
	public String getPriorityTime() {
		return priorityTime;
	}
	public void setPriorityTime(String priorityTime) {
		this.priorityTime = priorityTime;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getApp_num() {
		return App_num;
	}
	public void setApp_num(int app_num) {
		App_num = app_num;
	}
	public String getApp_ID() {
		return App_ID;
	}
	public void setApp_ID(String app_ID) {
		App_ID = app_ID;
	}
	
////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////
/*
 * terminal_location表数据
 */
	private String Current_Time;
	private String Current_location;
	private String Last_Time;
	private String Last_Location_city;
	private String Last_Location_street;
	private String Last_Location_building;
	private String Last_Location;
	public String getCurrent_Time() {
		return Current_Time;
	}
	public void setCurrent_Time(String current_Time) {
		Current_Time = current_Time;
	}
	public String getCurrent_location() {
		return Current_location;
	}
	public void setCurrent_location(String current_location) {
		Current_location = current_location;
	}
	public String getLast_Time() {
		return Last_Time;
	}
	public void setLast_Time(String last_Time) {
		Last_Time = last_Time;
	}
	public String getLast_Location_city() {
		return Last_Location_city;
	}
	public void setLast_Location_city(String last_Location_city) {
		Last_Location_city = last_Location_city;
	}
	public String getLast_Location_street() {
		return Last_Location_street;
	}
	public void setLast_Location_street(String last_Location_street) {
		Last_Location_street = last_Location_street;
	}
	public String getLast_Location_building() {
		return Last_Location_building;
	}
	public void setLast_Location_building(String last_Location_building) {
		Last_Location_building = last_Location_building;
	}
	public String getLast_Location() {
		return Last_Location;
	}
	public void setLast_Location(String last_Location) {
		Last_Location = last_Location;
	}
	
////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////
/*
 * terminal_phone_record表数据
 */
	private String phoneUser;
	private String phoneNumber;
	private String phonetype;
	private String phoneId;
	public String getPhoneUser() {
		return phoneUser;
	}
	public void setPhoneUser(String phoneUser) {
		this.phoneUser = phoneUser;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPhonetype() {
		return phonetype;
	}
	public void setPhonetype(String phonetype) {
		this.phonetype = phonetype;
	}
	public String getPhoneId() {
		return phoneId;
	}
	public void setPhoneId(String phoneId) {
		this.phoneId = phoneId;
	}
////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////
/*
 * terminal_sound表数据
 */
	private String soundURL;
	private String soundTheme;
	private String soundLocation;
	private int length;
	private String soundId;
	public String getSoundURL() {
		return soundURL;
	}
	public void setSoundURL(String soundURL) {
		this.soundURL = soundURL;
	}
	public String getSoundTheme() {
		return soundTheme;
	}
	public void setSoundTheme(String soundTheme) {
		this.soundTheme = soundTheme;
	}
	public String getSoundLocation() {
		return soundLocation;
	}
	public void setSoundLocation(String soundLocation) {
		this.soundLocation = soundLocation;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public String getSoundId() {
		return soundId;
	}
	public void setSoundId(String soundId) {
		this.soundId = soundId;
	}
////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////
/*
* terminal_sport表数据
*/
	private int CalorieConsumption;
	private int pace;
	public int getCalorieConsumption() {
		return CalorieConsumption;
	}
	public void setCalorieConsumption(int calorieConsumption) {
		CalorieConsumption = calorieConsumption;
	}
	public int getPace() {
		return pace;
	}
	public void setPace(int pace) {
		this.pace = pace;
	}
	
////////////////////////////////////////////////////////////////////////////////////////////
	
////////////////////////////////////////////////////////////////////////////////////////////
/*
* reward_record表数据
*/
	private String reward_event;
	private String reward_time;
	private String reward_Location;
	public String getReward_event() {
		return reward_event;
	}
	public void setReward_event(String reward_event) {
		this.reward_event = reward_event;
	}
	public String getReward_time() {
		return reward_time;
	}
	public void setReward_time(String reward_time) {
		this.reward_time = reward_time;
	}
	public String getReward_Location() {
		return reward_Location;
	}
	public void setReward_Location(String reward_Location) {
		this.reward_Location = reward_Location;
	}
	
////////////////////////////////////////////////////////////////////////////////////////////
	/*
	 * 修改用户信息
	 */
	public void updateAppuser(String appId){
		String sql = "";
		try{
			sql = "update appuser set nickName=?,username=?,birthday=?,email=?,phone=?,Bound_phonenumber=? where appId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getNickname());
			pstmt.setString(2, getUsername());
			pstmt.setString(3, getBirthday());
			pstmt.setString(4, getEmail());
			pstmt.setString(5, getPhone());
			pstmt.setString(6, getBound_phonenumber());
			pstmt.setString(7, appId);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void updateUserPassword(String appId){
		String sql = "";
		try{
			sql = "update appuser set password=? where appId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getPassword());
			pstmt.setString(2, appId);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/*
	 * 修改奖励内容
	 */
	public void updateReward(String terminalId){
		String sql = "";
		try{
			sql = "update reward_record set reward_event=? where reward_time=? and terminalId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getReward_event());
			pstmt.setString(2, getReward_time());
			pstmt.setString(3, terminalId);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/*
	 * 修改手环信息，参数为手环ID
	 */
	public void updateTerminal(String terminalId){
		String sql = "";
		try{
			sql = "update terminal set username=?,nickname=?,birthday=?,sex=? where terminalId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getUsername());
			pstmt.setString(2, getNickname());
			pstmt.setString(3, getBirthday());
			pstmt.setString(4, getSex());
			pstmt.setString(5, terminalId);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void updateTerminalPassword(String terminalId){
		String sql = "";
		try{
			sql = "update terminal set password=? where terminalId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getPassword());
			pstmt.setString(2, terminalId);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/*
	 * 修改电话记录，参数为手环ID
	 */
	public void updatePhone(String terminalId){
		String sql = "";
		try{
			sql = "update terminal_phone_record set phoneUser=?,phoneNumber=?,phonetype=? where terminalId=? and phoneId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getPhoneUser());
			pstmt.setString(2, getPhoneNumber());
			pstmt.setString(3, getPhonetype());
			pstmt.setString(4, terminalId);
			pstmt.setString(5, getPhoneId());
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/*
	 * 修改声音文件主题，参数为手环ID
	 */
	public void updateSound(String terminalId){
		String sql = "";
		try{
			sql = "update terminal_sound set soundTheme=? where terminalId=? and soundId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getSoundTheme());
			pstmt.setString(2, terminalId);
			pstmt.setString(3, getSoundId());
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}	
}
