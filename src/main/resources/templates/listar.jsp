<!DOCTYPE html>

<html xmlns:th="http://www.thymeleaf.org">
<head>

<style>
tr th{
border-style:solid;
margin-right:25px; 
}</style> 

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/leitor/cadastrar">Leitores</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/leitor/cadastrar">Início</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Leitores
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/leitor/cadastrar">Cadastrar</a></li>
          <li><a href="/leitor/listar">Listar</a></li>
        </ul>
      
   
    </ul>
  </div>
</nav>


	<div class="container">
		<h2 th:text="${mensagem}"></h2>

		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>E-mail</th>
					<th>Telefone</th>
					
					
				</tr>
			</thead>
			<tbody>
				<tr th:each="leitor: ${lista}">
					<td th:text="${leitor.id}">${leitor.id}</td>
					<td th:text="${leitor.nome}">${leitor.nome}</td>
					<td th:text="${leitor.email}">${leitor.email}</td>
					<td th:text="${leitor.telefone}">${leitor.telefone}</td>
					
					
					
				</tr>
			</tbody>
			
		</table>
		<a href="/leitor/cadastrar">Voltar para a tela de cadastro</a>
	</div>
	
	

</body>


</html>