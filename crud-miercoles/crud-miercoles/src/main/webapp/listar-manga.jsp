<%@ page import="java.util.List" %>
<%@ page import="com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto.MangasDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Listar Mangas</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Archivo CSS personalizado -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css">
</head>
<body class="container mt-5">
<div class="text-center">
    <h2>Listado de Mangas</h2>
</div>
<% List<MangasDTO> mangas = (List<MangasDTO>) request.getAttribute("mangas");
    if (mangas == null || mangas.isEmpty()) { %>
<div class="alert alert-warning mt-4">
    No hay mangas registrados.
</div>
<% } else { %>
<table class="table table-bordered mt-4">
    <thead class="thead-dark">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Cantidad</th>
        <th>Capítulos</th>
    </tr>
    </thead>
    <tbody>
    <% for (MangasDTO manga : mangas) { %>
    <tr>
        <td><%= manga.getId() %></td>
        <td><%= manga.getNombre() %></td>
        <td><%= manga.getCantidad() %></td>
        <td><%= manga.getCapitulos() %></td>
    </tr>
    <% } %>
    </tbody>
</table>
<% } %>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
