package toolsPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class industryuserUpdateServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out = response.getWriter();
		
		industryuserUpdateClass industryupdate = new industryuserUpdateClass();
		String pagetype,groupId,groupLeader,password,groupName,GroupOrganization,GroupAddress,GroupData;
		
		pagetype = request.getParameter("pagetype");
		groupId = request.getParameter("groupId");
		groupLeader = request.getParameter("groupLeader");
		password = request.getParameter("password");
		groupName = request.getParameter("groupName");
		GroupOrganization = request.getParameter("GroupOrganization");
		GroupAddress = request.getParameter("GroupAddress");
		GroupData = request.getParameter("GroupData");
		
		if(pagetype.equals("updateIndustryPassword")){
			industryupdate.setPassword(password);
			industryupdate.updateGroupPassword(groupId, groupLeader);
		}else if(pagetype.equals("updateIndustryData")){
			industryupdate.setGroupName(groupName);
			industryupdate.setGroupAddress(GroupAddress);
			industryupdate.setGroupData(GroupData);
			industryupdate.setGroupOrganization(GroupOrganization);
			industryupdate.updateGroupData(groupId, groupLeader);
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		doPost(request, response);
	}
}
