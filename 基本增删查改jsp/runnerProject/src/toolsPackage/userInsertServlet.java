package toolsPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class userInsertServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out = response.getWriter();
		
		userInsertClass userInsert = new userInsertClass();
		String pageType,appId,nickname,username,password,email,phone,
		       sex,terminalId,phoneUser,phoneNumber,phonetype,reward_time,reward_event;
		
		appId = request.getParameter("appId");
		pageType = request.getParameter("pageType");
		nickname = request.getParameter("nickname");
		username = request.getParameter("username");
		password = request.getParameter("password");
		email = request.getParameter("email");
		phone = request.getParameter("phone");
		sex = request.getParameter("sex");
		terminalId = request.getParameter("terminalId");
		phoneUser = request.getParameter("phoneUser");
		phoneNumber = request.getParameter("phoneNumber");
		phonetype = request.getParameter("phonetype");
		reward_time = request.getParameter("time");
		reward_event = request.getParameter("reward_event");
		
		if(pageType.equals("userRegister")){
			userInsert.setNickname(nickname);
			userInsert.setUsername(username);
			userInsert.setPassword(password);
			userInsert.setEmail(email);
			userInsert.setPhone(phone);
			userInsert.setSex(sex);
			userInsert.user_Register_Insert();
		}else if(pageType.equals("user_Bound_Terminal")){
			userInsert.setTerminalId(terminalId);
			userInsert.setPassword(password);
			userInsert.add_Terminal_for_user(appId);
		}else if(pageType.equals("insertPhone")){
			userInsert.setPhoneUser(phoneUser);
			userInsert.setPhoneNumber(phoneNumber);
			userInsert.setPhonetype(phonetype);
			userInsert.insertPhone(terminalId);	
		}else if(pageType.equals("insertReward")){
			userInsert.setReward_event(reward_event);
			userInsert.setReward_time(reward_time);
			userInsert.insertReward(terminalId);
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		
	}
}
