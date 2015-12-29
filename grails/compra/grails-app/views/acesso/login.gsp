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
</head>
<body>
    <div class="container">
        <form class="form-signin">
            <h2 class="form-signin-heading">Entrar no Sistema</h2>
            <label for="inputEmail" class="sr-only">Email</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Digite seu email" required autofocus>
            <label for="inputPassword" class="sr-only">Senha</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Digite sua senha" required>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
            <div class="cadastre">
                <g:link controller="login" action="form">Cadastre-se no sistema</g:link>
            </div>
        </form>
    </div>
</body>
</html>
