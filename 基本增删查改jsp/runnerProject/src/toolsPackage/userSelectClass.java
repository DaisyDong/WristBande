package toolsPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import databasePackage.databaseLink;

public class userSelectClass {
	private databaseLink dbl = new databaseLink();
	private Connection conn = dbl.getConnection();
	private PreparedStatement pstmt;
	private ResultSet rs = null;
	
////////////////////////////////////////////////////////////////////////////////////////////
	/*
	 * 以下数据是appuser表中的数据
	 */
	private String appID;
	private String app_type;
	private String uesrname;
	private String nickname;
	private String password;
	private String birthday;
	private int app_priority;
	private String email;
	private String phone;
	private String bound_phonenumber;
	private char sex;
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
	public String getUesrname() {
		return uesrname;
	}
	public void setUesrname(String uesrname) {
		this.uesrname = uesrname;
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
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
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
	/*
	 * 查询用户绑定的手环
	 */
	
	public ResultSet selectUserBoundTerminal(String appId){
		String sql = "";
		try{
			sql = "select username,terminalId from terminal,appuser_has_terminal "
					+ "where appId=? and terminal.terminalId=appuser_has_terminal.terminalId";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, appId);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	/*
	 * 查询用户基本信息，
	 */
	public ResultSet selectUserData(String appId){
		String sql;
		try{
			sql = "select nickName,username,"
					+ "birthday,App_priority,email,"
					+ "phone,Bound_phonenumber,sex,"
					+ "headPictureURL,Paytype_num,Paytype"
					+ " from appuser where appId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, appId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	/*
	 * 查询手环信息，参数为用户ID
	 */
	public ResultSet selectTerminalData(String appId){
		String sql;
		try{
			sql = "select terminalId,isOnline,InPrivate,"
					+ "username,nickname,birthday,sex from terminal,appuser_has_terminal "
					+ "where appuser_has_terminal.appId=? and appuser_has_terminal.terminalId=termianl.terminalId";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, appId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet selectSingleTerminalData(String appId, String terminalId){
		String sql = "";
		try{
			sql = "select terminalId,isOnline,InPrivate,username,nickname,"
					+ "birthday,sex,isPathForever,"
					+ "CurrentVersion from terminal,appuser_has_terminal "
					+ "where appuser_has_terminal.appId=terminal.appId and appuser_has_terminal.terminalId=? and terminal.appId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			pstmt.setString(2, appId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	/*
	 * 查询某个已关注手环的位置信息，参数为手环Id
	 */
	public ResultSet selectTerminalCurrentLocation(String terminalId){
		String sql = "";
		try{
			sql = "select Locaton from terminal_Location where terminalId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	/*
	 * 查询已绑定手环的历史位置信息，参数为手环Id
	 */
	public ResultSet selectTerminalHistoryLocation(String terminalId){
		String sql = "";
		try{
			sql = "select Location_order,Location,Time from Termianl where terminalId=? group by Location_order asc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	/*
	 * 查询手环声音文件，参数为手环ID
	 */
	public ResultSet selectTerminalSound(String terminalId){
		String sql = "";
		try{
			sql = "select soundURL,Time,soundTheme,soundLocation,length,soundId from terminal_sound where terminalId=? group by Time asc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	/*
	 * 查询手环的运动量，参数为手环ID，运动量为手环对当天卡路里的消耗
	 */
	public ResultSet selectTerminalExecise(String terminalId){
		String sql = "";
		try{
			sql = "select CalorieConsumption,pace,time from terminal_sport where terminalId=? group by time asc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	/*
	 * 查询手环绑定的电话号码，参数为手环ID
	 */
	public ResultSet selectTerminalPhoneRecord(String terminalId){
		String sql = "";
		try{
			sql = "select phoneId,phoneUser,phoneNumber,phonetype from terminal_phone_record where terminalId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	/*
	 * 查询手环当前是否上线
	 */
	public boolean selectTerminalIsOnline(String terminalId){
		String sql = "";
		boolean online = false;
		try{
			sql = "select isOnline from terminal where terminalId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			int i = pstmt.executeUpdate();
			if(i > 0){
				online = true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return online;
	}
	
	/*
	 *查询手环奖励 
	 */
	public ResultSet selectTerminalReward(String terminalId){
		String sql = "";
		try{
			sql = "select record_event,reward_Location,reward_time,rewardId from reward_record where terminalId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			int i = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
}
