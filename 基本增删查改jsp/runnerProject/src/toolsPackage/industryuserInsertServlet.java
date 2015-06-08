package toolsPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class industryuserInsertServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out = response.getWriter();
		
		industryuserInsertClass industryInsert = new industryuserInsertClass();
		int groupNumber,maxNumber;
		String pagetype,groupName,password,groupLeader,userpassword,GroupOrganization,GroupAddress,GroupData;
		pagetype = request.getParameter("pagetype");
		groupNumber = Integer.parseInt(request.getParameter("groupNumber"));
		maxNumber = Integer.parseInt(request.getParameter("maxNumber"));
		groupName = request.getParameter("groupName");
		password = request.getParameter("password");
		groupLeader = request.getParameter("groupLeader");
		userpassword = request.getParameter("userpassword");
		GroupOrganization = request.getParameter("GroupOrganization");
		GroupAddress = request.getParameter("GroupAddress");
		GroupData = request.getParameter("GroupData");
		
		if(pagetype.equals("industryRegister")){
			industryInsert.setGroupNumber(groupNumber);
			industryInsert.setMaxNumber(maxNumber);
			industryInsert.setGroupName(groupName);
			industryInsert.setGroupName(groupName);
			industryInsert.setPassword(password);
			industryInsert.setGroupLeader(groupLeader);
			industryInsert.setUserpassword(userpassword);
			industryInsert.setGroupOrganization(GroupOrganization);
			industryInsert.setGroupAddress(GroupAddress);
			industryInsert.setGroupData(GroupData);
			industryInsert.industryuserRegister();
		}
	}
}
