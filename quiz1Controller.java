package com.goodee.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodee.service.QuizService;

/**
 * Servlet implementation class quiz1Controller
 */
@WebServlet("/quiz1Controller")
public class quiz1Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quiz1Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String url = "/quiz1/fault.jsp";
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String radio = request.getParameter("radio");
		
		if(radio == null) {
			radio = "N";
		}
		if(QuizService.isLogin(id, pw)) {
			url = "/quiz1/yes.jsp";
			
			HttpSession session = request.getSession();
			session.setAttribute("userId", id);
			session.getAttribute("userId");
			
			if(radio.equals("y")) {
				Cookie cookie = new Cookie("userId", id);
				response.addCookie(cookie);
			} else {
				Cookie cookie = new Cookie("userId", id);
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}

		RequestDispatcher rdp = request.getRequestDispatcher(url);
		rdp.forward(request, response);
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
