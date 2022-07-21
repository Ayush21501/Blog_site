package controller;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Date;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.mail.iap.Response;

import Dao.contactDao;
import Vo.contactVo;

/**
 * Servlet implementation class contactController
 */
@WebServlet("/contactController")
public class contactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String flag = request.getParameter("flag");
		
		
		if (flag.equals("insert"))
		{
			insert(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String massage = request.getParameter("massage");
		
		response.setContentType("text/html ");
		PrintWriter p=response.getWriter();
		
		java.util.Date date = new java.util.Date();
		
		
		contactVo cv = new contactVo();
		contactDao cd = new contactDao();
		
		cv.setName(name);
		cv.setPhone(phone);
		cv.setEmail(email);
		cv.setMessage(massage);
		cv.setDate(date);
		
		
		cd.loginInsert(cv);
		
		p.write(name);
		p.write(email);
		p.write(phone);
		p.write(massage);
		System.out.println(date);
		
		response.sendRedirect("index.jsp");
			
	}

}
