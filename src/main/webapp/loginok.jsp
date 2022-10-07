<%@page import="org.apache.catalina.filters.SetCharacterEncodingFilter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("tiger") && pw.equals("12345")) {
			Cookie cookie = new Cookie("memberId", id);
			response.addCookie(cookie);     // 고객 pc로 쿠키 전송
			cookie.setMaxAge(60);       //쿠키 저장기간 설정 필요(초 단위)
			out.println(id + "님 로그인 성공!");
		} else {
			out.println("로그인 실패!");
		}
	
	%>
	
	<a href="cookieCheck.jsp">쿠키확인</a>
	
	
	
</body>
</html>