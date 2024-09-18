<%@ page import="java.util.List" %>
<%@ page import="com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto.MangasDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Listar-Manga</title>
</head>
<body>
    <%List<MangasDTO> mangas = (List<MangasDTO>) request.getAttribute("mangas");
    if (mangas.isEmpty()) {%>
    <h2>No hay mangas registrados.</h2>
    <%}else {%>
    <table cellpadding="2" cellspacing="2" border="2" align="center">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Cantidad</th>
                <th>Capítulos</th>
            </tr>
        </thead>
        <tbody>
        <%for (MangasDTO manga : mangas) {%>
            <tr>
                <td><%= manga.getId() %></td>
                <td><%= manga.getNombre() %></td>
                <td><%= manga.getCantidad() %></td>
                <td><%= manga.getCapitulos() %></td>
            </tr>
        <%}%>
        </tbody>
    </table>
    <%}
    %>
</body>
</html>
