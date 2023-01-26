package com.generation.gutenbook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="libro")
public class Libro {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="libroID", unique=true, nullable=false)
	
	private Integer libroID;
	@Column(nullable=false)
	private String titulo;
	private String autor;
	private String url;
	private String genero;
	private Integer anioPublicacion;
	private Double precio;
	private String pais;
	private String editorial;
	
	public Libro() {
		//Vacio
	}

	public Libro(String titulo, String autor, String url, String genero, Integer anioPublicacion, Double precio, String pais,
			String editorial) {
		super();
		this.titulo = titulo;
		this.autor = autor;
		this.url = url;
		this.genero = genero;
		this.anioPublicacion = anioPublicacion;
		this.precio = precio;
		this.pais = pais;
		this.editorial = editorial;
	}
	

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public Integer getAnioPublicacion() {
		return anioPublicacion;
	}

	public void setAnioPublicacion(Integer anioPublicacion) {
		this.anioPublicacion = anioPublicacion;
	}

	public Double getPrecio() {
		return precio;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public String getEditorial() {
		return editorial;
	}

	public void setEditorial(String editorial) {
		this.editorial = editorial;
	}

	public Integer getLibroID() {
		return libroID;
	}

	@Override
	public String toString() {
		return "titulo=" + titulo + ", autor=" + autor + ", url=" + url + ", genero="
				+ genero + ", anoPublicacion=" + anioPublicacion + ", precio=" + precio + ", pais=" + pais
				+ ", editorial=" + editorial + "]";
	}
	
	
}


