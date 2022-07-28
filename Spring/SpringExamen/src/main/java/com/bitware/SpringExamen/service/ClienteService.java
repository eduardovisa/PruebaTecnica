package com.bitware.SpringExamen.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.bitware.SpringExamen.model.Cliente;

@Service
public class ClienteService {

	private final ClienteRepository clienteRepository;
	
	public ClienteService(ClienteRepository clienteRepository) {
		super();
		this.clienteRepository = clienteRepository;
	} // constructor

	public List<Cliente> getProductos () {
		return clienteRepository.findAll();
	} // getProductos
	
	public Cliente getCliente (Long id) {
		return clienteRepository.findById(id).orElseThrow(
				() -> new IllegalArgumentException("El cliente con el id [" + id + "] no existe."));
	} // getProducto
	
	public Cliente addCliente (Cliente cliente) {
		Cliente tmpCliente = null;
		Optional<Cliente> clienteByUsername = clienteRepository.findByUsername(cliente.getNombre_usuario());
		Optional<Cliente> clienteByEmail = clienteRepository.findByEmail(cliente.getCorreo_electronico());
		if (clienteByUsername.isPresent() || clienteByEmail.isPresent()) {
			throw new IllegalArgumentException("El cliente con el nombre de usuario [" + cliente.getNombre_usuario() + "] y/o correo electrónico [ " + cliente.getCorreo_electronico() + "] ya existe.");
		} else {
			clienteRepository.save(cliente);
			tmpCliente = cliente;
		} // else-if
		return tmpCliente;
	} // addCliente

	public Cliente updateCliente(Long id, Cliente cliente) {
		Cliente tmpCliente = null;
		if (clienteRepository.existsById(id)) {
			tmpCliente = clienteRepository.findById(id).get();
			if (cliente.getNombre() != null) tmpCliente.setNombre(cliente.getNombre());
			if (cliente.getApellidos() != null) tmpCliente.setApellidos(cliente.getApellidos());
			if (cliente.getEdad() > 0) tmpCliente.setEdad(cliente.getEdad()); 
			if (cliente.getEstatura() > 0) tmpCliente.setEstatura(cliente.getEstatura()); 
			if (cliente.getPeso() > 0) tmpCliente.setPeso(cliente.getPeso()); 
			if (cliente.getGeb() > 0) tmpCliente.setGeb(cliente.getGeb());
			double imc = tmpCliente.getPeso() / (Math.pow(tmpCliente.getEstatura(), 2));
			if (imc > 0) tmpCliente.setImc(imc);
			tmpCliente.setFecha_actualizacion(LocalDate.now());
			clienteRepository.save(tmpCliente);
		}
		return tmpCliente;
	}
	
} // class ClienteService