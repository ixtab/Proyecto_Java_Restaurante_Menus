<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acceso denegadoe</title>
</head>
<body>

<%
	String email = request.getParameter("email");
	if (email==null) {
		HttpSession sesion = request.getSession(true);
		email = (String) sesion.getAttribute("email");
	}
%>
<h1>Acceso denegado para <%= email%></h1>

</body>
</html>
