package com.mpl.proyecto.controller;

import java.util.List;

import com.mpl.proyecto.entity.Producto;
import com.mpl.proyecto.repository.RepoProducto;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/productosrest/filtrados") // Ruta base para filtros
public class ProductoControllerRest {

    private final RepoProducto repository;

    public ProductoControllerRest(RepoProducto repository) {
        this.repository = repository;
    }

    /**
     * Endpoint para filtrar productos por precio mínimo.
     * GET http://localhost:8080/productosrest/filtrados/por-precio?minPrecio=10
     */
    @GetMapping("/por-precio")
    public List<Producto> getProductosPorPrecioMinimo(@RequestParam Double minPrecio) {
        return repository.findByPrecioGreaterThan(minPrecio);
    }

    /**
     * Endpoint para filtrar productos por un prefijo del nombre.
     * GET http://localhost:8080/productosrest/filtrados/por-nombre?prefix=P
     */
    @GetMapping("/por-nombre")
    public List<Producto> getProductosPorNombrePrefijo(@RequestParam String prefix) {
        return repository.findByNombreStartingWithIgnoreCase(prefix);
    }

    /**
     * Endpoint combinado para filtrar productos por precio y prefijo del nombre.
     * GET http://localhost:8080/productosrest/filtrados/por-nombre-y-precio?prefix=P&minPrecio=50
     */
    @GetMapping("/por-nombre-y-precio")
    public List<Producto> getProductosPorNombreYPrefijo(
        @RequestParam String nombre,
        @RequestParam Double minPrecio
    ) {
        return repository.findByNombreStartingWithIgnoreCaseAndPrecioGreaterThan(nombre, minPrecio);
    }
}
