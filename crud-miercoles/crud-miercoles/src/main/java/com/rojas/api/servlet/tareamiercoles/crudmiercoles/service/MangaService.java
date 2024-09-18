package com.rojas.api.servlet.tareamiercoles.crudmiercoles.service;

import com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto.MangasDTO;

import java.util.List;

public interface MangaService {
    List<MangasDTO> getMangas();
    MangasDTO getMangaById(int id);
    void addManga(MangasDTO manga);
    void updateManga(MangasDTO manga);
    void deleteManga(int id);
}
