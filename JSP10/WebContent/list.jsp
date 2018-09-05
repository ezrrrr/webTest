<%@page import="bbs.BBSDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:useBean id="bbsDAO" class="bbs.BBSDAO"></jsp:useBean>
<table border="1">
	<tr>
		<td class="t3">no</td>
		<td class="t3">회원코드</td>
		<td class="t3">아이디</td>
		<td class="t3">비번</td>
		<td class="t3">이메일</td>
		<td class="t3">관리자여부</td>
		<td class="t3">가입일</td>
	</tr>
<%
ArrayList list = bbsDAO.list();

for(int i = 0; i < list.size(); i++){
	BBSDTO bbsDTO2 = (BBSDTO)list.get(i);
%>
	<tr>
		<td class="t4"><%= bbsDTO2.getMNo() %></td>
		<td class="t4"><%= bbsDTO2.getMCode() %></td>
		<td class="t4"><a href="selectID.jsp?id=<%= bbsDTO2.getMNo() %>"><%= bbsDTO2.getMId() %></a></td>
		<td class="t4"><%= bbsDTO2.getMPw().substring(0, 2)+"*****"  %></td>
		<td class="t4"><%= bbsDTO2.getMEmail() %></td>
		<td class="t4"><%= bbsDTO2.getMAdmin() %></td>
		<td class="t4"><%= bbsDTO2.getMDate() %></td>
		<!-- <td class="t4">
		<a href="selectID.jsp?id=<%= bbsDTO2.getMNo() %>">
		<%= bbsDTO2.getMId() %>
		</a>
		</td> -->
		
	</tr>
<%} %>	
</table>











</body>
</html>