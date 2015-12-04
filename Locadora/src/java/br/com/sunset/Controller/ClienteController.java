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
import br.com.sunset.dao.Cliente;
import br.com.sunset.model.ClienteJpaModel;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Carlos
 */

@Resource
public class ClienteController {
    
    private final Result result;

	public ClienteController(Result result) {
		this.result = result;
	}
        
        @Path("/cliente/cadastro")
        public void cadastro(){
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            ClienteJpaModel clienteModel = new ClienteJpaModel(emf);
            List<Cliente> cliente = clienteModel.findClienteEntities();
            result.include("clientes", cliente);   
        }
        
        /*@Post
	@Path("/cliente/salvar")
	public void salvar(Cliente cliente) {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            ClienteJpaModel clienteModel = new ClienteJpaModel(emf);
            clienteModel.create(cliente);
            result.include("cliente", cliente);
            result.redirectTo(ClienteController.class).cadastro();
                        
	}
        
       */
        
        @Post
        @Path("/cliente/salvar")
	public void salvar(Cliente cli) {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            ClienteJpaModel clienteModel = new ClienteJpaModel(emf);
            if (cli.getIdCliente() == null){
                clienteModel.create(cli);
                try {
                    result.include("ap", "Gravado com Sucesso");
                    
                } catch (Exception e) {
                    result.include("ap", e);
                }
                result.redirectTo(ClienteController.class).cadastro();
            } else{
                try {
                    clienteModel.edit(cli);
                    result.include("ap", "Alterado com Sucesso");
                } catch (Exception e) {
                    result.include("ap", e);
                }
                    result.redirectTo(ClienteController.class).cadastro();
            }
		
	}
        
        @Path("/cliente/listar")
        public void listar(){
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            ClienteJpaModel clienteModel = new ClienteJpaModel(emf);
            List<Cliente> cliente = clienteModel.findClienteEntities();
            result.include("cliente", cliente);                        
        }
        
       
        
        @Get("/cliente/editar/{id}")
        public void editar(Integer id){
            
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            ClienteJpaModel clienteModel = new ClienteJpaModel(emf);
            Cliente cliente = clienteModel.findCliente(id);
            
            result.include("t2", "Alterar");
            result.include("cliente", cliente);
            result.redirectTo(ClienteController.class).cadastro();
            
        }
        
        
        @Get("/cliente/deletar/{id}")
        public void deletar(Integer id){
            
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            ClienteJpaModel clienteModel = new ClienteJpaModel(emf);
            
            try {
                clienteModel.destroy(id);
                result.include("ap", "Deletado com Sucesso");
            } catch (Exception e) {
            
                result.include("ap", e);
            }
            result.redirectTo(ClienteController.class).cadastro();
        }
    
}
