package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;

public class LoginCheckModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		int count = MemberDAO.memberIdCount(email);
		String result = "";
		if(count == 0)
		{
			result = "NOID";
		}
		else
		{
			MemberDTO d = MemberDAO.memberGetInfo(email);
			if(pwd.equals(d.getPwd()))
			{
				result = "OK";
				HttpSession session = req.getSession();
				session.setAttribute("email", email);
				session.setAttribute("name", d.getName());
				session.setAttribute("admin", d.getAdmin());
			}
			else
			{
				result ="NOPWD";
			}
		}
		req.setAttribute("result", result);
		
		return "member/login_check.jsp";
	}
	
}
