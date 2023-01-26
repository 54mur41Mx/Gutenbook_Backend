package com.generation.gutenbook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="inventario")
public class Inventario {
	
	@Column(nullable=false)
	private int unidades;
	private String descripcion;
	private int usuario_IDusuario;
	//No sabemos :v
	
	public Inventario() {
		//vacio
	}
	public Inventario(int unidades, String descripcion) {
		super();
		this.unidades = unidades;
		this.descripcion = descripcion;
	}
	public int getUnidades() {
		return unidades;
	}
	public void setUnidades(int unidades) {
		this.unidades = unidades;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getUsuario_IDusuario() {
		return usuario_IDusuario;
	}
	@Override
	public String toString() {
		return "Inventario [unidades=" + unidades + ", descripcion=" + descripcion + "]";
	}
	
	
}
