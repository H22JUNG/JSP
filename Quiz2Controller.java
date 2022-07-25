package com.goodee.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Quiz2Controller
 */
@WebServlet("/Quiz2Controller")
public class Quiz2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Quiz2Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String age = request.getParameter("age");
		String work = request.getParameter("work");
		String job = request.getParameter("job");
		String[] inter = request.getParameterValues("inter");
		
		System.out.println("이름 : " + name);
		System.out.println("이메일 : " + email);
		System.out.println("패스워드 : " + pw);
		System.out.println("나이 : " + age);
		System.out.println("주요업무 : " + work);
		System.out.println("주요직업 : " + job);
		
		for(int i=0; i<inter.length; i++) {
			System.out.println("관심분야 : " + inter[i]);
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
