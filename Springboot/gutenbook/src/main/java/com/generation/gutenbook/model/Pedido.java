package com.generation.gutenbook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pedido")
public class Pedido {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idpedido", unique=true, nullable=false)
	
	private int idpedido;
	@Column(nullable=false)
	private int cantidad;
	private Double total;
	private int usuario_IDusuario;
	//No sabemos :v
	
	public Pedido() {
		//vacio
	}
	public Pedido(int cantidad, Double total) {
		super();
		this.cantidad = cantidad;
		this.total = total;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public int getIdpedido() {
		return idpedido;
	}
	public int getUsuario_IDusuario() {
		return usuario_IDusuario;
	}
	@Override
	public String toString() {
		return "Pedido [cantidad=" + cantidad + ", total=" + total + "]";
	}
	
	
}
