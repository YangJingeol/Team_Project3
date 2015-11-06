package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;
import com.member.dao.MemberDTO;

public class JoinOkModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		String name = req.getParameter("name");
		String nickname = req.getParameter("nickname");
		String sex = req.getParameter("sex");
		String strAge = req.getParameter("age");
		int age=Integer.parseInt(strAge);
		String nation = req.getParameter("nation");
		String tel = req.getParameter("tel");
		String lang = req.getParameter("lang");
		String intro = req.getParameter("intro");
		String photo = req.getParameter("photo");
		char admin='n';
		
		MemberDTO d = new MemberDTO();
		
		d.setEmail(email);
		d.setPwd(pwd);
		d.setName(name);
		d.setNickname(nickname);
		d.setSex(sex);
		d.setAge(age);
		d.setNation(nation);
		d.setTel(tel);
		d.setLang(lang);
		d.setIntro(intro);
		d.setPhoto(photo);
		d.setAdmin(admin);
		
		MemberDAO.memberInsert(d);
		
		return "main.do";
	}

}
