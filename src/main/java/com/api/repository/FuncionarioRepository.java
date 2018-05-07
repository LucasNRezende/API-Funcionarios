package com.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.model.Funcionario;



public interface FuncionarioRepository extends JpaRepository<Funcionario, Integer> {

}
