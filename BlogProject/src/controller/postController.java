package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Dao.postDao;
import Vo.postVo;

/**
 * Servlet implementation class postController
 */
@WebServlet("/postController")
public class postController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public postController() {
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
		
		if(flag.equals("search"))
		{
			search(request,response);
		}
		else if(flag.equals("goPost"))
		{
			goPost(request,response);
		}
		else if(flag.equals("searchblog"))
		{
			searchblog(request,response);
		}
		else if(flag.equals("deleteBlog"))
		{
			deleteblog(request,response);
		}
		else if(flag.equals("editBlog"))
		{
			editblog(request,response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String flag = request.getParameter("flag");
		
		if(flag.equals("InsertData"))
		{
			InsertPost(request,response);
		}
		else if(flag.equals("updateBlog"))
		{
			updateblog(request,response);
		}
		
		
	}
	
	protected void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		postDao pd = new postDao();
		postVo pv = new postVo();
		
		List<?> ls = (List<?>) pd.postSearch(pv);
		
		HttpSession hs = request.getSession();
		hs.setAttribute("list",ls);	
		response.sendRedirect("index.jsp");
	
	}
	
	protected void goPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		postDao pd = new postDao();
		postVo pv = new postVo();
		
		int sid=Integer.parseInt(request.getParameter("sid"));
		pv.setSid(sid);
		List<?> ls = (List<?>) pd.goPost(pv);
		
		HttpSession hs = request.getSession();
		hs.setAttribute("list2",ls);
		response.sendRedirect("post.jsp");
	
	}
	protected void searchblog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		postDao pd = new postDao();
		postVo pv = new postVo();
		
		List<?> ls = (List<?>) pd.postSearch(pv);
		
		HttpSession hs = request.getSession();
		hs.setAttribute("list",ls);	
		response.sendRedirect("searchBlog.jsp");
	}
	protected void InsertPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		postDao pd = new postDao();
		postVo pv = new postVo();
		
		String title = request.getParameter("title");
		String subtitle = request.getParameter("subtitle");
		String sendername = request.getParameter("sendername");
		String aboutpost = request.getParameter("aboutpost");
		java.util.Date date = new java.util.Date();
		
		pv.setTitle(title);
		pv.setSubtitle(subtitle);
		pv.setSenderName(sendername);
		pv.setAboutpost(aboutpost);
		pv.setDate(date);
		
		pd.insertpost(pv);
		response.sendRedirect("PathChoice.jsp");
	}
	protected void deleteblog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		postDao pd = new postDao();
		postVo pv = new postVo();
		int sid = Integer.parseInt(request.getParameter("id"));
		
		pv.setSid(sid);
		pd.deleteBlog(pv);	
		response.sendRedirect("PathChoice.jsp");
	}
	protected void editblog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		postDao pd = new postDao();
		postVo pv = new postVo();
		int sid = Integer.parseInt(request.getParameter("id"));
		pv.setSid(sid);
		
		List<?> ls =(List<?>) pd.editPost(pv);
		HttpSession hs = request.getSession();
		hs.setAttribute("list3",ls);
		response.sendRedirect("UpdatePost.jsp");
	}
	protected void updateblog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		postDao pd = new postDao();
		postVo pv = new postVo();
		
		int sid = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String subtitle = request.getParameter("subtitle");
		String sendername = request.getParameter("sendername");
		String aboutpost = request.getParameter("aboutpost");
		java.util.Date date = new java.util.Date();
		
		pv.setSid(sid);
		pv.setTitle(title);
		pv.setSubtitle(subtitle);
		pv.setSenderName(sendername);
		pv.setAboutpost(aboutpost);
		pv.setDate(date);
		
		pd.updatepost(pv);
		response.sendRedirect("PathChoice.jsp");
		
	}
}
