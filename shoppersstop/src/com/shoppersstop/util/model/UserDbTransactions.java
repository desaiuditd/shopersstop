package com.shoppersstop.util.model;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDbTransactions {

    public static boolean checkAdminTable(Connection dbconnection, String username, String password) throws SQLException {

	if(password==null) return false;
	Boolean ret = false;
	String dbpassword="";
	PreparedStatement ps=null;
	ResultSet rs=null;

	ps = dbconnection.prepareStatement(Constants.sqlCommands.retrivePasswordAdmin);
	ps.setString(1, username);
	rs = ps.executeQuery();

	if(rs.next())
	    dbpassword = rs.getString("password");

	rs.close();
	ps.close();

	System.out.println(dbpassword);
	if(verifyPasswords(password, dbpassword)) {
	    ret = true;
	}
	return ret;
    }

    public static boolean checkAdminVerification(Connection dbconnection, String username) throws SQLException {

	boolean ret = false;
	PreparedStatement statement = dbconnection.prepareStatement(Constants.sqlCommands.CheckAdminVerification);
	statement.setString(1, username);
	ResultSet rs = statement.executeQuery();
	if(rs.next())
	    if(rs.getString("verified").equals("Y"))
		ret = true;

	rs.close();
	statement.close();
	return ret;
    }

    public static boolean checkClientTable(Connection dbconnection, String username, String password) throws SQLException {

	if(password==null) return false;
	Boolean ret = false;
	String dbpassword="";
	PreparedStatement ps=null;
	ResultSet rs=null;

	ps = dbconnection.prepareStatement(Constants.sqlCommands.retrivePasswordClient);
	ps.setString(1,username);
	rs = ps.executeQuery();

	if(rs.next())
	    dbpassword = rs.getString("password");

	rs.close();
	ps.close();

	if(verifyPasswords(password, dbpassword))
	    ret = true;
	return ret;
    }

    public static boolean checkClientVerification(Connection dbconnection, String username) {
	return false;
    }

    private static Boolean verifyPasswords(String Password1,String Password2) {
	String Temppassword;
	Temppassword = Hashify(Password1);

	System.out.println("Verify : Actual Pwd in DB : "+Temppassword);
	System.out.println(Temppassword.length());
	if(Temppassword.equals(Password2)){
	    return true;
	}else {
	    return false;
	}
    }

    protected static String Hashify(String Plaintext){
	MessageDigest md;
	String Hash=null;
	try {
	    md = MessageDigest.getInstance("SHA-512");
	    Hash = new String(md.digest(Plaintext.getBytes()),Charset.forName("UTF-8"));
	    Hash = URLEncoder.encode(Hash, "UTF-8");
	    Hash = Hash.replace("%", "");
	} catch(NoSuchAlgorithmException e) {
	    e.printStackTrace();
	} catch (UnsupportedEncodingException e) {
	    e.printStackTrace();
	}
	return Hash;
    }
}
