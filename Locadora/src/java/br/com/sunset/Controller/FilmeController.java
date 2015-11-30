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
import br.com.sunset.dao.Classe;
import br.com.sunset.dao.Filme;
import br.com.sunset.dao.Genero;
import br.com.sunset.model.ClasseJpaModel;
import br.com.sunset.model.FilmeJpaModel;
import br.com.sunset.model.GeneroJpaModel;
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
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            FilmeJpaModel filmeModel = new FilmeJpaModel(emf);
            List<Filme> filme = filmeModel.findFilmeEntities();
            result.include("filmes", filme);
            
            result.include("t", "Cadastrar");
            EntityManagerFactory emg = Persistence.createEntityManagerFactory("SenacPU");
            GeneroJpaModel GeneroModel = new GeneroJpaModel(emg);
            List<Genero> genero = GeneroModel.findGeneroEntities();
            result.include("genero", genero);
           
            
            EntityManagerFactory emc = Persistence.createEntityManagerFactory("SenacPU");
            ClasseJpaModel ClasseModel = new ClasseJpaModel(emc);
            List<Classe> classe = ClasseModel.findClasseEntities();
            result.include("classe", classe);
	}
        
       
        
        @Post
        @Path("/filme/salvar")
	public void salvar(Filme movie) {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            FilmeJpaModel filmeModel = new FilmeJpaModel(emf);
            if (movie.getIdFilme() == null){
                filmeModel.create(movie);
                try {
                    result.include("ap", "Gravado com Sucesso");
                    
                } catch (Exception e) {
                    result.include("ap", e);
                }
                result.redirectTo(FilmeController.class).cadastro();
            } else{
                try {
                    filmeModel.edit(movie);
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
            result.include("filme", filme);
            
            EntityManagerFactory emg = Persistence.createEntityManagerFactory("SenacPU");
            GeneroJpaModel GeneroModel = new GeneroJpaModel(emg);
            List<Genero> genero = GeneroModel.findGeneroEntities();
            result.include("genero", genero);
            
            EntityManagerFactory emc = Persistence.createEntityManagerFactory("SenacPU");
            ClasseJpaModel ClasseModel = new ClasseJpaModel(emc);
            List<Classe> classe = ClasseModel.findClasseEntities();
            result.include("classe", classe);
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
            result.redirectTo(FilmeController.class).cadastro();
        }
        
        
}
