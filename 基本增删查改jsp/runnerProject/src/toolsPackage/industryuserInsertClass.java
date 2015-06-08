package toolsPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;

import databasePackage.databaseLink;

public class industryuserInsertClass {
	private databaseLink dbl = new databaseLink();
	private Connection conn = dbl.getConnection();
	private PreparedStatement pstmt;
	
///////////////////////////////////////////////////////////////////////////
	/*
	 * 行业用户表userGroup
	 */
	private String GroupID;
	private String groupName;
	private int groupType;
	private int groupNumber;
	private int maxNumber;
	private String groupLeader;
	private String GroupOrganization;
	private String GroupAddress;
	private String GroupData;
	private String password;
	private String userpassword;                     //改字段不在数据库的该表中
	
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGroupID() {
		return GroupID;
	}
	public void setGroupID(String groupID) {
		GroupID = groupID;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public int getGroupType() {
		return groupType;
	}
	public void setGroupType(int groupType) {
		this.groupType = groupType;
	}
	public int getGroupNumber() {
		return groupNumber;
	}
	public void setGroupNumber(int groupNumber) {
		this.groupNumber = groupNumber;
	}
	public int getMaxNumber() {
		return maxNumber;
	}
	public void setMaxNumber(int maxNumber) {
		this.maxNumber = maxNumber;
	}
	public String getGroupLeader() {
		return groupLeader;
	}
	public void setGroupLeader(String groupLeader) {
		this.groupLeader = groupLeader;
	}
	public String getGroupOrganization() {
		return GroupOrganization;
	}
	public void setGroupOrganization(String groupOrganization) {
		GroupOrganization = groupOrganization;
	}
	public String getGroupAddress() {
		return GroupAddress;
	}
	public void setGroupAddress(String groupAddress) {
		GroupAddress = groupAddress;
	}
	public String getGroupData() {
		return GroupData;
	}
	public void setGroupData(String groupData) {
		GroupData = groupData;
	}
///////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////

	/*
	 * 行业用户注册
	 */
	public int industryuserRegister(){
		String sql = "";
		int flag = 0;
		try{
			sql = "insert into userGroup(groupName,groupType,groupNumber,password,maxNumber,groupLeader,GroupOrganization,GroupAddress,GroupData)"
					+ "values(?,?,?,?,?,?,?,?,?,?) if exists (select * from appUser where appId=? and password=?) and"
					+ " not exists (select groupId from userGroup where groupName=?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getGroupName());
			pstmt.setInt(2, getGroupType());
			pstmt.setInt(3, getGroupNumber());
			pstmt.setString(4, getPassword());
			pstmt.setInt(5, getMaxNumber());
			pstmt.setString(6, getGroupLeader());
			pstmt.setString(7, getGroupOrganization());
			pstmt.setString(8, getGroupAddress());
			pstmt.setString(9, getGroupData());
			pstmt.setString(10, getGroupLeader());
			pstmt.setString(11, getUserpassword());
			pstmt.setString(12, getGroupName());
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	
	
	/*
	 * 添加群成员
	 */
//	public int industry_add_groupmember(){
//		String sql = "";
//		int flag = 0;
//		try{
//			//sql = "insert into ";
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		return flag;
//	}
	
	
}
