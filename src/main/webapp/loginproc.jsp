<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex0405.MemberDBManager"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	out.println("username =" + username);
	out.println("password =" + password);

	MemberDBManager mdm = new MemberDBManager();
	boolean ret = mdm.loginchk(username, password);
	if (ret) {
		session.setAttribute("username", username);
		out.println("<script>");
		out.println("alert('로그인 성공');");
		out.println("location.href = 'index.jsp';");
		out.println("</script>");
	}else {
		out.println("<script>");
		out.println("alert('아이디와 비밀번호를 확인하세요');");
		out.println("location.href = 'index.jsp';");
		out.println("</script>");
	}
%>