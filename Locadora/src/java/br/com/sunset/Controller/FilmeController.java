/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.sunset.Controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.sunset.dao.Filme;
import br.com.sunset.model.FilmeJpaModel;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Luuher
 */
@Resource
public class FilmeController {
    
	private final Result result;

	public FilmeController(Result result) {
		this.result = result;
	}

	@Path("/filme/cadastro")
	public void cadastro() {
            
            result.include("t", "Cadastrar");
		
	}
        
        @Path("/filme/salvar")
	public void salvar(Filme filme) {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            FilmeJpaModel filmeModel = new FilmeJpaModel(emf);
            if (filme.getIdFilme() == null){
                filmeModel.create(filme);
                try {
                    result.include("ap", "Gravado com Sucesso");
                    
                } catch (Exception e) {
                    result.include("ap", e);
                }
                result.redirectTo(FilmeController.class).cadastro();
            } else{
                try {
                    filmeModel.edit(filme);
                    result.include("ap", "Alterado com Sucesso");
                } catch (Exception e) {
                    result.include("ap", e);
                }
                    result.redirectTo(FilmeController.class).cadastro();
            }
		
	}
}
