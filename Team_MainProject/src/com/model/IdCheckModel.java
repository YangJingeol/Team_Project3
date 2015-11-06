package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;

public class IdCheckModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String email;
		int count = 0;
		System.out.println("dfdf"+req.getParameter("email"));
		if(req.getParameter("email") == null)
		{
			email = "";
		}
		else
		{
			email = req.getParameter("email");
			count = MemberDAO.memberIdCount(email)+1;
		}
		
		String result = "";
		if(count == 0)
			result = "null";
		else if (count == 1)
			result = "OK";
		else
			result = "NotOK";
		
		req.setAttribute("result", result);
		req.setAttribute("email", email);
		return "member/idcheck.jsp";
	}
}
