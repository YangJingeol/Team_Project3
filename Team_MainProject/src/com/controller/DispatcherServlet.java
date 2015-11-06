package com.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import com.model.*;
// ��û => ó�� (Front Controller)
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private WebApplicationContext wc;
	public void init(ServletConfig config) throws ServletException {
		String path=config.getInitParameter("xmlPath");
		//System.out.println(path);
		wc = new WebApplicationContext(path);
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			System.out.println("---------------------");
			String cmd = request.getRequestURI();
			cmd = cmd.substring(request.getContextPath().length()+1, cmd.lastIndexOf('.'));
			System.out.println("context path: " + request.getContextPath());
			System.out.println("uri : "+request.getRequestURI());
			System.out.println("url : "+request.getRequestURL());
			System.out.println("cmd : "+cmd);
			Model model = wc.getBean(cmd);
			String jsp = model.handlerRequest(request, response);
			System.out.println("jsp : "+jsp);
			String type = jsp.substring(jsp.lastIndexOf('.')+1);
			System.out.println("type :"+type);
			if(type.equals("do"))
			{
				// board_insert_ok.do => board_list.do
			    response.sendRedirect(jsp);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher(jsp);
				rd.forward(request, response);
			}
			
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
}