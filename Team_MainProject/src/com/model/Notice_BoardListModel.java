package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.custom.dao.NoticeDAO;
import com.custom.dao.NoticeDTO;


public class Notice_BoardListModel implements Model {

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf=
				new SimpleDateFormat("yyyy-MM-dd");
		String strPage=req.getParameter("page");
		if(strPage==null)
			strPage="1";
		int curpage=Integer.parseInt(strPage);
		int rowSize=10;
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
		Map map=new HashMap();
		map.put("start", start); // #{start}
		map.put("end", end); // #{end}
		List<NoticeDTO> list=
				NoticeDAO.notice_boardListData(map);
	/*	for(NoticeDTO d:list)
		{
			d.setDbday(sdf.format(d.getN_Regdate()));
			d.setReplyCount(NoticeDAO.notice_boardTotalPage(d.getNo()));
		}*/
		int totalpage=NoticeDAO.notice_boardTotalPage();
		/*req.setAttribute("today", sdf.format(new Date()));*/
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("list", list);
		req.setAttribute("curpage", curpage);
		
		// <c:set>
		// ${title}
		/*req.setAttribute("jsp", "../board/board_list.jsp");*/
		// ${jsp}
		return "../custom_board/notice.jsp";
	}

}
