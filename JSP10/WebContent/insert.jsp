<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bbsDTO" class="bbs.BBSDTO">
	<jsp:setProperty name="bbsDTO" property="*"  />
</jsp:useBean>
<jsp:useBean id="bbsDAO" class="bbs.BBSDAO"></jsp:useBean>

<%
	bbsDAO.insert(bbsDTO);
%>
게시물 등록 완료!













</body>
</html>