<%--
  Created by IntelliJ IDEA.
  User: RahI
  Date: 17/09/2024
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Agregar Manga</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Archivo CSS personalizado -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css">
</head>
<body class="container mt-5">
<div class="text-center">
    <h2>Agregar un Nuevo Manga</h2>
</div>
<form action="manga?action=agregar" method="post" class="mt-4">

    <div class="form-group">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" class="form-control" required>
    </div>

    <div class="form-group">
        <label for="cantidad">Cantidad:</label>
        <input type="number" id="cantidad" name="cantidad" class="form-control" required>
    </div>

    <div class="form-group">
        <label for="capitulos">Capítulos:</label>
        <input type="number" id="capitulos" name="capitulos" class="form-control" required>
    </div>

    <div class="text-center">
        <input type="submit" value="Agregar" class="btn btn-success">
    </div>
</form>

<!-- Validación JavaScript -->
<script>
    document.querySelector('form').addEventListener('submit', function(e) {
        var nombre = document.getElementById('nombre').value;
        var cantidad = document.getElementById('cantidad').value;
        var capitulos = document.getElementById('capitulos').value;
        if (!nombre || cantidad <= 0 || capitulos <= 0) {
            alert('Por favor, complete todos los campos correctamente.');
            e.preventDefault();
        }
    });
</script>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>