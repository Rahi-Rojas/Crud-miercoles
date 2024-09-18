package com.rojas.api.servlet.tareamiercoles.crudmiercoles.dto;
//todo: DTO nuevo models
public class MangasDTO {
    private int id;
    private String nombre;
    private int cantidad;
    private int capitulos;

    public MangasDTO(int id, String nombre, int cantidad, int capitulos) {
        this.id = id;
        this.nombre = nombre;
        this.cantidad = cantidad;
        this.capitulos = capitulos;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getCapitulos() {
        return capitulos;
    }

    public void setCapitulos(int capitulos) {
        this.capitulos = capitulos;
    }

    @Override
    public String toString() {
        return "MangasDTO{" +
                "id=" + id +
                ", nombre='" + nombre + '\'' +
                ", cantidad=" + cantidad +
                ", capitulos=" + capitulos +
                '}';
    }

}
