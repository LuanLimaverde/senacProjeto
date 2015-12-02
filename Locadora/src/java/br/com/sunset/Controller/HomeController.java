/**
 * *
 * Copyright (c) 2009 Caelum - www.caelum.com.br/opensource
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * 	http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
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

@Resource
public class HomeController {

    private final Result result;

    public HomeController(Result result) {
        this.result = result;
    }

    @Path("/")
    public void index() {
        result.include("variable", "VRaptor!");
    }
    
    @Path("/home/indexGerencial")
    public void indexGerencial(){
        
    }
    
    @Path("/home/destaque")
    public void destaque() {

    }

    @Post
    @Path("/home/logar")
    public void logar(Login login) {
        int teste = 0 ;
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("SenacPU");
        LoginJpaModel loginModel = new LoginJpaModel(emf);
        List<Login> login1 = loginModel.findLoginEntities();
        if (login.getIdLogin() == null) {
                    result.include("login", "teste");
                    result.redirectTo(HomeController.class).index();
                } else {
        for (Login login2 : login1) {
                if (login.getIdLogin().equals(login2.getIdLogin())) {
                    if (login.getSenha() == (login2.getSenha())) {
                        result.redirectTo(HomeController.class).indexGerencial();
                    } else {
                       result.include("login", "teste");
                        result.redirectTo(HomeController.class).index();
                      
            }}else{
                    teste = teste + 1;
                }
            
        }
        
                    
    }}}
