<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ex0405.MemberDBManager"%>
<%
	String u = request.getParameter("username");
	String p = request.getParameter("password");
	
	MemberDBManager mdm = new MemberDBManager();
	mdm.doInsert(u, p);
	
	response.sendRedirect("select.jsp");
	
	
	
%>