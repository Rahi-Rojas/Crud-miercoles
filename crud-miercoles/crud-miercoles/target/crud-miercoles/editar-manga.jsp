<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Editar-Manga</title>
</head>
<body>
    <%
        com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto.MangasDTO manga = (com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto.MangasDTO) request.getAttribute("manga");
    %>
    <form action="manga?action=editar" method="post">
        <input type="hidden" value="<%= manga.getId()%>">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" value="<%= manga.getNombre() %>"><br>
        <label for="cantidad">Cantidad:</label>
        <input type="number" id="cantidad" name="cantidad" value="<%= manga.getCantidad() %>"><br>
        <label for="capitulos">Capítulos:</label>
        <input type="number" id="capitulos" name="capitulos" value="<%= manga.getCapitulos() %>"><br>
        <input type="submit" value="Actualizar">
    </form>
</body>
</html>
