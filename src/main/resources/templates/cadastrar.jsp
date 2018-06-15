<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>
</head>
<body>

<form id="formLeitor"  method="post">
   <label>Leitor</label>
 	 <br> <br>
   <label>Nome</label>
   <input type="text" name="nome" id="nome"/>
   <label>E-mail</label>
   <input type="text" name="email" id="email" />
   <label>Telefone</label>
   <input type="text" name="telefone" id="telefone">
     <br>   <br>
   <input type="button" id="btnGravar" value="Gravar"> 

   </form>
   
   
   
   
   
	
</body>


<script>


$('#btnGravar').click(function(event)){
	debugger;
	var leitor = {
			nome : $("#nome").val();
			telefone : $("#telefone").val();
			email : $("#email").val();
	}
	
	$.ajax({
		url : '/leitor/cadastrar',
		type : 'post',
		contentType : 'application/x-www-form-urlencoded',
		data : leitor,
		dataType : 'json',
		success : function(data, textStatus, jQxhr) {
			console.log(data.mensagem);
		},
		error : function(jqXhr, textStatus, errorThrown) {
			console.log(errorThrown);
		}
	});
}


/* 
Quando enviado o formulário
$('#formLeitor').on('submit', function () {

    // Armazenando objeto do botão para utilizá-lo posteriormente
    var botao = $('#enviar');


    // Enviando formulário
    $(this).ajaxSubmit({

        // Se enviado com sucesso
        success: function (resposta) {
            // Exibindo resposta do servidor
            console.log(resposta);

            // Escondendo indicador de carregamento
            botao.button('reset');
        },

        // Se acontecer algum erro
        error: function () {
            // Escondendo indicador de carregamento
            botao.button('reset');
        }

    });

    // Retorna FALSE para que o formulário não seja enviado de forma convencional
    return false;

});   */

</script>
</html>