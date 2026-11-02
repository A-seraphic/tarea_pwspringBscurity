<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="estilos.jspf" %>
<title>Cerrar sesión</title>
</head>
<body>
	<div class="centro tarjeta">
		<h1>Cerrar sesión</h1>
		<p>¿Seguro que quieres salir?</p>

		<form action="${pageContext.request.contextPath}/logout" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button type="submit" class="btn">Sí, cerrar sesión</button>
			<a class="btn gris" href="${pageContext.request.contextPath}/">Cancelar</a>
		</form>
	</div>
</body>
</html>
