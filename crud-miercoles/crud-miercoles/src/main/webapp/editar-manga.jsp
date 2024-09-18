<%@ page import="com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto.MangasDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Manga</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Archivo CSS personalizado -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css">
</head>
<body class="container mt-5">
<div class="text-center">
    <h2>Editar Manga</h2>
</div>
<%
    MangasDTO manga = (MangasDTO) request.getAttribute("manga");
%>
<form action="manga?action=editar" method="post" class="mt-4">
    <input type="hidden" name="id" value="<%= manga.getId() %>">

    <div class="form-group">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" class="form-control" value="<%= manga.getNombre() %>" required>
    </div>

    <div class="form-group">
        <label for="cantidad">Cantidad:</label>
        <input type="number" id="cantidad" name="cantidad" class="form-control" value="<%= manga.getCantidad() %>" required>
    </div>

    <div class="form-group">
        <label for="capitulos">Capítulos:</label>
        <input type="number" id="capitulos" name="capitulos" class="form-control" value="<%= manga.getCapitulos() %>" required>
    </div>

    <div class="text-center">
        <input type="submit" value="Actualizar" class="btn btn-primary">
    </div>
</form>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
