<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="hi...JSTL..." />
<c:set var="str1" value="JSPStudy" /><br>
<c:out value="${str1}" default="기본출력값" /><br>
<fmt:formatNumber value="123456789" type="number"></fmt:formatNumber>
<br>
<fmt:formatNumber value="123456789" pattern="0.000" ></fmt:formatNumber>
</body>
</html>














