package toolsPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;

import databasePackage.databaseLink;

public class industryuserUpdateClass {
	private databaseLink dbl = new databaseLink();
	private Connection conn = dbl.getConnection();
	private PreparedStatement pstmt;
	
	private String groupName;
	private String GroupAddress;
	private String GroupData;
	private String password;
	private String GroupOrganization;
	public String getGroupOrganization() {
		return GroupOrganization;
	}
	public void setGroupOrganization(String groupOrganization) {
		GroupOrganization = groupOrganization;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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

	public int updateGroupData(String groupId, String groupLeader){
		String sql = "";
		int flag = 0;
		try{
			sql = "update usergroup set GroupAddress=?,GroupData=?,groupName=? where GroupID=? and groupLeader=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getGroupAddress());
			pstmt.setString(2, getGroupData());
			pstmt.setString(3, getGroupName());
			pstmt.setString(4, groupId);
			pstmt.setString(5, groupLeader);
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	
	public int updateGroupPassword(String groupId, String groupLeader){
		String sql = "";
		int flag = 0;
		try{
			sql = "update usergroup set password=? where GroupID=? and groupLeader=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, getPassword());
			pstmt.setString(2, groupId);
			pstmt.setString(3, groupLeader);
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
}
