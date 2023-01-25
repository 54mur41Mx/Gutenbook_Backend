package com.generation.gutenbook.service;

import org.springframework.data.jpa.repository.JpaRepository;

import com.generation.gutenbook.model.Pedido;

public interface PedidoRepository extends JpaRepository<Pedido, Integer> {

}
