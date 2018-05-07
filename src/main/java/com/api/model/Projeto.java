package com.api.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity(name="projeto")
public class Projeto implements Serializable {
	
	private static final long serialVersionUID = 7376708104093544060L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="nome_projeto")
	private String nome;
	
	@Column(name="cliente")
	private String cliente;
	
	@Column(name="valor_projeto")
	private String valor;
	
	@Column(name="data_inicio")
	private String datainicio;
	
	@Column(name="data_fim")
	private String datafim;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public String getDatainicio() {
		return datainicio;
	}

	public void setDatainicio(String datainicio) {
		this.datainicio = datainicio;
	}

	public String getDatafim() {
		return datafim;
	}

	public void setDatafim(String datafim) {
		this.datafim = datafim;
	}
	

}
