<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <link rel="stylesheet" href="<c:url value='/assets/css/style.css' />">    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="<c:url value='/assets/img/icon.png' />">
        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
        <script src="<c:url value="/assets/js/bootstrap.js" />" type="text/javascript"></script>

        <title>SunsetFilmes</title>
    </head>
    <body style="background-image: url(<c:url value='/assets/img/civilwar_1.jpg'/>); background-attachment:fixed;background-size:cover; background-repeat:no-repeat">


    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">  
                <a class="navbar-brand" href="#">Sunset Filmes</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="<c:url value="/"/>">Inicial</a></li>
                    <li class="active"><a href="#">Destaque</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#contato" style="margin-right:450px;">Contato</a></li>


            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div style="height:560px; ">

    </div>
    <div>
        <div class="row">
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#01">
                    <center> <h4>#01 C.Am�rica: O Primeiro Vingador </h4> </center>
                    <img src="<c:url value="/assets/img/capitao.jpg"/>" alt="Os Vingadores">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#02">
                    <center> <h4>#02 O Homem de Ferro </h4> </center>
                    <img src="<c:url value="/assets/img/homemferro.jpg"/>" alt="...">
                </a>
            </div>    
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#03">
                    <center> <h4>#03 O Incrivel Hulk </h4> </center>
                    <img src="<c:url value="/assets/img/incrivel.jpg"/>" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#04">
                    <center> <h4>#04 O Homem de Ferro 2 </h4> </center>
                    <img src="<c:url value="/assets/img/homemferro2.jpg"/>" alt="...">
                </a>
            </div>
        </div>
    </div>
    <div>
        <div class="row">
            <div class="col-xs-6 col-md-3">                
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#05">
                    <center> <h4>#05 Thor </h4> </center>
                    <img src="<c:url value="/assets/img/thor.jpg"/>" alt="Os Vingadores">
                </a>

            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#06">
                    <center> <h4>#06 Os Vingadores </h4> </center>
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="...">
                </a>
            </div>    
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#07">
                    <center> <h4>#07 O Homem de Ferro 3 </h4> </center>
                    <img src="<c:url value="/assets/img/homemferro3.jpg"/>" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#08">
                    <center> <h4>#08 Thor : O Mundo Sombrio </h4> </center>
                    <img src="<c:url value="/assets/img/thor2.jpg"/>" alt="...">
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6 col-md-3">                
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#09">
                    <center> <h4>#09 C.Am�rica: Soldado Invernal </h4> </center>
                    <img src="<c:url value="/assets/img/capitao1.jpg"/>" alt="Os Vingadores">
                </a>

            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#10">
                    <center> <h4>#10 Os Guardi�es da Gal�xia </h4> </center>
                    <img src="<c:url value="/assets/img/gdg.jpg"/>" alt="...">
                </a>
            </div>    
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#11">
                    <center> <h4>#11 Os Vingadores: Era de Ultron </h4> </center>
                    <img src="<c:url value="/assets/img/vingadores2.jpg"/>" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a class="thumbnail" data-toggle="modal" data-target="#12">
                    <center> <h4>#12 O Homem Formiga </h4> </center>
                    <img src="<c:url value="/assets/img/formiga.jpg"/>" alt="...">
                </a>
            </div>
        </div>        
    </div>


    <div name="modais">
        <div id="01" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #01 C.Am�rica: O Primeiro Vingador </h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/capitaoamerica1.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:	29 de julho de 2011 (2h3min) </p>
                        <p>Dirigido por:	Joe Johnston</p>
                        <p>Com	Chris Evans, Hayley Atwell, Sebastian Stan </p>
                        <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>2� Guerra Mundial. Steve Rogers (Chris Evans) � um jovem que aceitou ser volunt�rio em uma s�rie de experi�ncias que visam criar o supersoldado americano. Os militares conseguem transform�-lo em uma arma humana, mas logo percebem que o supersoldado � valioso demais para p�r em risco na luta contra os nazistas. Desta forma, Rogers � usado como uma celebridade do ex�rcito, marcando presen�a em paradas realizadas pela Europa no intuito de levantar a estima dos combatentes. Para tanto passa a usar uma vestimenta com as cores da bandeira dos Estados Unidos, azul, branca e vermelha. S� que um plano nazista faz com que Rogers entre em a��o e assuma a alcunha de Capit�o Am�rica, usando seus dons para combat�-los em plenas trincheiras da guerra.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div id="02" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #02 Homem de Ferro </h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/homemferro1.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:30 de abril de 2008 (2h5min)  </p>
                        <p>Dirigido por:	Jon Favreau</p>
                        <p>Com	Robert Downey Jr., Terrence Howard, Gwyneth Paltrow </p>
                        <p>G�nero:	A��o , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Tony Stark (Robert Downey Jr.) � um industrial bilion�rio, que tamb�m � um brilhante inventor. Ao ser sequestrado ele � obrigado por terroristas a construir uma arma devastadora mas, ao inv�s disto, constr�i uma armadura de alta tecnologia que permite que fuja de seu cativeiro. A partir de ent�o ele passa a us�-la para combater o crime, sob o alter-ego do Homem de Ferro.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div id="03" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #03 O Incrivel Hulk</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/incrivel.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:13 de junho de 2008 (1h52min)  </p>
                        <p>Dirigido por:	Louis Leterrier</p>
                        <p>Com	Edward Norton, Liv Tyler, Tim Roth</p>
                        <p>G�nero:	A��o , Fantasia</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Vivendo escondido e longe de Betty Ross (Liv Tyler), a mulher que ama, o cientista Bruce Banner (Edward Norton) busca um meio de retirar a radia��o gama que est� em seu sangue. Ao mesmo tempo ele precisa fugir da persegui��o do general Ross (William Hurt), seu grande inimigo, e da m�quina militar que tenta captur�-lo, na inten��o de explorar o poder que faz com que Banner se transforme no Hulk.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>                
        <div id="04" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #04 Homem de Ferro 2</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/homemferro2.jpg"/>" alt="...">	</p>
                        <p> Lan�amento: 30 de abril de 2010 (1h57min)   </p>
                        <p>Dirigido por:	Jon Favreau</p>
                        <p>Com	Robert Downey Jr., Don Cheadle, Scarlett Johansson </p>
                        <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Ap�s confessar ao mundo ser o Homem de Ferro, Tony Stark (Robert Downey Jr.) passa a ser alvo do governo dos Estados Unidos, que deseja que ele entregue seu poderoso traje. Com a negativa, o governo passa a desenvolver um novo traje com o maior rival de Stark, Justin Hammer (Sam Rockwell). Jim Rhodes (Don Cheadle), o bra�o direito de Tony, � colocado no centro deste conflito, o que faz com que assuma a identidade de M�quina de Combate. Paralelamente, Ivan Vanko (Mickey Rourke) cria o alter-ego de Whiplash para se vingar dos atos da fam�lia Stark no passado. Para combater Whiplash e a persegui��o do governo, Stark conta com o apoio de sua nova assistente, Natasha Romanoff (Scarlett Johansson), e de Nick Fury (Samuel L. Jackson), o diretor da S.H.I.E.L.D.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>                  
        <div id="05" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #05 Thor</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/thor1.jpg"/>" alt="...">	</p>
                        <p> Lan�amento: 29 de abril de 2011 (1h54min)    </p>
                        <p>Dirigido por: Kenneth Branagh</p>
                        <p>Com	Chris Hemsworth, Natalie Portman, Anthony Hopkins</p>
                        <p>G�nero:	A��o , Fantasia , Aventura</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Thor (Chris Hemsworth) estava prestes a receber o comando de Asgard das m�os de seu pai Odin (Anthony Hopkins) quando for�as inimigas quebraram um acordo de paz. Disposto a se vingar do ocorrido, o jovem guerreiro desobedece as ordens do rei e quase d� in�cio a uma nova guerra entre os reinos. Enfurecido com a atitude do filho e herdeiro, Odin retira seus poderes e o expulsa para a Terra. L�, Thor acaba conhecendo a cientista Jane Foster (Natalie Portman) e precisa recuperar seu martelo, enquanto seu irm�o Loki (Tom Hiddleston) elabora um plano para assumir o poder. Mas os guerreiros do Deus do Trov�o fazem a mesma viagem para buscar o amigo e impedir que isso aconte�a. S� que eles n�o vieram sozinhos e o inimigo est� presente para uma batalha que est� apenas come�ando.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>  
        <div id="06" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #06 Os Vingadores</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/vingadores.jpg"/>" alt="...">	</p>
                        <p> Lan�amento: 27 de abril de 2012 (2h22min)     </p>
                        <p>Dirigido por: Joss Whedon</p>
                        <p>Com	Robert Downey Jr., Chris Evans, Mark Ruffalo</p>
                        <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Loki (Tom Hiddleston) retorna � Terra enviado pelos chitauri, uma ra�a alien�gena que pretende dominar os humanos. Com a promessa de que ser� o soberano do planeta, ele rouba o cubo c�smico dentro de instala��es da S.H.I.E.L.D. e, com isso, adquire grandes poderes. Loki os usa para controlar o dr. Erik Selvig (Stellan Skarsgard) e Clint Barton/Gavi�o Arqueiro (Jeremy Renner), que passam a trabalhar para ele. No intuito de cont�-los, Nick Fury (Samuel L. Jackson) convoca um grupo de pessoas com grandes habilidades, mas que jamais haviam trabalhado juntas: Tony Stark/Homem de Ferro (Robert Downey Jr.), Steve Rogers/Capit�o Am�rica (Chris Evans), Thor (Chris Hemsworth), Bruce Banner/Hulk (Mark Ruffalo) e Natasha Romanoff/Vi�va Negra (Scarlett Johansson). S� que, apesar do grande perigo que a Terra corre, n�o � t�o simples assim conter o ego e os interesses de cada um deles para que possam agir em grupo.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div> 
        <div id="07" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #07 O Homem de Ferro 2</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/homemferro2.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:	30 de abril de 2010 (1h57min)      </p>
                        <p>Dirigido por: 	Jon Favreau</p>
                        <p>Com    Robert Downey Jr., Don Cheadle, Scarlett Johansson</p>
                        <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Ap�s confessar ao mundo ser o Homem de Ferro, Tony Stark (Robert Downey Jr.) passa a ser alvo do governo dos Estados Unidos, que deseja que ele entregue seu poderoso traje. Com a negativa, o governo passa a desenvolver um novo traje com o maior rival de Stark, Justin Hammer (Sam Rockwell). Jim Rhodes (Don Cheadle), o bra�o direito de Tony, � colocado no centro deste conflito, o que faz com que assuma a identidade de M�quina de Combate. Paralelamente, Ivan Vanko (Mickey Rourke) cria o alter-ego de Whiplash para se vingar dos atos da fam�lia Stark no passado. Para combater Whiplash e a persegui��o do governo, Stark conta com o apoio de sua nova assistente, Natasha Romanoff (Scarlett Johansson), e de Nick Fury (Samuel L. Jackson), o diretor da S.H.I.E.L.D.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div> 
        <div id="08" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #08 Thor: O Mundo Sombrio</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/thor2.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:	30 de abril de 2010 (1h57min)      </p>
                        <p>Dirigido por: 	Jon Favreau</p>
                        <p>Com    Robert Downey Jr., Don Cheadle, Scarlett Johansson</p>
                        <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Enquanto Thor (Chris Hemsworth) liderava as �ltimas batalhas para conquistar a paz entre os Nove Reinos, o maldito elfo negro Malekith (Christopher Eccleston) acordava de um longo sono, sedento de vingan�a e louco para levar todos para a escurid�o eterna. Alertado do perigo por Odin (Anthony Hopkins), o her�i precisa contar com a ajuda dos companheiros Volstagg (Ray Stevenson), Sif (Jaimie Alexander), entre outros, e at� de seu irm�o, o trai�oeiro Loki (Tom Hiddleston), em um plano audacioso para salvar o universo do grande mal. Mas os caminhos de Thor e da amada Jane Foster (Natalie Portman) se cruzam novamente e, dessa vez, a vida dela est� realmente em perigo.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div id="09" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #09 Capitao America: O soldado Invernal</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/thor2.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:	30 de abril de 2010 (1h57min)      </p>
                        <p>Dirigido por: 	Jon Favreau</p>
                        <p>Com    Robert Downey Jr., Don Cheadle, Scarlett Johansson</p>
                        <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Dois anos ap�s os acontecimentos em Nova York (Os Vingadores - The Avengers), Steve Rogers (Chris Evans) continua seu dedicado trabalho com a ag�ncia S.H.I.E.L.D. e tamb�m segue tentando se acostumar com o fato de que foi descongelado e acordou d�cadas depois de seu tempo. Em parceria com Natasha Romanoff (Scarlett Johansson), tamb�m conhecida como Vi�va Negra, ele � obrigado a enfrentar um poderoso e misterioso inimigo chamado Soldado Invernal, que visita Washington e abala o dia a dia da S.H.I.E.L.D., ainda liderada por Nick Fury (Samuel L. Jackson).</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div id="10" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #10 Guardi�es da Gal�xia</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/guardiao.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:	30 de abril de 2010 (1h57min)      </p>
                        <p>Dirigido por: 	Jon Favreau</p>
                        <p>Com    Robert Downey Jr., Don Cheadle, Scarlett Johansson</p>
                        <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Peter Quill (Chris Pratt) foi abduzido da Terra quando ainda era crian�a. Adulto, fez carreira como saqueador e ganhou o nome de Senhor das Estrelas. Quando rouba uma esfera, na qual o poderoso vil�o Ronan, da ra�a kree, est� interessado, passa a ser procurado por v�rios ca�adores de recompensas. Para escapar do perigo, Quill une for�as com quatro personagens fora do sistema: Groot, uma �rvore human�ide (Vin Diesel), a sombria e perigosa Gamora (Zoe Saldana), o guaxinim r�pido no gatilho Rocket Racoon (Bradley Cooper) e o vingativo Drax, o Destruidor (Dave Bautista). Mas o Senhor das Estrelas descobre que a esfera roubada possui um poder capaz de mudar os rumos do universo, e logo o grupo dever� proteger o objeto para salvar o futuro da gal�xia.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div> 
        <div id="11" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #11 Os Vingadores: Era de Ultron</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/vingadores2.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:	30 de abril de 2010 (1h57min)      </p>
                        <p>Dirigido por: 	Jon Favreau</p>
                        <p>Com    Robert Downey Jr., Don Cheadle, Scarlett Johansson</p>
                        <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Tentanto proteger o planeta de amea�as como as vistas no primeiro Os Vingadores, Tony Stark busca construir um sistema de intelig�ncia artifical que cuidaria da paz mundial. O projeto acaba dando errado e gera o nascimento do Ultron (voz de James Spader). Capit�o Am�rica (Chris Evans), Homem de Ferro (Robert Downey Jr.), Thor (Chris Hemsworth), Hulk (Mark Ruffalo), Vi�va Negra (Scarlett Johansson) e Gavi�o Arqueiro (Jeremy Renner) ter�o que se unir para mais uma vez salvar o dia</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div> 
        <div id="12" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #12 Homem Formiga</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/formiga.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:	30 de abril de 2010 (1h57min)      </p>
                        <p>Dirigido por: 	Jon Favreau</p>
                        <p>Com    Robert Downey Jr., Don Cheadle, Scarlett Johansson</p>
                        <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                        <p> Nacionalidade:	EUA </p>
                        <p> Classe: Bronze </p> 
                        <p><b>Sinopse:</b></p>
                        <p>Dr. Hank Pym (Michael Douglas), o inventor da f�rmula/ traje que permite o encolhimento, anos depois da descoberta, precisa impedir que seu ex-pupilo Darren Cross (Corey Stoll), consiga replicar o feito e vender a tecnologia para uma organiza��o do mal. Depois de sair da cadeia, o trambiqueiro Scott Lang (Paul Rudd) est� disposto a reconquistar o respeito da ex-mulher, Maggie (Judy Greer) e, principalmente, da filha. Com dificuldades de arrumar um emprego honesto, ele aceita praticar um �ltimo golpe. O que ele n�o sabia era que tudo n�o passava de um plano do Dr. Pym que, depois de anos observando o h�bil ladr�o, o escolhe para vestir o traje do Homem-Formiga.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div id="contato" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> CONTATOS </h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/logo.png"/>" alt="...">	</p>
                        <table>
                            <tr>
                                <td><img style="margin-right: 60px;" class="img-thumbnail" src="<c:url value="/assets/img/carlos.bmp"/>" alt="..."></td>

                                <td><img class="img-thumbnail" src="<c:url value="/assets/img/luan.bmp"/>" alt="..."></td>
                            </tr>
                            <tr>
                                <td><p style="margin-right: 60px;">Nome: Carlos Magno</p></td>
                                <td><p>Nome: Luan Limaverde</p></td>
                            </tr>
                            <tr>
                                <td><p style="margin-right: 60px;">Fun��o: Gerente de Projeto</p></td>
                                <td><p>Fun��o: Desenvolvedor</p></td>
                            </tr>
                            <tr>
                                <td><p style="margin-right: 60px;">Forma��o: Tecn�logo em A.D.S</p></td>
                                <td><p>Forma��o: Tecn�logo em A.D.S</p></td>
                            </tr>
                            <tr>
                                <td><p style="margin-right: 60px;">Email: cmagno@gmail.com</p></td>
                                <td><p>Email: Luan.limaverde.a@gmail.com</p></td>
                            </tr>
                        </table>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>                
    </div>                 
</body>
</html>