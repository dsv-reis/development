<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="compra.css"/>
    <asset:javascript src="compra.js"/>
    <g:layoutHead/>
    <style type="text/css">
    html {
      position: relative;
      min-height: 100%;
    }
    body {
      margin-bottom: 60px;
    }
    .footer {
      position: absolute;
      bottom: 0;
      width: 100%;
      height: 60px;
      background-color: #f5f5f5;
    }

    body > .container {
      padding: 60px 15px 0;
    }
    .container .text-muted {
      margin: 20px 0;
    }

    .footer > .container {
      padding-right: 15px;
      padding-left: 15px;
    }

    code {
      font-size: 80%;
    }
  </style>
</head>
<body>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Quer Comprar?</a>
            </div>
            %{-- menus --}%
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#">Usuario</a></li>
                    <li><a href="#">Perfil</a></li>
                    <li><a href="#">Modulo</a></li>
                    <li><a href="#">Vincular</a></li>
                </ul>
        	</div><!--/.nav-collapse -->
    	</div>
	</nav>
	<g:layoutBody/>
	<footer class="footer">
      <div class="container">
        <p class="text-muted">E aí, quer comprar? by Rayldo Reis - 2016</p>
      </div>
	</footer>
</body>
</html>