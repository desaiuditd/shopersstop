package com.shoppersstop.util.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {

    Connection connection;

    private DatabaseConnection() {

	try {
	    Class.forName(Constants.DB.driver);
	    if(Constants.DB.hasPassword) {
		connection = DriverManager.getConnection(Constants.DB.dburl, Constants.DB.username, Constants.DB.password);
	    } else {
		connection = DriverManager.getConnection(Constants.DB.dburl);
	    }
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }

    private static class SingletonHolder {
	public static final DatabaseConnection INSTANCE = new DatabaseConnection();
    }
	
    public static DatabaseConnection getInstance() {
	return SingletonHolder.INSTANCE;
    }

    public Connection getDbConnection() {
	return connection;
    }
}
