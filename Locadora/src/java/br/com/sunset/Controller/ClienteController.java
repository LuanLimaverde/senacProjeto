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
import br.com.sunset.dao.Bairro;
import br.com.sunset.dao.Cidade;
import br.com.sunset.dao.Cliente;
import br.com.sunset.model.BairroJpaModel;
import br.com.sunset.model.CidadeJpaModel;
import br.com.sunset.model.ClienteJpaModel;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Luuher
 */
@Resource
public class ClienteController {
    
    private final Result result;
    
    public ClienteController(Result result){
        this.result = result;
    }
    
    @Path("/cliente/cadastro")
	public void cadastro() {
            
            result.include("t", "Cadastrar");
            EntityManagerFactory emg = Persistence.createEntityManagerFactory("SenacPU");
            CidadeJpaModel CidadeModel = new CidadeJpaModel(emg);
            List<Cidade> cidade = CidadeModel.findCidadeEntities();
            result.include("cidade", cidade);
            
            EntityManagerFactory emc = Persistence.createEntityManagerFactory("SenacPU");
            BairroJpaModel BairroModel = new BairroJpaModel(emc);
            List<Bairro> bairro = BairroModel.findBairroEntities();
            result.include("bairro", bairro);
	}
        
        @Post
        @Path("/cliente/salvar")
	public void salvar(Cliente cliente) {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
            ClienteJpaModel ClienteModel = new ClienteJpaModel(emf);
            if (cliente.getIdCliente() == null){
                ClienteModel.create(cliente);
                try {
                    result.include("ap", "Gravado com Sucesso");
                    
                } catch (Exception e) {
                    result.include("ap", e);
                }
                result.redirectTo(ClienteController.class).cadastro();
            } else{
                try {
                    ClienteModel.edit(cliente);
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
            
            EntityManagerFactory emg = Persistence.createEntityManagerFactory("SenacPU");
            BairroJpaModel BairroModel = new BairroJpaModel(emg);
            List<Bairro> bairro = BairroModel.findBairroEntities();
            result.include("bairro", bairro);
            
            EntityManagerFactory emc = Persistence.createEntityManagerFactory("SenacPU");
            CidadeJpaModel CidadeModel = new CidadeJpaModel(emc);
            List<Cidade> cidade = CidadeModel.findCidadeEntities();
            result.include("cidade", cidade);
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
            result.redirectTo(ClienteController.class).listar();
        }
    
}
