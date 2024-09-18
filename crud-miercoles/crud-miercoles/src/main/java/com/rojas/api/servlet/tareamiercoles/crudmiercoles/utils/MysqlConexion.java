package com.rojas.api.servlet.tareamiercoles.crudmiercoles.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConexion {

    private static final String MYSQL_URL = "jdbc:mysql://localhost:3306/db_mangas";
    private static final String MYSQL_USER = "root";
    private static final String MYSQL_PASSWORD = "mysql";

    public static Connection obtenerConexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(MYSQL_URL, MYSQL_USER, MYSQL_PASSWORD);
        }catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

}
