package kpu.free.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class freeLogoutServlet
 */
@WebServlet("/freeLogoutServlet")
public class freeLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public freeLogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		HttpSession session2 = request.getSession();
        RequestDispatcher dispatcher = null;
        if(session.getAttribute("login_session") != null){
            session.invalidate();
            //session2.getAttribute("movielist");
            //session2.invalidate();
            request.setAttribute("login_failure_message", "로그아웃 되었습니다.");
             
        }
        else{
            request.setAttribute("login_failure_message", "로그아웃 실패\n로그인을 해주세요");
             
        }
        dispatcher = request.getRequestDispatcher("free_loginmain.jsp");      
        dispatcher.forward(request, response);
    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
