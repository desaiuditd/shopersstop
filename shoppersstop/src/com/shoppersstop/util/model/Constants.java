package com.shoppersstop.util.model;

public class Constants {

    public static final class DB {

	public static final String driver = "com.mysql.jdbc.Driver";
	public static final String dburl = "jdbc:mysql://localhost:3306/shoppersstop";
	public static final String username = "root";
	public static final String password = "root";
	public static boolean hasPassword = true;
    }

    public static final class sqlCommands{

	public static final String retrivePasswordAdmin = "SELECT password FROM admin WHERE username = ?";
	public static final String CheckAdminVerification = "SELECT verified FROM admin WHERE username = ?";
	public static final String retrivePasswordClient = "SELECT password FROM customer WHERE username = ?";
    }

    public static final class email{

	public static final String SMTP_HOST_NAME = "smtp.gmail.com";
	public static final String EmailUsername = "cadet.daiict@gmail.com";
	public static final String EmailPassword = "cadet.daiict";
	public static final Integer SMTP_PORT = 465;
	public static final String SMTP_SSL = "true";
	public static final String SMTP_AUTH = "true";
	public static final String EmailMessage = "Please Click following link to verify your email address http://localhost:8080/cadet/verifyEmail?";
	public static final String EmailSubject = "[EMAIL Verification] CADET";
	public static final String EmailRegex = "^(.+)@(.+)$";
	public static final String ForgotEmailMessage = "Please Click following link to verify your email address http://localhost:8080/cadet/ForgotPassword?";
    }
}
