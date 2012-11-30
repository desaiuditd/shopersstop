package com.shoppersstop.util.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoppersstop.util.model.DatabaseConnection;
import com.shoppersstop.util.model.UserDbTransactions;

/**
 * Servlet implementation class isUsernameAvailable
 */
@WebServlet("/isUsernameAvailable")
public class isUsernameAvailable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public isUsernameAvailable() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    response.sendError(404, "No Get Request Allowed for this Page");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    DatabaseConnection dbconn = DatabaseConnection.getInstance();
	    Connection dbconnection = dbconn.getDbConnection();

	    String username = request.getParameter("username");
	    try {
		if(UserDbTransactions.isUserAvailable(dbconnection,username))
		    response.getWriter().println("success");
		else response.getWriter().println("failure");
	    } catch (SQLException e) {
		e.printStackTrace();
		response.getWriter().println("DatabaseError");
	    }
	}

}
