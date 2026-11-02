<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="estilos.jspf" %>
<title>Lista de Productos</title>
</head>
<body>
	<div class="barra">
		<span>Hola, <strong><sec:authentication property="name" /></strong></span>
		<a href="${pageContext.request.contextPath}/logout">Cerrar sesión</a>
	</div>

	<div class="contenedor tarjeta">
		<h1>Lista de Productos</h1>
		<p>
			Tus roles:
			<sec:authentication property="authorities" var="roles" />
			<c:forEach var="rol" items="${roles}">
				<span class="etiqueta">${rol.authority}</span>
			</c:forEach>
		</p>

		<table>
			<tr>
				<th>ID</th>
				<th>Nombre</th>
				<th>Precio</th>
				<th>Acciones</th>
			</tr>
			<c:forEach var="producto" items="${productos}">
				<tr>
					<td>${producto.id}</td>
					<td>${producto.nombre}</td>
					<td>${producto.precio}</td>
					<td>
						<a class="btn azul pequeno" href="${pageContext.request.contextPath}/edit/${producto.id}">Editar</a>
						<a class="btn pequeno" href="${pageContext.request.contextPath}/delete/${producto.id}">Eliminar</a>
					</td>
				</tr>
			</c:forEach>
			<c:if test="${empty productos}">
				<tr><td colspan="4">No hay productos todavía.</td></tr>
			</c:if>
		</table>

		<a class="btn" href="${pageContext.request.contextPath}/new">Agregar un nuevo producto</a>

		<p class="pista">
			Permisos: Agregar (ADMIN, CREATOR) · Editar (ADMIN, EDITOR) · Eliminar (ADMIN).
			Si tu rol no alcanza verás la página 403.
		</p>
	</div>
</body>
</html>
