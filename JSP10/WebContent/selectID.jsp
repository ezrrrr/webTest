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
<jsp:useBean id="bbsDAO" class="bbs.BBSDAO"></jsp:useBean>

<%
	String id = request.getParameter("id");
	BBSDTO bbsDTO2 = bbsDAO.selectID(id);
%>
<form name="frm" action="update.jsp" method="post">
	<table>
		<tr>
			<td class="t1">no</td>
			<td class="t2">
				<input type="text" name="id" value="<%= bbsDTO2.getMNo()%>" readonly="readonly"     >
			</td>
		</tr>
		<tr>
			<td class="t1">아이디</td>
			<td class="t2">
				<input type="text" name="id" value="<%= bbsDTO2.getMId()%>" readonly="readonly"     >
			</td>
		</tr>
		<tr>
			<td class="t1">비밀번호</td>
			<td class="t2">
				<input type="text" name="name" value="<%= bbsDTO2.getMPw().substring(0, 2)+"*****"  %>"readonly="readonly" >
			</td>
		</tr>
		<tr>
			<td class="t1">이메일</td>
			<td class="t2">
				<input type="text" name="name" value="<%= bbsDTO2.getMEmail()%>">
			</td>
		</tr>
		<tr>
			<td class="t1">관리자 여부</td>
			<td class="t2">
				<input type="text" name="title" value="<%= bbsDTO2.getMAdmin()%>">
			</td>
		</tr>
		<!-- <tr>
			<td class="t1">내용</td>
			<td class="t2">
				<textarea rows="10" cols="37" name="content"> <%= bbsDTO2.getMNo()%>  </textarea>
			</td>
		</tr> -->
		<tr>
			<td colspan="2"><button type="submit"> ------ 수정할 정보 서버 전송 ------</button>
		</tr>
		
		
		
		
		
	
	</table>
</form>












</body>
</html>