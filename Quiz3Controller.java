package com.goodee.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Quiz3Controller
 */
@WebServlet("/Quiz3Controller")
public class Quiz3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Quiz3Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.printf("ServletControler 페이지 입니다.\n"
		//		+ "이것은 리다이렉트로 보내는 페이지입니다.\n"
		//		+ "전송하는 번호 : 3\n");
		//response.sendRedirect("./quiz1/quiz3_result.jsp");
		String num = request.getParameter("num");
		System.out.printf("ServletControler 페이지 입니다.\n"
						+ "이것은 포워드로 보내는 페이지입니다.\n"
						+ "전송하는 번호 : "+ num +"\n");
		RequestDispatcher rdp = request.getRequestDispatcher("./quiz1/quiz3_result.jsp");
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
