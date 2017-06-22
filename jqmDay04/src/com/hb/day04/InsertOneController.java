package com.hb.day04;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insert.html")
public class InsertOneController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GuestVo bean=new GuestVo(
				Integer.parseInt(request.getParameter("sabun"))
				,request.getParameter("name")
				,request.getParameter("nalja")
				,Integer.parseInt(request.getParameter("pay"))
				);
		
		GuestDao.getDao().insertOne(bean);
		response.sendRedirect("index.html");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
