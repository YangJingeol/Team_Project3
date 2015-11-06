package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;

public class MyModify_OkModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
        req.setCharacterEncoding("UTF-8");
       HttpSession session = req.getSession();
		String email = (String)session.getAttribute("email");
        String nickname=req.getParameter("nickname");
        String lang=req.getParameter("lang");
        String pwd=req.getParameter("password");
        String tel1=req.getParameter("tel1");
        String tel2=req.getParameter("tel2");
        String tel3=req.getParameter("tel3");
        String tel=tel1+"-"+tel2+"-"+tel3;
        String intro=req.getParameter("intro");
        MemberDTO d = MemberDAO.memberGetInfo(email);
        d.setEmail(email);
        d.setNickname(nickname);
        d.setLang(lang);
        d.setPwd(pwd);
        d.setTel(tel);
        d.setIntro(intro);
        MemberDAO.modifyupdate(d);

		return "modify.do";
	}
    
}
