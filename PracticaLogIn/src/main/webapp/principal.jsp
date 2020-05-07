<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	HttpSession seccionPrincipal = (HttpSession) request.getSession();
	String sectionVarUsser = (String) seccionPrincipal.getAttribute("usuario");
	if(sectionVarUsser == null){
		response.sendRedirect("index.jsp");
	}
%>
<body>
	<h2>Bienvenido.</h2>
	<form action="servletUser" method="post">
		<input type="submit" value="Cerrar Sesion" name="btnClose">
	</form>
</body>
</html>