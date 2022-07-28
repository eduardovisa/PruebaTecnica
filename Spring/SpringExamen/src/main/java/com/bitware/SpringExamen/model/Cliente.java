package com.bitware.SpringExamen.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cliente {
	
	// Parámetros del cliente
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column (name = "cliente_id", unique = true, nullable = false)
	private Long cliente_id;
	private String nombre_usuario;
	private String contrasena;
	private String nombre;
	private String apellidos;
	private String correo_electronico;
	private int edad;
	private double estatura;
	private double peso;
	private double imc;
	private double geb;
	private double eta;
	private LocalDate fecha_creacion;
	private LocalDate fecha_actualizacion;	
	
	public Cliente(Long cliente_id, String nombre_usuario, String contrasena, String nombre, String apellidos, String correo_electronico) {
		super();
		this.nombre_usuario = nombre_usuario;
		this.contrasena = contrasena;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.correo_electronico = correo_electronico;
		this.fecha_creacion = LocalDate.now();
		this.fecha_actualizacion = LocalDate.now();
		this.cliente_id = cliente_id;
		// Inicialización estándar 
		this.edad = 0;
		this.estatura = 0;
		this.peso = 0;
		this.imc = 0;
		this.geb = 0;
		this.eta = 0;
	} // constructor
	
	public Cliente () {
		this.fecha_creacion = LocalDate.now();
		this.fecha_actualizacion = LocalDate.now();
	} // constructor 
	
	public String getNombre_usuario() {
		return nombre_usuario;
	} // getNombre_usuario

	public void setNombre_usuario(String nombre_usuario) {
		this.nombre_usuario = nombre_usuario;
	} // setNombre_usuario

	public String getContrasena() {
		return contrasena;
	} // getContrasena

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	} // setContrasena

	public String getNombre() {
		return nombre;
	} // getNombre

	public void setNombre(String nombre) {
		this.nombre = nombre;
	} // setNombre

	public String getApellidos() {
		return apellidos;
	} // getApellidos

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	} // setApellidos

	public String getCorreo_electronico() {
		return correo_electronico;
	} // getCorreo_electronico

	public void setCorreo_electronico(String correo_electronico) {
		this.correo_electronico = correo_electronico;
	} // setCorreo_electronico

	public int getEdad() {
		return edad;
	} // getEdad

	public void setEdad(int edad) {
		this.edad = edad;
	} // setEdad

	public double getEstatura() {
		return estatura;
	} // getEstatura

	public void setEstatura(double estatura) {
		this.estatura = estatura;
	} // setEstatura

	public double getPeso() {
		return peso;
	} // getPeso

	public void setPeso(double peso) {
		this.peso = peso;
	} // setPeso

	public double getImc() {
		return imc;
	} // getImc

	public void setImc(double imc) {
		this.imc = imc;
	} // setImc

	public double getGeb() {
		return geb;
	}// getGeb

	public void setGeb(double geb) {
		this.geb = geb;
	} // setGeb

	public double getEta() {
		return eta;
	} // getEta

	public void setEta(double eta) {
		this.eta = eta;
	} // setEta

	public Long getCliente_id() {
		return cliente_id;
	} // getCliente
	
	public LocalDate getFecha_actualizacion() {
		return fecha_actualizacion;
	} // getFecha_actualizacion

	public void setFecha_actualizacion(LocalDate fecha_actualizacion) {
		this.fecha_actualizacion = fecha_actualizacion;
	} // setFecha_actualizacion

	public LocalDate getFecha_creacion() {
		return fecha_creacion;
	} // getFecha_creacion

	@Override
	public String toString() {
		return "Cliente [cliente_id=" + cliente_id + ", nmombre_usuario=" + nombre_usuario + ", contrasena="
				+ contrasena + ", nombre=" + nombre + ", apellidos=" + apellidos + ", correo_electronico="
				+ correo_electronico + ", edad=" + edad + ", estatura=" + estatura + ", peso=" + peso + ", imc=" + imc
				+ ", geb=" + geb + ", eta=" + eta + "]";
	} // toString
	
} // class Cliente