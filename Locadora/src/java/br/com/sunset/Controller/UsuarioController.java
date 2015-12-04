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
import br.com.sunset.dao.Login;
import br.com.sunset.model.LoginJpaModel;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Luuher
 */
@Resource
public class UsuarioController {
    
	private final Result result;

	public UsuarioController(Result result) {
		this.result = result;
	}

	@Path("/usuario/cadastro")
	public void cadastro() {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            LoginJpaModel loginModel = new LoginJpaModel(emf);
            List<Login> login = loginModel.findLoginEntities();
            result.include("usuarios", login);
       
	}
        
       
        
        @Post
        @Path("/usuario/salvar")
	public void salvar(Login usu) throws Exception {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            LoginJpaModel loginModel = new LoginJpaModel(emf);
            if (usu.getIdLogin() == null){
                loginModel.create(usu);
                try {
                    result.include("ap", "Gravado com Sucesso");
                    
                } catch (Exception e) {
                    result.include("ap", e);
                }
                result.redirectTo(UsuarioController.class).cadastro();
            } else{
                try {
                    loginModel.edit(usu);
                    result.include("ap", "Alterado com Sucesso");
                } catch (Exception e) {
                    result.include("ap", e);
                }
                    result.redirectTo(UsuarioController.class).cadastro();
            }
		
	}
        
        @Path("/usuario/listar")
        public void listar(){
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            LoginJpaModel loginModel = new LoginJpaModel(emf);
            List<Login> login = loginModel.findLoginEntities();
            result.include("usuario", login);
        }
        
       
        
        @Get("/usuario/editar/{id}")
        public void editar(Integer id){
            
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            LoginJpaModel loginModel = new LoginJpaModel(emf);
            Login login = loginModel.findLogin(id);
            
            result.include("t2", "Alterar");
            result.include("usuario", login);
            result.redirectTo(UsuarioController.class).cadastro();
            
        }
        
        @Get("/usuario/deletar/{id}")
        public void deletar(Integer id){
            
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            LoginJpaModel loginModel = new LoginJpaModel(emf);
            
            try {
                loginModel.destroy(id);
                result.include("ap", "Deletado com Sucesso");
            } catch (Exception e) {
            
                result.include("ap", e);
            }
            result.redirectTo(UsuarioController.class).cadastro();
        }
        
        
}
