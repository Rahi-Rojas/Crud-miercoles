package com.rojas.api.servlet.tareamiercoles.crudmiercoles.dao;

import com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto.MangasDTO;
import com.rojas.api.servlet.tareamiercoles.crudmiercoles.utils.MysqlConexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MangasDAO {

    private static final String SQL_SELECT = "SELECT * FROM tb_mangas";
    private static final String SQL_INSERT = "INSERT INTO tb_mangas (nombre, cantidad, capitulos) VALUES (?,?,?)";
    private static final String SQL_DELETE = "DELETE FROM tb_mangas where id";
    private static final String SQL_UPDATE = "UPDATE tb_mangas SET nombre=?, cantidad=?, capitulos=? WHERE id=?";

    // Metodos para interactuar con la base de datos.
    public void agregarManga (MangasDTO manga) {
        try(Connection cn = MysqlConexion.obtenerConexion();
            PreparedStatement ps = cn.prepareStatement(SQL_INSERT)) {

            ps.setString(1, manga.getNombre());
            ps.setInt(2, manga.getCantidad());
            ps.setInt(3, manga.getCapitulos());
            ps.executeUpdate();

            try(ResultSet generatedKeys = ps.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                    manga.setId(generatedKeys.getInt(1));
                }
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<MangasDTO> listarMangas() {
        List<MangasDTO> lista = new ArrayList<MangasDTO>();
        try(Connection cn = MysqlConexion.obtenerConexion();
        PreparedStatement ps = cn.prepareStatement(SQL_SELECT);
        ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                int cantidad = rs.getInt("cantidad");
                int capitulos = rs.getInt("capitulos");

                MangasDTO manga = new MangasDTO(id, nombre, cantidad, capitulos);
                lista.add(manga);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }

    public void eliminarManga(int id) {
        try(Connection cn = MysqlConexion.obtenerConexion();
            PreparedStatement ps = cn.prepareStatement(SQL_DELETE)) {

            ps.setInt(1, id);
            ps.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void actualizarManga(MangasDTO manga) {
        try(Connection cn = MysqlConexion.obtenerConexion();
        PreparedStatement ps = cn.prepareStatement(SQL_UPDATE))
        {
            ps.setString(1, manga.getNombre());
            ps.setInt(2, manga.getCantidad());
            ps.setInt(3, manga.getCapitulos());
            ps.setInt(4, manga.getId());
            ps.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public MangasDTO buscarMangaxId(int idVehi) {
        for (MangasDTO manga : listarMangas()) {
            if (manga.getId() == idVehi) {
                return manga;
            }
        }
        return null; // No se encontro el manga.
    }

}
