<g:set var="usuarios" value="${usuarios?:''}"/>
%{-- <g:set var="usuario" value="${usuario?:''}"/> --}%
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="administracao"/>
    <title>Inicio - Quer Comprar?</title>
    <asset:stylesheet src="compra.css"/>
    <asset:javascript src="compra.js"/>
  </head>
  <body>
    <!-- Begin page content -->
    <div class="container">
      <div class="page-header">
        <h3>Usuário</h3>
      </div>
      <g:if test="${flash.error}">
            <div class="alert alert-danger" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                ${flash.error}
            </div>
      </g:if>
      <g:if test="${flash.message}">
            <div class="alert alert-success" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                ${flash.message}
            </div>
      </g:if>
      <div class="row">
        <g:form name="formUsuario" action="salvar" class="form-horizontal">
          %{-- id --}%
          <input type="hidden" name="id_usuario" id="id_usuario" value="${usuario?.id_usuario}">
          %{-- nome --}%
          <div class="form-group">
              <label for="inputNome" class="col-sm-2 control-label">Nome</label>
              <div class="col-sm-4">
                <g:field name="no_usuario" type="text" class="form-control" placeholder="Digite o nome do usuário" required="true" value="${usuario?.no_usuario}"/>
              </div>
          </div>
          %{-- email --}%
          <div class="form-group">
              <label for="inputEmail" class="col-sm-2 control-label">Email</label>
              <div class="col-sm-4">
                <g:field name="de_email" type="email" class="form-control" placeholder="Digite o email do usuário" required="true" value="${usuario?.de_email}"/>
              </div>
          </div>
          %{-- cpf --}%
          <div class="form-group">
              <label for="inputCpf" class="col-sm-2 control-label">CPF</label>
              <div class="col-sm-4">
                <g:field name="nu_cpf" type="text" class="form-control" placeholder="Digite o CPF do usuário" required="true" value="${usuario?.nu_cpf}"/>
              </div>
          </div>
          <div class="form-group">
              <div class="col-sm-4 col-sm-offset-2">
                <g:submitButton name="salvar" value="Gravar" class="btn"/>
                <input class="btn" type="button" onclick="$('#formUsuario').get(0).reset()" value="Limpar">
              </div>
          </div>
        </g:form>
      </div>
      <div class="row">
        <h3>Tabela de Usuários</h3>
        <hr/>
        <table id="tabelaApoio" class="table table-condensed table-hover">
          <thead>
            <tr>
              <th> - # - </th>
              <th>Nome do Usuário</th>
              <th>Email</th>
              <th>CPF</th>
              <th>Ação</th>
            </tr>
          </thead>
          <tbody>
          <g:each var="u" in="${usuarios}" status="i">
            <tr>
              <td>${i+1}</td>
              <td>${u?.no_usuario}</td>
              <td>${u?.de_email}</td>
              <td>${u?.nu_cpf}</td>
              <td>
                <button type="button" class="btn btn-link">
                  <a href="${createLink(action: 'editar', id: u?.id_usuario)}">Editar</a>
                </button>
                <button type="button" class="btn btn-link">
                  <a href="${createLink(action: 'list', id: u?.id_usuario)}">Desativar</a>
                </button>
                <button type="button" class="btn btn-link">
                  <a href="${createLink(action: 'list', id: u?.id_usuario)}">Excluir</a>
                </button>
                <button type="button" class="btn btn-link">
                  <a href="${createLink(action: 'list', id: u?.id_usuario )}">Gerar nova senha</a>
                </button>
              </td>
            </tr>
          </g:each>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>