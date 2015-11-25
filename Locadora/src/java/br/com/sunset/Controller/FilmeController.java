/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.sunset.Controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.sunset.dao.Filme;
import br.com.sunset.model.FilmeJpaModel;
import java.util.List;
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
        
        @Post
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
        
        @Path("/filme/listar")
        public void listar(){
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            FilmeJpaModel filmeModel = new FilmeJpaModel(emf);
            List<Filme> filme = filmeModel.findFilmeEntities();
            result.include("filmes", filme);
        }
        
        @Get("/filme/editar/{id}")
        public void editar(Integer id){
            
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            FilmeJpaModel filmeModel = new FilmeJpaModel(emf);
            Filme filme = filmeModel.findFilme(id);
            
            result.include("t2", "Alterar");
            result.include("filme", filme);
            result.redirectTo(FilmeController.class).cadastro();
            
        }
        
        @Get("/filme/deletar/{id}")
        public void deletar(Integer id){
            
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            FilmeJpaModel filmeModel = new FilmeJpaModel(emf);
            
            try {
                filmeModel.destroy(id);
                result.include("ap", "Deletado com Sucesso");
            } catch (Exception e) {
            
                result.include("ap", e);
            }
            result.redirectTo(FilmeController.class).listar();
        }
        
        
}
