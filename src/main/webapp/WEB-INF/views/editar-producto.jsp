<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="estilos.jspf" %>
<title>Editar Producto</title>
</head>
<body>
	<div class="centro tarjeta">
		<h1>Editar Producto</h1>
		<form action="${pageContext.request.contextPath}/update/${producto.id}" method="post">
			<label for="nombre">Nombre</label>
			<input type="text" id="nombre" name="nombre" value="${producto.nombre}" required />

			<label for="precio">Precio</label>
			<input type="number" id="precio" name="precio" step="0.01" value="${producto.precio}" required />

			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button type="submit" class="btn completo">Actualizar</button>
		</form>
		<p><a href="${pageContext.request.contextPath}/">Volver</a></p>
	</div>
</body>
</html>
