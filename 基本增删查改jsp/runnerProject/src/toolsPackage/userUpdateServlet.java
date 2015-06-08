package toolsPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class userUpdateServlet extends HttpServlet{
	public void	doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out = response.getWriter();
		
		userUpdateClass userupdate = new userUpdateClass();
		String terminalId,appId;
		String password,nickname,username,birthday,
			   email,phone,Bound_phonenumber,sex,phoneNumber,
			   phonetype,reward_event,reward_time,theme,soundId,userpagename,phoneId;
		terminalId = request.getParameter("terminalId");
		appId = request.getParameter("appId");
		password = request.getParameter("password");
		nickname = request.getParameter("nickname");
		username = request.getParameter("username");
		birthday = request.getParameter("birthday");
		email = request.getParameter("email");
		phone = request.getParameter("phone");
		Bound_phonenumber = request.getParameter("Bound_phonenumber");
		sex = request.getParameter("sex");
		phoneNumber = request.getParameter("phoneNumber");
		phonetype = request.getParameter("phonetype");
		reward_event = request.getParameter("reward_event");
		reward_time = request.getParameter("reward_time");
		theme = request.getParameter("theme");
		soundId = request.getParameter("soundId");
		userpagename = request.getParameter("userpagename");
		phoneId = request.getParameter("phoneId");
		
		if(userpagename.equals("updateAppuser")){
			userupdate.setNickname(nickname);
			userupdate.setUsername(username);
			userupdate.setBirthday(birthday);
			userupdate.setEmail(email);
			userupdate.setPhone(phone);
			userupdate.setBound_phonenumber(Bound_phonenumber);
			userupdate.updateAppuser(appId);
		}else if(userpagename.equals("updatePhone")){
			userupdate.setUsername(username);
			userupdate.setPhoneNumber(phoneNumber);
			userupdate.setPhonetype(phonetype);
			userupdate.setPhoneId(phoneId);
			userupdate.updatePhone(terminalId);
		}else if(userpagename.equals("updateReward")){
			userupdate.setReward_event(reward_event);
			userupdate.setReward_time(reward_time);
			userupdate.updateReward(terminalId);
		}else if(userpagename.equals("updateSound")){
			userupdate.setSoundTheme(theme);
			userupdate.setSoundId(soundId);
			userupdate.updateSound(terminalId);
		}else if(userpagename.equals("updateTerminal")){
			userupdate.setUsername(username);
			userupdate.setNickname(nickname);
			userupdate.setBirthday(birthday);
			userupdate.setSex(sex);
			userupdate.updateTerminal(terminalId);
		}else if(userpagename.equals("updateTerminalPassword")){
			userupdate.setPassword(password);
			userupdate.updateTerminalPassword(terminalId);
		}else if(userpagename.equals("updateUserPassoword")){
			userupdate.setPassword(password);
			userupdate.updateUserPassword(appId);
		}else{
			out.println("<html>");
			out.println("<body>");
			out.println("<h1 align='center'>«Î«Û¥ÌŒÛ</h1>");
			out.println("</body>");
			out.println("</html>");
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		doPost(request, response);
	}
}
