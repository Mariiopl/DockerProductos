package com.mpl.proyecto.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mpl.proyecto.entity.Producto;

public interface RepoProducto extends JpaRepository<Producto, Long> {

    /**
     * Filtrar productos con precio mayor al especificado.
     */
    List<Producto> findByPrecioGreaterThan(Double precio);

    /**
     * Filtrar productos cuyo nombre empiece con un prefijo específico.
     */
    List<Producto> findByNombreStartingWithIgnoreCase(String prefix);

    /**
     * Filtrar productos cuyo nombre empiece con un prefijo y cuyo precio sea mayor al especificado.
     */
    List<Producto> findByNombreStartingWithIgnoreCaseAndPrecioGreaterThan(String prefix, Double precio);
}
