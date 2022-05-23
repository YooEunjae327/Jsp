<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
<h1 class = "title">페이지</h1>
	<ul class="navLsit">
		<li><a href="index.jsp">index</a></li>
		<li><a href="insert.jsp">insert</a></li>
		<li><a href="select.jsp">select</a></li>
	</ul>
	<div>
		<%
		String username = (String) session.getAttribute("username");
		if (username == null) {
		%>
		<form class="loginForm" action="loginproc.jsp">
			<table>
				<tr>
					<td>id</td>
					<td><input type="text" name="username" /></td>
					<td rowspan="2"><button type="submit" value="로그인">로그인</button></td>
				</tr>
				<tr>
					<td>pw</td>
					<td><input type="password" name="password" /></td>
				</tr>
			</table>
		</form>
		<%
			} else {
			out.println(username + "님");
		%>
			<a href="logout.jsp">로그아웃</a> <br>

		<%
			}
		%>
	</div>
</div>