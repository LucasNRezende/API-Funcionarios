package com.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.model.Funcionario;
import com.api.repository.FuncionarioRepository;

@Service
public class FuncionarioService {
	
private final  FuncionarioRepository funcionarioRepository;
	
	
	@Autowired
	public FuncionarioService(FuncionarioRepository funcionarioRepository) {
		this.funcionarioRepository = funcionarioRepository;
	}



	public List<Funcionario> getFuncionarios() {
		return funcionarioRepository.findAll();
	}
	
	public Funcionario save(Funcionario funcionario) {
		return funcionarioRepository.save(funcionario);
	}
	
}
