package com.generation.gutenbook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pedido_has_libro")
public class PedidoHasLibro {
	
	@Column(nullable=false)
	private int pedido_idpedido;
	private int usuario_IDusuario;
	//No sabemos :v

	public PedidoHasLibro() {
		//vacio
	}

	public int getPedido_idpedido() {
		return pedido_idpedido;
	}

	public int getUsuario_IDusuario() {
		return usuario_IDusuario;
	}
	
	
}
