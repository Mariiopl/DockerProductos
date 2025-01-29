package com.mpl.proyecto.controller;

import com.mpl.proyecto.entity.Producto;
import com.mpl.proyecto.repository.RepoProducto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/productos")
public class ProductoController {

    private final RepoProducto repository;

    public ProductoController(RepoProducto repository) {
        this.repository = repository;
    }

    // Método para listar todos los productos
    @GetMapping("/all")
    public String findAll(Model model) {
        List<Producto> productos = this.repository.findAll();
        model.addAttribute("productos", productos);
        return "lista-producto";
    }

    // Método para mostrar el formulario de creación de un nuevo producto
    @GetMapping("/nuevo")
    public String getForm(Model model) {
        model.addAttribute("producto", new Producto());
        return "nuevo-producto";
    }

    // Método para guardar un nuevo producto
    @PostMapping
    public String save(@ModelAttribute("producto") Producto producto) {
        this.repository.save(producto);
        return "redirect:/productos";
    }

    // Método para mostrar los detalles de un producto
    @GetMapping("/ver/{id}")
    public String showProducto(Model model, @PathVariable Long id) {
        Optional<Producto> producto = this.repository.findById(id);
        if (producto.isPresent()) {
            model.addAttribute("producto", producto.get());
            return "ver-producto";
        } else {
            // Redirigir o mostrar un mensaje de error si no se encuentra el producto
            return "redirect:/productos";
        }
    }

    // Método para mostrar el formulario de edición
    @GetMapping("/editar/{id}")
    public String editForm(Model model, @PathVariable Long id) {
        Optional<Producto> producto = this.repository.findById(id);
        if (producto.isPresent()) {
            model.addAttribute("producto", producto.get());
            return "editar-producto"; // Plantilla HTML para editar
        } else {
            return "redirect:/productos"; // Si no se encuentra, redirigir a la lista
        }
    }

    // Método para guardar los cambios al editar un producto
    @PostMapping("/editar/{id}")
    public String updateProducto(@PathVariable Long id, @ModelAttribute("producto") Producto productoActualizado) {
        Optional<Producto> productoOptional = this.repository.findById(id);
        if (productoOptional.isPresent()) {
            Producto productoExistente = productoOptional.get();

            // Actualizar los campos
            productoExistente.setNombre(productoActualizado.getNombre());
            productoExistente.setPrecio(productoActualizado.getPrecio());
            productoExistente.setCantidad(productoActualizado.getCantidad());

            // Guardar los cambios en la base de datos
            this.repository.save(productoExistente);

            return "redirect:/productos";
        } else {
            return "redirect:/productos"; // Si no se encuentra, redirigir a la lista
        }
    }

    // Método para eliminar un producto
    @GetMapping("/eliminar/{id}")
    public String deleteProducto(@PathVariable Long id) {
        if (this.repository.existsById(id)) {
            this.repository.deleteById(id);
        }
        return "redirect:/productos"; // Redirigir a la lista después de eliminar
    }
}
