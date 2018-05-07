package com.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.api.model.Funcionario;
import com.api.service.FuncionarioService;



@RestController	
public class FuncionarioController {
	
private final FuncionarioService funcionarioService;
	
	
	@Autowired
	public FuncionarioController(FuncionarioService funcionarioService) {
		this.funcionarioService = funcionarioService;
	}



	@GetMapping("/funcionarios")
	public ResponseEntity<List<Funcionario>> getFuncionarios() {

		return new ResponseEntity<List<Funcionario>>(funcionarioService.getFuncionarios(), HttpStatus.OK);
		
	}
	
	@PostMapping("/funcionarios")
	public ResponseEntity<Funcionario> saveFuncionario(@RequestBody Funcionario funcionario) {

		return new ResponseEntity<Funcionario>(funcionarioService.save(funcionario), HttpStatus.OK);
		
	}

}
