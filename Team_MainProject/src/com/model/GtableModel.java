package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.*;

public class GtableModel  implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		List<gtableDTO> list=MemberDAO.gtableListData();

		req.setAttribute("list", list);
		// <c:set>
		// ${title}
		req.setAttribute("jsp", "../mypage/gtable.jsp");
		// ${jsp}
		return "main/main.jsp";
	}

}
