/***
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

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

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
        
        @Path("/home/destaque")
        public void destaque(){
            
        }
        
        @Post
        @Path("/home/logar")
        public void logar(){
           
            result.include("login", "teste");
            result.redirectTo(FilmeController.class).cadastro();
        }
}
