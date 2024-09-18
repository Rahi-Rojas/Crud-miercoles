<%--
  Created by IntelliJ IDEA.
  User: RahI
  Date: 17/09/2024
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Agregar-Manga</title>
</head>
<body>
    <h2>Agregar un nuevo manga</h2>
    <form action="manga?action=agregar" method="post">
        <label for="nombre">NOMBRE: </label>
        <input type="text" id="nombre" name="nombre"><br><br>
        <label for="cantidad">CANTIDAD: </label>
        <input type="number" id="cantidad" name="cantidad"><br><br>
        <label for="capitulos">CAPITULOS: </label>
        <input type="number" id="capitulos" name="capitulos"><br><br>
        <input type="submit" value="Agregar">
    </form>

</body>
</html>
