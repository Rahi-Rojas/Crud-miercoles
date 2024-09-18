package com.rojas.api.servlet.tareamiercoles.crudmiercoles.service;

import com.rojas.api.servlet.tareamiercoles.crudmiercoles.dao.MangasDAO;
import com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto.MangasDTO;

import java.util.List;

public class MangaServiceImp implements MangaService{
    MangasDAO service = new MangasDAO();

    @Override
    public List<MangasDTO> getMangas() {
        return service.listarMangas();
    }

    @Override
    public MangasDTO getMangaById(int id) {
        return service.buscarMangaxId(id);
    }

    @Override
    public void addManga(MangasDTO manga) {
        service.agregarManga(manga);
    }

    @Override
    public void updateManga(MangasDTO manga) {
        service.actualizarManga(manga);
    }

    @Override
    public void deleteManga(int id) {
        service.eliminarManga(id);
    }
}
