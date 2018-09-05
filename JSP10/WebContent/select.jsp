<%@page import="bbs.BBSDTO"%>
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
<jsp:useBean id="bbsDTO" class="bbs.BBSDTO">
	<jsp:setProperty name="bbsDTO" property="*"  />
</jsp:useBean>
<jsp:useBean id="bbsDAO" class="bbs.BBSDAO"></jsp:useBean>

<%
	BBSDTO bbsDTO2 = bbsDAO.select(bbsDTO);
%>
<form name="frm" action="update.jsp" method="post">
	<table>
		<tr>
			<td class="t1">아이디</td>
			<td class="t2">
				<input type="text" name="id" value="<%= bbsDTO2.getMId()%>" readonly="readonly"     >
			</td>
		</tr>
		<tr>
			<td class="t1">이름</td>
			<td class="t2">
				<input type="text" name="name" value="<%= bbsDTO2.getMPw()%>">
			</td>
		</tr>
		<tr>
			<td class="t1">제목</td>
			<td class="t2">
				<input type="text" name="title" value="<%= bbsDTO2.getMEmail()%>">
			</td>
		</tr>
		<tr>
			<td class="t1">내용</td>
			<td class="t2">
				<textarea rows="10" cols="37" name="content"> <%= bbsDTO2.getMEmail()%>  </textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2"><a href="list.jsp"> 목록으로 </a></td>
		</tr>
		
		
		
		
		
	
	</table>
</form>












</body>
</html>