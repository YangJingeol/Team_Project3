package com.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;
import com.member.dao.gtableDTO;

public class SearchModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String word;
		word = req.getParameter("word");
		System.out.println(word);
		List<gtableDTO> list=MemberDAO.searchMeeting(word);
		req.setAttribute("list", list);
		req.setAttribute("slide", "../main/slide.jsp");
		req.setAttribute("jsp", "../main/meeting_list.jsp");
		
		return "main/main.jsp";
	}

}
