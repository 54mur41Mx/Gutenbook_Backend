package com.generation.gutenbook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="direccion")
public class Direccion {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="NumeroOrden", unique=true, nullable=false)
	
	private int NumeroOrden;
	@Column(nullable=false)
	private String calle;
	private String colonia;
	private String delegacion;
	private String estado;
	private String codigoPostal;
	private int usuario_IDusuario;
	//No sabemos :v
	
	public Direccion() {
		//Vacio
	}
	public Direccion(String calle, String colonia, String delegacion, String estado, String codigoPostal) {
		super();
		this.calle = calle;
		this.colonia = colonia;
		this.delegacion = delegacion;
		this.estado = estado;
		this.codigoPostal = codigoPostal;
	}
	public String getCalle() {
		return calle;
	}
	public void setCalle(String calle) {
		this.calle = calle;
	}
	public String getColonia() {
		return colonia;
	}
	public void setColonia(String colonia) {
		this.colonia = colonia;
	}
	public String getDelegacion() {
		return delegacion;
	}
	public void setDelegacion(String delegacion) {
		this.delegacion = delegacion;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getCodigoPostal() {
		return codigoPostal;
	}
	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}
	public int getNumeroOrden() {
		return NumeroOrden;
	}
	public int getUsuario_IDusuario() {
		return usuario_IDusuario;
	}
	@Override
	public String toString() {
		return "Direccion [calle=" + calle + ", colonia=" + colonia + ", delegacion=" + delegacion + ", estado="
				+ estado + ", codigoPostal=" + codigoPostal + "]";
	}
	
	

}
