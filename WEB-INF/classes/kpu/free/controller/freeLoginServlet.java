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
 * Servlet implementation class freeLoginServlet
 */
@WebServlet("/freeLoginServlet")
public class freeLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public freeLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String id=request.getParameter("id");
		String passwd= request.getParameter("passwd");
		
		freeMemberManageService manageService=freeMemberManageService.getInstance();
		HttpSession session = request.getSession();
		String url = null;
		try {
            freeVO member = manageService.getMemberById(id);
            if(member != null){
                if(member.getPasswd().equals(passwd)){
                    url = "login_success.jsp";
                    session.setAttribute("login_session", member);
                }
                else{
                    request.setAttribute("login_failure_message", "패스워드가 일치하지 않습니다.");
                    url = "free_loginmain.jsp";
                }
            }
            else{
                url = "free_loginmain.jsp";
                request.setAttribute("login_failure_message", "ID를 확인해주세요.");
            }
             
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", e.getMessage());
        } finally{ 
        	RequestDispatcher view = request.getRequestDispatcher(url);
    		view.forward(request, response);
             
        }
    
		
		
	}

}
