<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="estilos.jspf" %>
<title>Iniciar sesión</title>
</head>
<body>
	<div class="centro tarjeta">
		<h1>Iniciar sesión</h1>

		<% if (request.getParameter("error") != null) { %>
			<div class="alerta error">Usuario o contraseña incorrectos.</div>
		<% } %>
		<% if (request.getParameter("logout") != null) { %>
			<div class="alerta ok">Cerraste sesión correctamente.</div>
		<% } %>

		<form action="${pageContext.request.contextPath}/login" method="post">
			<label for="username">Usuario</label>
			<input type="text" id="username" name="username" autofocus required />

			<label for="password">Contraseña</label>
			<input type="password" id="password" name="password" required />

			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button type="submit" class="btn completo">Entrar</button>
		</form>

		<p class="pista">Usuarios de prueba: admin, creator, editor, user, juan (clave = usuario + "123").</p>
	</div>
</body>
</html>
