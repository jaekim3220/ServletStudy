package com.test.lesson03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz01")
public class quiz01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		
		/*
		1. 매물 리스트
		부동산 매물 테이블(real_estate)을 통해서 문제를 풀어보세요.
		servlet에서 DB 연동을 통해 새로운 항목을 insert하고 전체 매물 리스트를 text/plain Type으로 출력하세요.
		* 출력 컬럼은 매물 주소, 면적, 타입 입니다.
		* id 기준 내림차순으로 10개만 출력하세요.
		*/
		
		
		// 한글 폰트(response header 세팅)
		response.setContentType("text/plain");
		
		
		// DB 연동
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // !!!!! 꼭 불러야함. 실질적인 DB 연동
		
		
		// 데이터 입력(insert)
		String insertQuery = "insert into `real_estate`"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)"
				+ "values"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 마지막 id 삭제하기
//		String deleteQuery = "delete from `real_estate`"
//				+ "order by `id` desc limit 1";
//		try {
//			ms.update(deleteQuery);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		// 테이블 조회(select) 및 출력
		PrintWriter out = response.getWriter();
		String selectQueString = "select `address`, `area`, `type`"
				+ "from `real_estate`"
				+ "order by `id`"
				+ "desc limit 10"; // 조회할 테이블
		
		try {
			ResultSet res = ms.select(selectQueString);
			while (res.next()) { // 출력할 내용 설정
				out.print("매물주소 : " + res.getString("address"));
				out.print(", 면적 : " + res.getInt("area"));
				out.print(", 타입 : " + res.getString("type"));
				out.println();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		// DB 연동 해제
		ms.disconnect();
		
		
	}
}
