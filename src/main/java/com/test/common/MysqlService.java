package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class MysqlService {
	
	private static MysqlService mysqlService = null;
	
	// db 접속용
	private static final String url = "jdbc:mysql://localhost:3307/test_240627"; // 포트 번호, db이름
	private static final String ID = "root";
	private static final String PASSWORD = "root";
	
	
	// db 접속 객체용
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	
	// SingleTon 패턴 : MysqlService라는 객체가 단 하나만 생성되도록 하는 디자인 패턴
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	
	// DB connect
	public void connect() {
		
		try {
			// 1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			// 2. DB 연결(connection) 실제 연결
			conn = DriverManager.getConnection(url, ID, PASSWORD);
			
			// 3. statement : DB와 연결해서 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	// DB disconnect
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	// R
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	
	// CUD
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
	
}
