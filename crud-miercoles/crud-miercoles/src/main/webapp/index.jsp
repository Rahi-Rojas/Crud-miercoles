<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manga CRUD</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Archivo CSS personalizado -->
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="container mt-5">
<div class="text-center">
    <h1>Gestión de Mangas</h1>
    <div class="btn-group mt-4">
        <a href="listar-manga.jsp" class="btn btn-primary">Listado de Mangas por JSP</a>
        <a href="manga?action=listar" class="btn btn-secondary">Listado de Mangas por Servlet</a>
        <a href="agregar-manga.jsp" class="btn btn-success">Crear Manga</a>
    </div>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
