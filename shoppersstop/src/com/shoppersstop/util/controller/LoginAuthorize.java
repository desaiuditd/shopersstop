package com.shoppersstop.util.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoppersstop.util.model.DatabaseConnection;
import com.shoppersstop.util.model.UserDbTransactions;

/**
 * Servlet implementation class Login
 */
@WebServlet("/LoginAuthorize")
public class LoginAuthorize extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAuthorize() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    response.sendError(404, "No Get Request Allowed for this Page");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    DatabaseConnection dbconn = DatabaseConnection.getInstance();
	    Connection dbconnection = dbconn.getDbConnection();

	    HttpSession session = request.getSession();
	    String username = request.getParameter("txtUsername");
	    String password = request.getParameter("txtPassword");

	    System.out.println(username);
	    System.out.println("Servlet : "+password);
	    System.out.println(password.length());

	    try {
		if(UserDbTransactions.checkAdminTable(dbconnection, username, password)) {
		    if(!UserDbTransactions.checkAdminVerification(dbconnection, username)) {
			response.sendRedirect("EmailVerification");
		    }
		    session.setAttribute("username", username);
		    session.setAttribute("adminAuth", true);
		    session.setAttribute("userAuth", false);
		    session.setAttribute("homeurl","admin/dashboard");

		    response.sendRedirect("admin/dashboard");

		} else if(UserDbTransactions.checkClientTable(dbconnection, username, password)){
		    if(!UserDbTransactions.checkClientVerification(dbconnection, username)){
			response.sendRedirect("EmailVerification");
		    }
		    session.setAttribute("username", username);
		    session.setAttribute("adminAuth", false);
		    session.setAttribute("userAuth", true);
		    session.setAttribute("homeurl","user/dashboard");
		    response.sendRedirect("user/dashboard");
		} else {
		    session.setAttribute("adminAuth", false);
		    session.setAttribute("userAuth", false);
		    request.setAttribute("authCheck", false);
		    request.getRequestDispatcher("Login").forward(request, response);
		}
	    } catch (SQLException e) {
		e.printStackTrace();
		response.sendRedirect("DatabaseError.jsp");
	    }
	}
}
