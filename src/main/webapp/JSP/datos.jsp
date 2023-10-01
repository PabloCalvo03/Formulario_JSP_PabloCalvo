<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Datos del usuario</title>
</head>
<body>
	<div class="container">
		<h1>Datos del usuario:</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Nombre y apellidos:</th>
					<th>Correo:</th>
					<th>Genero:</th>
					<th>Conocimientos:</th>
					<th>Idioma:</th>
					<th>Comentario adicional</th>
				</tr>
				<tr>
					<td><%= request.getParameter("Nombre") + " " + request.getParameter("apellidos")%></td>
					<td><%= request.getParameter("mail") %></td>
					<td><%= request.getParameter("genero") %></td>
					<td>
					<%= request.getParameter("java") != null ? request.getParameter("java") : ""%>
					<%= request.getParameter("c") != null ? request.getParameter("c") : ""%>
					<%= request.getParameter("basic") != null ? request.getParameter("basic") : ""%>
					<%= request.getParameter("html") != null ? request.getParameter("html") : ""%>
					</td>
					<td>
						<c:forEach var="idioma" items="${paramValues.idiomas}">
    						${idioma}
						</c:forEach>
					</td>
					<td><%= request.getParameter("comentario") %></td>
				</tr>
			</thead>
		</table>
	</div>
</body>
</html>