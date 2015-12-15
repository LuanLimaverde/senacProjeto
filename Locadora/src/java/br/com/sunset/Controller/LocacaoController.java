/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.sunset.Controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import static br.com.caelum.vraptor.view.Results.page;
import br.com.sunset.dao.Cliente;
import br.com.sunset.dao.Filme;
import br.com.sunset.dao.Locar;
import br.com.sunset.model.ClienteJpaModel;
import br.com.sunset.model.FilmeJpaModel;
import br.com.sunset.model.LocarJpaModel;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Luuher
 */
@Resource
public class LocacaoController {

    private final Result result;

    public LocacaoController(Result result) {
        this.result = result;
    }

    private String getDateTime() {
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        return dateFormat.format(date);
    }

    @Path("/locacao/gerenciamentoLocacao")
    public void gerenciamentoLocacao() {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
        FilmeJpaModel filmeModel = new FilmeJpaModel(emf);
        List<Filme> filme = filmeModel.findFilmeEntities();
        ClienteJpaModel ClienteModel = new ClienteJpaModel(emf);
        List<Cliente> cliente = ClienteModel.findClienteEntities();
        result.include("filmes", filme);
        result.include("data", getDateTime());
        result.include("clientes", cliente);
    }

    @Post
    @Path("/locacao/salvar")
    public void salvar(Locar locar) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
        LocarJpaModel locarModel = new LocarJpaModel(emf);
      //  locarModel.create(locar);
      result.redirectTo(LocacaoController.class).gerenciamentoLocacao();
      
        
        
    }
}
