package com.bitware.SpringExamen.service;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.bitware.SpringExamen.model.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {

	@Query ("SELECT c FROM Cliente c WHERE c.nombre_usuario = ?1")
	Optional<Cliente> findByUsername (String nombre_usuario);
	
	@Query ("SELECT u FROM Cliente u WHERE u.correo_electronico = ?1")
	Optional<Cliente> findByEmail (String correo_electronico);
	
} // interface ClienteRepository