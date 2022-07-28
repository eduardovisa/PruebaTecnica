package com.bitware.SpringExamen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bitware.SpringExamen.model.Cliente;
import com.bitware.SpringExamen.service.ClienteService;

@RestController
@RequestMapping (path = "/NutriNET/Cliente")
@CrossOrigin (origins = "*")
public class ClienteController {

	private final ClienteService clienteService;

	@Autowired
	public ClienteController(ClienteService clienteService) {
		super();
		this.clienteService = clienteService;
	} // constructor
	
	@GetMapping
	public List<Cliente> getAllClientes () {
		return clienteService.getProductos();
	} // getAllClientes
	
	@GetMapping (path = "/{id}")
	public Cliente getCliente (@PathVariable("id") Long id) {
		return clienteService.getCliente(id);
	} // getCliente
	
	@PostMapping
	public Cliente addCliente (@RequestBody Cliente cliente) {
		return clienteService.addCliente(cliente);
	} // addCliente
	
	@PutMapping (path = "/{id}")
	public Cliente updateCliente (@PathVariable("id") Long id, @RequestBody Cliente cliente) {
		return clienteService.updateCliente(id, cliente);
	} // updateCliente
	
} // 