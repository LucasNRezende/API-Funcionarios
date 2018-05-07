package com.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.model.Projeto;

public interface ProjetoRepository extends JpaRepository<Projeto, Integer> {

}
