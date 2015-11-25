/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.sunset.Controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

/**
 *
 * @author Luuher
 */
public class FilmeController {
    
	private final Result result;

	public FilmeController(Result result) {
		this.result = result;
	}

	@Path("/filme/cadastro")
	public void cadastro() {
		
	}
        
        @Path("/filme/salvar")
	public void salvar() {
		
	}
}
