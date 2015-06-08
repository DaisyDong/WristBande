package toolsPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;

import databasePackage.databaseLink;

public class userDeleteClass {
	private databaseLink dbl = new databaseLink();
	private Connection conn = dbl.getConnection();
	private PreparedStatement pstmt;
	
	
	/*
	 * 用户删除关联设备
	 */
	public int deleteTerminal(String terminalId, String appId){
		String sql = "";
		int flag = 0;
		try{
			sql = "delete from appuser_has_terminal where appId=? and terminalId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, appId);
			pstmt.setString(2, terminalId);
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	
	/*
	 * 删除电话
	 */
	public int deleteTerminalPhone(String terminalId, String phoneId){
		String sql = "";
		int flag = 0;
		try{
			sql = "delete from terminal_phone_record where terminalId=? and phoneId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			pstmt.setString(2, phoneId);
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	
	/*
	 * 删除奖励
	 */
	public int deleteTerminalReward(String terminalId, String rewardId){
		String sql = "";
		int flag = 0;
		try{
			sql = "delete from reward_record where terminalId=? and rewardId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			pstmt.setString(2, rewardId);
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	
	/*
	 * 删除录音
	 * 
	 */
	public int deleteTerminalSound(String terminalId, String soundId){
		String sql = "";
		int flag = 0;
		try{
			sql = "delete from terminal_sound where terminalId=? and soundId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, terminalId);
			pstmt.setString(2, soundId);
			flag = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
}
