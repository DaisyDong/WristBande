package toolsPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import databasePackage.databaseLink;

public class industryuserSelectClass {
	private databaseLink dbl = new databaseLink();
	private Connection conn = dbl.getConnection();
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	/*
	 * 查询群组基本信息
	 */
	public ResultSet selectGroupData(String groupId, String groupLeader){
		String sql = "";
		try{
			sql = "select GroupID,groupName,groupType,groupNumber,maxNumber,"
					+ "GroupOrganization,GroupAddress,GroupData from usergroup "
					+ "where GroupId=? and groupLeader=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, groupId);
			pstmt.setString(2, groupLeader);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	/*
	 * 查询群组手环 
	 */
	public ResultSet selectBoundMember(String groupId){
		String sql = "";
		try{
			sql = "select username,terminal_has_usergroup.terminalId from terminal,terminal_has_usergroup where"
					+ " terminal.terminalId=terminal_has_usergroup.terminalId and terminal_has_usergroup.GroupID=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, groupId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	
	/*
	 * 查询群组成员信息
	 */
	public ResultSet selectMemberData(String terminalId, String groupId){
		String sql = "";
		try{
			sql = "select isOnline,InPrivate,username,nickname,birthday,sex,phone,Location from terminal,terminal_location"
					+ " where terminal.terminalId=?,terminal_location.terminalId=? if exists "
					+ "(select terminalId,GroupID "
					+ "from terminal_has_usergroup whereterminalId=?,GroupID=?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			pstmt.setString(2, terminalId);
			pstmt.setString(3, terminalId);
			pstmt.setString(4, groupId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	
	/*
	 * 查询在线手环
	 */
	public ResultSet selectIsOnlineTerminal(String terminalId, String groupId, String isOnline) {
		String sql = "";
		try{
			sql = "select InPrivate,username,nickname,birthday,sex,phone,Location from terminal,terminal_location"
					+ " where terminal.terminalId=? and terminal_location.terminalId=? and terminal.isOnline=?"
					+ "if exists (select terminalId,GroupID "
					+ "from terminal_has_usergroup whereterminalId=?,GroupID=?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			pstmt.setString(2, terminalId);
			pstmt.setString(3, isOnline);
			pstmt.setString(4, terminalId);
			pstmt.setString(5, groupId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	/*
	 * 查询处于非私密状态的手环
	 */
	public ResultSet selectIsPrivateTerminal(String terminalId, String groupId, String isPrivate) {
		String sql = "";
		try{
			sql = "select isOnline,username,nickname,birthday,sex,phone,Location from terminal,terminal_location"
					+ " where terminal.terminalId=? and terminal_location.terminalId=? and terminal.InPrivate=?"
					+ "if exists (select terminalId,GroupID "
					+ "from terminal_has_usergroup whereterminalId=?,GroupID=?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			pstmt.setString(2, terminalId);
			pstmt.setString(3, isPrivate);
			pstmt.setString(4, terminalId);
			pstmt.setString(5, groupId);
			rs = pstmt.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
}
