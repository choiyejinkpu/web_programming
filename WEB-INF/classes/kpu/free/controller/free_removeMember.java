package kpu.free.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kpu.free.domain.freeVO;
import kpu.free.service.freeMemberManageService;

/**
 * Servlet implementation class free_removeMember
 */
@WebServlet("/free_removeMember")
public class free_removeMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public free_removeMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		
		freeVO member = (freeVO)session.getAttribute("login_session");
		 RequestDispatcher dispatcher = null;
	      String url = null;
	        try {
	            if(member != null){
	                freeMemberManageService manageService = freeMemberManageService.getInstance();
	                 
	                manageService.removeMemberById(member.getId());
	                session.invalidate();
	 
	                
	                url = "free_loginmain.jsp";
	                request.setAttribute("login_failure_message", "탈퇴되었습니다.");
	               
	            } else {
	            	url = "free_loginmain.jsp";
	                request.setAttribute("login_failure_message", "탈퇴 실패 : 로그인을 먼저 하세요");
	            }          
	        } catch (SQLException e) {
	            e.getStackTrace();
	            request.setAttribute("error", e.getMessage());
	             
	        } finally{
	        	dispatcher = request.getRequestDispatcher(url);
	        	dispatcher.forward(request, response);

	        	 
	        }
	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
