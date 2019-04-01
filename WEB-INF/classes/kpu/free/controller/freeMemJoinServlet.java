package kpu.free.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kpu.free.domain.freeVO;
import kpu.free.persistence.freeDAO;

/**
 * Servlet implementation class freeMemJoinServlet
 */
@WebServlet("/freeMemJoinServlet")
public class freeMemJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public freeMemJoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
			freeDAO freeDAO=new freeDAO();
			List<freeVO> freevoList =freeDAO.getmemList();
			request.setAttribute("memlist", freevoList);
			RequestDispatcher view =request.getRequestDispatcher("free_MemberList.jsp");
			view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		freeVO freeVO= new freeVO();
		freeDAO freeDAO = new freeDAO();
		
		freeVO.setUsername(request.getParameter("username"));
		freeVO.setTel(request.getParameter("tel"));
		freeVO.setEmail(request.getParameter("email"));
		freeVO.setSex(request.getParameter("sex"));
		freeVO.setHome(request.getParameter("home"));
		freeVO.setId(request.getParameter("id"));
		freeVO.setPasswd(request.getParameter("passwd"));
		
		String temp ="JOIN NOT OK";
		if(freeDAO.insertMember(freeVO)) temp ="JOIN OK";
		
		request.setAttribute("result", temp);
		request.setAttribute("member", freeVO);
		
		RequestDispatcher view = request.getRequestDispatcher("free_joinsuccess.jsp");
		view.forward(request, response);
		
	}

}
