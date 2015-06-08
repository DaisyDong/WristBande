package toolsPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;

import databasePackage.databaseLink;

public class industryuserDeleteClass {
	private databaseLink dbl = new databaseLink();
	private Connection conn = dbl.getConnection();
	private PreparedStatement pstmt;
	
	/*
	 * 删除群组，将其注销
	 */
	public void industryuserDeleteAll(String groupId, String groupLeader){
		String sql1 = "", sql2 = "";
		try{
			sql1 = "delete from usergroup where GroupID=? and groupLeader=?";
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, groupId);
			pstmt.setString(2, groupLeader);
			pstmt.executeUpdate();
			sql2 = "delete from terminal_has_usergroup where GroupID=?";
			pstmt = conn.prepareStatement(sql2);
			pstmt.setString(1, groupId);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void industryuserDeleteMember(String groupId, String terminalId){
		String sql = "";
		try{
			sql = "delete from terminal_has_usergroup where terminalId=? and GroupID=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			pstmt.setString(2, groupId);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
