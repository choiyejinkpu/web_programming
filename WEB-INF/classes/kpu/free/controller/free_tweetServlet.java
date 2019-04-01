package kpu.free.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kpu.free.domain.freeVO;

/**
 * Servlet implementation class free_twiteerlist
 */
@WebServlet("/free_tweetServlet")
public class free_tweetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public free_tweetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		freeVO member =new freeVO();
		HttpSession session = request.getSession();
	
		
		if(member.getUsername() !=null) {
			session.setAttribute("user", member.getUsername());
		}
		
		

		String msg=request.getParameter("msg");
		ArrayList<String> msgs=(ArrayList<String>)request.getServletContext().getAttribute("msgs");
		
		if(msgs ==null){
		
			msgs=new ArrayList<String>();
			request.getServletContext().setAttribute("msgs", msgs);
				
			
		}
		
		msgs.add(msg+"/"+new java.util.Date());
			
		request.getServletContext().setAttribute("msgslist", msgs);
		

		

		RequestDispatcher view = request.getRequestDispatcher("free_twitterlist.jsp");
		view.forward(request, response);
		

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
