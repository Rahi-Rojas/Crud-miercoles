package com.rojas.api.servlet.tareamiercoles.crudmiercoles.controllers;

import com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto.MangasDTO;
import com.rojas.api.servlet.tareamiercoles.crudmiercoles.service.MangaService;
import com.rojas.api.servlet.tareamiercoles.crudmiercoles.service.MangaServiceImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/manga")
public class MangasServlet extends HttpServlet {
    MangaService service = new MangaServiceImp();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action != null) {
            switch (action) {
                case "listar":
                    listar(req, resp);
                    break;
                case "eliminar":
                    eliminar(req, resp);
                    break;
                case "editar":
                    mostrarFormulario(req, resp);
                    break;
                default:
                    resp.sendRedirect(req.getContextPath() + "/manga");
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action != null) {
            switch (action) {
                case "agregar":
                    agregar(req, resp);
                    break;
                case "editar":
                    editar(req, resp);
                    break;
                default:
                    resp.sendRedirect(req.getContextPath() + "/manga");
                    break;
            }
        }
    }

    private void editar(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        String nombre = req.getParameter("nombre");
        int cantidad = Integer.parseInt(req.getParameter("cantidad"));
        int capitulos = Integer.parseInt(req.getParameter("capitulos"));
        //todo: Crear el objeto de tipo manga
        MangasDTO manga1 = new MangasDTO(id, nombre, cantidad, capitulos);
        service.updateManga(manga1);
        resp.sendRedirect("manga?action=listar");
    }

    private void agregar(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String nombre = req.getParameter("nombre");
        int cantidad = Integer.parseInt(req.getParameter("cantidad"));
        int capitulos = Integer.parseInt(req.getParameter("capitulos"));
        MangasDTO manga = new MangasDTO(0, nombre, cantidad, capitulos);
        service.addManga(manga);
        resp.sendRedirect("manga?action=listar");
    }

    private void listar(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        List<MangasDTO> mangas = service.getMangas();
        req.setAttribute("mangas", mangas);
        req.getRequestDispatcher("listar-manga.jsp").forward(req, resp);
    }

    private void mostrarFormulario(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        MangasDTO manga = service.getMangaById(id);
        req.setAttribute("manga", manga);
        req.getRequestDispatcher("editar-manga.jsp").forward(req, resp);
    }

    private void eliminar(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        service.deleteManga(id);
        resp.sendRedirect("manga?action=listar");
    }
}
