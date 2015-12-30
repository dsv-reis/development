<!DOCTYPE html>
<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entrar no sistema</title>
    <asset:stylesheet src="compra.css"/>
    <asset:javascript src="compra.js"/>
    <style type="text/css">
        body {
          padding-top: 40px;
          padding-bottom: 40px;
          background-color: #eee;
        }

        .form-signin {
          max-width: 330px;
          padding: 15px;
          margin: 0 auto;
        }
        .form-signin .form-signin-heading,
        .form-signin .checkbox {
          margin-bottom: 10px;
        }
        .form-signin .checkbox {
          font-weight: normal;
        }
        .form-signin .form-control {
          position: relative;
          height: auto;
          -webkit-box-sizing: border-box;
             -moz-box-sizing: border-box;
                  box-sizing: border-box;
          padding: 10px;
          font-size: 16px;
        }
        .form-signin .form-control:focus {
          z-index: 2;
        }
        .form-signin input[type="email"] {
          margin-bottom: -1px;
          border-bottom-right-radius: 0;
          border-bottom-left-radius: 0;
        }
        .form-signin input[type="password"] {
          margin-bottom: 10px;
          border-top-left-radius: 0;
          border-top-right-radius: 0;
        }
    </style>
</head>
<body>
    ${typeMessage}
    <div class="container">
        
        <g:if test="${flash.error}">
            <div class="alert alert-danger" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                ${flash.error}
            </div>
        </g:if>
        
        <g:form name="myForm" url="[action:'validar',controller:'acesso']" class="form-signin">
            <h2 class="form-signin-heading">Entrar no Sistema</h2>
            <label for="inputEmail" class="sr-only">Email</label>
            <g:field name="email" type="email" class="form-control" placeholder="Digite seu email" required="true" autofocus="true"/>
            <label for="inputPassword" class="sr-only">Senha</label>
            <g:field name="senha" type="password" class="form-control" placeholder="Digite sua senha" required="true" />
            <g:submitButton name="salvar" value="Entrar" class="btn btn-lg btn-primary btn-block" /> <br/>
        </g:form>
    </div>
</body>
</html>
