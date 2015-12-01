<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <link rel="stylesheet" href="<c:url value='/assets/css/style.css' />">    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="<c:url value='/assets/img/sun.png' />">
        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
        <script src="<c:url value="/assets/js/bootstrap.js" />" type="text/javascript"></script>

        <title>SunsetFilmes</title>
    </head>
    <body style="background-image: url(<c:url value='/assets/img/civilwar_1.jpg'/>); background-attachment:fixed;background-size:cover; background-repeat:no-repeat">

        <c:if test="${not empty login}">
            <center><div class="alert alert-danger alert-dismissible" role="alert">

                    <strong>Acesso Negado!</strong> Email e senha não correspondentes.

                </div></center>

        </c:if>      

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">  
                <a class="navbar-brand" href="#">Sunset Filmes</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="<c:url value="/"/>">Inicial</a></li>
                    <li class="active"><a href="#">Destaque</a></li>
                    <li><a href="#">Contato</a></li>
                    <li><a href="#" style="margin-right:350px;">Capas</a></li>

            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div style="height:560px; ">

    </div>
    <div>
        <div class="row">
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#01">
                    <center> <h4>#01 C.América: O Primeiro Vingador </h4> </center>
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
                    <center> <h4>#09 C.América: Soldado Invernal </h4> </center>
                    <img src="<c:url value="/assets/img/capitao1.jpg"/>" alt="Os Vingadores">
                </a>

            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#10">
                    <center> <h4>#10 Os Guardiões da Galáxia </h4> </center>
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
                        <h4 class="modal-title" align="center"> #01 C.América: O Primeiro Vingador </h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/capitaoamerica1.jpg"/>" alt="...">	</p>
                        <p> Lançamento:	29 de julho de 2011 (2h3min) </p>
                            <p>Dirigido por:	Joe Johnston</p>
                            <p>Com	Chris Evans, Hayley Atwell, Sebastian Stan </p>
                            <p>Gênero:	Ação , Aventura , Ficção científica</p>
                            <p> Nacionalidade:	EUA </p>
                            <p> Classe: Bronze </p> 
                            <p><b>Sinopse:</b></p>
                            <p>2ª Guerra Mundial. Steve Rogers (Chris Evans) é um jovem que aceitou ser voluntário em uma série de experiências que visam criar o supersoldado americano. Os militares conseguem transformá-lo em uma arma humana, mas logo percebem que o supersoldado é valioso demais para pôr em risco na luta contra os nazistas. Desta forma, Rogers é usado como uma celebridade do exército, marcando presença em paradas realizadas pela Europa no intuito de levantar a estima dos combatentes. Para tanto passa a usar uma vestimenta com as cores da bandeira dos Estados Unidos, azul, branca e vermelha. Só que um plano nazista faz com que Rogers entre em ação e assuma a alcunha de Capitão América, usando seus dons para combatê-los em plenas trincheiras da guerra.</p>
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
                        <p> Lançamento:30 de abril de 2008 (2h5min)  </p>
                            <p>Dirigido por:	Jon Favreau</p>
                            <p>Com	Robert Downey Jr., Terrence Howard, Gwyneth Paltrow </p>
                            <p>Gênero:	Ação , Ficção científica</p>
                            <p> Nacionalidade:	EUA </p>
                            <p> Classe: Bronze </p> 
                            <p><b>Sinopse:</b></p>
                            <p>Tony Stark (Robert Downey Jr.) é um industrial bilionário, que também é um brilhante inventor. Ao ser sequestrado ele é obrigado por terroristas a construir uma arma devastadora mas, ao invés disto, constrói uma armadura de alta tecnologia que permite que fuja de seu cativeiro. A partir de então ele passa a usá-la para combater o crime, sob o alter-ego do Homem de Ferro.</p>
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
                        <p> Lançamento:13 de junho de 2008 (1h52min)  </p>
                            <p>Dirigido por:	Louis Leterrier</p>
                            <p>Com	Edward Norton, Liv Tyler, Tim Roth</p>
                            <p>Gênero:	Ação , Fantasia</p>
                            <p> Nacionalidade:	EUA </p>
                            <p> Classe: Bronze </p> 
                            <p><b>Sinopse:</b></p>
                            <p>Vivendo escondido e longe de Betty Ross (Liv Tyler), a mulher que ama, o cientista Bruce Banner (Edward Norton) busca um meio de retirar a radiação gama que está em seu sangue. Ao mesmo tempo ele precisa fugir da perseguição do general Ross (William Hurt), seu grande inimigo, e da máquina militar que tenta capturá-lo, na intenção de explorar o poder que faz com que Banner se transforme no Hulk.</p>
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
                        <p> Lançamento: 30 de abril de 2010 (1h57min)   </p>
                            <p>Dirigido por:	Jon Favreau</p>
                            <p>Com	Robert Downey Jr., Don Cheadle, Scarlett Johansson </p>
                            <p>Gênero:	Ação , Aventura , Ficção científica</p>
                            <p> Nacionalidade:	EUA </p>
                            <p> Classe: Bronze </p> 
                            <p><b>Sinopse:</b></p>
                            <p>Após confessar ao mundo ser o Homem de Ferro, Tony Stark (Robert Downey Jr.) passa a ser alvo do governo dos Estados Unidos, que deseja que ele entregue seu poderoso traje. Com a negativa, o governo passa a desenvolver um novo traje com o maior rival de Stark, Justin Hammer (Sam Rockwell). Jim Rhodes (Don Cheadle), o braço direito de Tony, é colocado no centro deste conflito, o que faz com que assuma a identidade de Máquina de Combate. Paralelamente, Ivan Vanko (Mickey Rourke) cria o alter-ego de Whiplash para se vingar dos atos da família Stark no passado. Para combater Whiplash e a perseguição do governo, Stark conta com o apoio de sua nova assistente, Natasha Romanoff (Scarlett Johansson), e de Nick Fury (Samuel L. Jackson), o diretor da S.H.I.E.L.D.</p>
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
                        <p> Lançamento: 29 de abril de 2011 (1h54min)    </p>
                            <p>Dirigido por: Kenneth Branagh</p>
                            <p>Com	Chris Hemsworth, Natalie Portman, Anthony Hopkins</p>
                            <p>Gênero:	Ação , Fantasia , Aventura</p>
                            <p> Nacionalidade:	EUA </p>
                            <p> Classe: Bronze </p> 
                            <p><b>Sinopse:</b></p>
                            <p>Thor (Chris Hemsworth) estava prestes a receber o comando de Asgard das mãos de seu pai Odin (Anthony Hopkins) quando forças inimigas quebraram um acordo de paz. Disposto a se vingar do ocorrido, o jovem guerreiro desobedece as ordens do rei e quase dá início a uma nova guerra entre os reinos. Enfurecido com a atitude do filho e herdeiro, Odin retira seus poderes e o expulsa para a Terra. Lá, Thor acaba conhecendo a cientista Jane Foster (Natalie Portman) e precisa recuperar seu martelo, enquanto seu irmão Loki (Tom Hiddleston) elabora um plano para assumir o poder. Mas os guerreiros do Deus do Trovão fazem a mesma viagem para buscar o amigo e impedir que isso aconteça. Só que eles não vieram sozinhos e o inimigo está presente para uma batalha que está apenas começando.</p>
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
                        <p> Lançamento: 27 de abril de 2012 (2h22min)     </p>
                            <p>Dirigido por: Joss Whedon</p>
                            <p>Com	Robert Downey Jr., Chris Evans, Mark Ruffalo</p>
                            <p>Gênero:	Ação , Aventura , Ficção científica</p>
                            <p> Nacionalidade:	EUA </p>
                            <p> Classe: Bronze </p> 
                            <p><b>Sinopse:</b></p>
                            <p>Loki (Tom Hiddleston) retorna à Terra enviado pelos chitauri, uma raça alienígena que pretende dominar os humanos. Com a promessa de que será o soberano do planeta, ele rouba o cubo cósmico dentro de instalações da S.H.I.E.L.D. e, com isso, adquire grandes poderes. Loki os usa para controlar o dr. Erik Selvig (Stellan Skarsgard) e Clint Barton/Gavião Arqueiro (Jeremy Renner), que passam a trabalhar para ele. No intuito de contê-los, Nick Fury (Samuel L. Jackson) convoca um grupo de pessoas com grandes habilidades, mas que jamais haviam trabalhado juntas: Tony Stark/Homem de Ferro (Robert Downey Jr.), Steve Rogers/Capitão América (Chris Evans), Thor (Chris Hemsworth), Bruce Banner/Hulk (Mark Ruffalo) e Natasha Romanoff/Viúva Negra (Scarlett Johansson). Só que, apesar do grande perigo que a Terra corre, não é tão simples assim conter o ego e os interesses de cada um deles para que possam agir em grupo.</p>
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