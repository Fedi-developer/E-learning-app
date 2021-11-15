<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String str = (String) request.getAttribute("nomprenom");
String[] strfinal = str.split(",");
request.setAttribute("nom",strfinal[0]);
request.setAttribute("prenom",strfinal[1]);
%>

</body>
</html>