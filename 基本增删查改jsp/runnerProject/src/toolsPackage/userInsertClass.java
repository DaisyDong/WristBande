package toolsPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;

import databasePackage.databaseLink;

public class userInsertClass {
	private databaseLink dbl = new databaseLink();
	private Connection conn = dbl.getConnection();
	private PreparedStatement pstmt;
	
//////////////////////////////////////////////////////////////////
	/*
	 * 以下数据是表appuser的数据
	 */
	
	private String APP_type;
	private String App_priority;
	private String email;
	private String phone;
	private String Paytype_num;
	private String Paytype;
	public String getAPP_type() {
		return APP_type;
	}
	public void setAPP_type(String aPP_type) {
		APP_type = aPP_type;
	}
	public String getApp_priority() {
		return App_priority;
	}
	public void setApp_priority(String app_priority) {
		App_priority = app_priority;
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
	public String getPaytype_num() {
		return Paytype_num;
	}
	public void setPaytype_num(String paytype_num) {
		Paytype_num = paytype_num;
	}
	public String getPaytype() {
		return Paytype;
	}
	public void setPaytype(String paytype) {
		Paytype = paytype;
	}
	
//////////////////////////////////////////////////////////////////
	
//////////////////////////////////////////////////////////////////
	/*
	 * 以下数据是terminal表中的数据
	 */

	private String terminalId;
	private String isOnline;
	private String InPrivate;
	private int electricity;
	private String username;
	private String password;
	private String nickname;
	private String birthday;
	private String sex;
	private String Reward_ID;
	private String Reward_time;
	private String Reward_location;
	private String Reward_event;
	private String terminalGroup_groupName;
	private String Bound_phonenumber;
	private String headPictureURL;
	private String isPathForever;
	private String temporaryRight;
	private String CurrentVersion;
	private String retireTime;
	private String initialTime;
	private String serviceName;
	private String startTime;
	private String endTime;
	private String serviceDetail;
	private String payment;
	private String Num;
	private String priorityTime;
	private String discount;
	private String APP_num;
	private String APP_ID;
	public String getTerminalId() {
		return terminalId;
	}
	public void setTerminalId(String terminalId) {
		this.terminalId = terminalId;
	}
	public String getIsOnline() {
		return isOnline;
	}
	public void setIsOnline(String isOnline) {
		this.isOnline = isOnline;
	}
	public String getInPrivate() {
		return InPrivate;
	}
	public void setInPrivate(String inPrivate) {
		InPrivate = inPrivate;
	}
	public int getElectricity() {
		return electricity;
	}
	public void setElectricity(int electricity) {
		this.electricity = electricity;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getReward_ID() {
		return Reward_ID;
	}
	public void setReward_ID(String reward_ID) {
		Reward_ID = reward_ID;
	}
	public String getReward_time() {
		return Reward_time;
	}
	public void setReward_time(String reward_time) {
		Reward_time = reward_time;
	}
	public String getReward_location() {
		return Reward_location;
	}
	public void setReward_location(String reward_location) {
		Reward_location = reward_location;
	}
	public String getReward_event() {
		return Reward_event;
	}
	public void setReward_event(String reward_event) {
		Reward_event = reward_event;
	}
	public String getTerminalGroup_groupName() {
		return terminalGroup_groupName;
	}
	public void setTerminalGroup_groupName(String terminalGroup_groupName) {
		this.terminalGroup_groupName = terminalGroup_groupName;
	}
	public String getBound_phonenumber() {
		return Bound_phonenumber;
	}
	public void setBound_phonenumber(String bound_phonenumber) {
		Bound_phonenumber = bound_phonenumber;
	}
	public String getHeadPictureURL() {
		return headPictureURL;
	}
	public void setHeadPictureURL(String headPictureURL) {
		this.headPictureURL = headPictureURL;
	}
	public String getIsPathForever() {
		return isPathForever;
	}
	public void setIsPathForever(String isPathForever) {
		this.isPathForever = isPathForever;
	}
	public String getTemporaryRight() {
		return temporaryRight;
	}
	public void setTemporaryRight(String temporaryRight) {
		this.temporaryRight = temporaryRight;
	}
	public String getCurrentVersion() {
		return CurrentVersion;
	}
	public void setCurrentVersion(String currentVersion) {
		CurrentVersion = currentVersion;
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
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getNum() {
		return Num;
	}
	public void setNum(String num) {
		Num = num;
	}
	public String getPriorityTime() {
		return priorityTime;
	}
	public void setPriorityTime(String priorityTime) {
		this.priorityTime = priorityTime;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getAPP_num() {
		return APP_num;
	}
	public void setAPP_num(String aPP_num) {
		APP_num = aPP_num;
	}
	public String getAPP_ID() {
		return APP_ID;
	}
	public void setAPP_ID(String aPP_ID) {
		APP_ID = aPP_ID;
	}
	
//////////////////////////////////////////////////////////////////
	
//////////////////////////////////////////////////////////////////
	/*
	 * 
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
//////////////////////////////////////////////////////////////////

	
	
	/*
	 * 普通用户注册
	 */
	public int user_Register_Insert(){
		String sql = "";
		int flag = 0;
		try{
			sql = "insert into appuser(APP_type,nickname,useranme,password,App_priority,email,phone,sex) "
					+ "values(?,?,?,?,?,?,?,?) if not exits(select username from appuser where username=?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getAPP_type());
			pstmt.setString(2, getNickname());
			pstmt.setString(3, getUsername());
			pstmt.setString(4, getPassword());
			pstmt.setString(5, getApp_priority());
			pstmt.setString(6, getEmail());
			pstmt.setString(7, getPhone());
			pstmt.setString(8, getSex());
			pstmt.setString(9, getUsername());
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	
	/*
	 * 用户添加手环操作
	 */
	public int add_Terminal_for_user(String appId){
		String sql = "";
		int flag = 0;
		try{
			sql = "insert into appuser_has_terminal(appId,terminalId) values(?,?)"
					+ " if ((not exists (select appId,terminalId from appuser_has_terminal where appId=? and terminalId=?))"
					+ " and (select password from terminal where terminalId=?)=?)"
					+ " ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, appId);
			pstmt.setString(2, getTerminalId());
			pstmt.setString(3, appId);
			pstmt.setString(4, getTerminalId());
			pstmt.setString(5, getTerminalId());
			pstmt.setString(6, getPassword());
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	
	/*
	 * 设备添加类，进行设备的注册
	 */
	
	public int terminal_Register_Insert(){
		String sql = "";
		int i = 0;
		try{
			sql = "insert into terminal(terminalId,username,password,nickname,"
					+ "birthday,sex,Bound_phonenumber,initialTime,serviceName,"
					+ "startTime,endTime，serviceDetail,payment,Num,priorityTime,"
					+ "discount,APP_num,APP_ID) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getTerminalId());
			pstmt.setString(2, getUsername());
			pstmt.setString(3, getPassword());
			pstmt.setString(4, getNickname());
			pstmt.setString(5, getBirthday());
			pstmt.setString(6, getSex());
			pstmt.setString(7, getBound_phonenumber());
			pstmt.setString(8, getInitialTime());
			pstmt.setString(9, getServiceName());
			pstmt.setString(10, getStartTime());
			pstmt.setString(11, getEndTime());
			pstmt.setString(12, getServiceDetail());
			pstmt.setString(13, getPayment());
			pstmt.setString(14, getNum());
			pstmt.setString(15, getPriorityTime());
			pstmt.setString(16, getDiscount());
			pstmt.setString(17, getAPP_num());
			pstmt.setString(18, getAPP_ID());
			i = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return i;
	}

	/*
	 * 添加电话号码到电话簿
	 */
	public int insertPhone(String terminalId){
		String sql = "";
		int flag = 0;
		try{
			sql = "insert into terminal_phone_record(terminalId,phoneUser,phoneNumber,phonetype)"
					+ " values(?,?,?,?) if not exits phoneNumber=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			pstmt.setString(2, getPhoneUser());
			pstmt.setString(3, getPhoneNumber());
			pstmt.setString(4, getPhonetype());
			pstmt.setString(5, getPhoneNumber());
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	
	/*
	 * 添加奖励
	 */
	public int insertReward(String terminalId){
		String sql = "";
		int flag = 0;
		try{
			sql = "insert into reward_record(reward_event,reward_time,terminalId) values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getReward_event());
			pstmt.setString(2, getReward_time());
			pstmt.setString(3, terminalId);
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
}
