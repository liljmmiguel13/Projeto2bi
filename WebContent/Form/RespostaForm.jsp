<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	
	<%@page import="Dao.Info_pacienteDao"%>
	<%@page import="Model.Info_paciente"%>
	<%@page import="Dao.FormularioDao"%>
	<%@page import="Model.Formulario"%>
	
    <%
	
    boolean ok = false;
    
    Info_paciente info_paciente = new Info_paciente();
    info_paciente.setNome_pai(request.getParameter("nome_pai"));
    info_paciente.setNome_mae(request.getParameter("nome_mae"));
    info_paciente.setTelefone_emergencia(request.getParameter("tel_emerg"));
    info_paciente.setTipo_sangue(request.getParameter("tipo_sangue"));
    
    Formulario formulario = new Formulario();
    formulario.setPergunta1(request.getParameter("def"));
    formulario.setPergunta2(request.getParameter("prob"));
    formulario.setPergunta3(request.getParameter("doenca"));
    formulario.setPergunta4(request.getParameter("estado"));
    formulario.setPergunta5(request.getParameter("telefone"));
    formulario.setPergunta6(request.getParameter("telefone"));
    formulario.setPergunta7(request.getParameter("telefone"));
    
	PacienteDao pacienteDao = new PacienteDao();
	ok = pacienteDao.InserirPaciente(paciente);
	
	if(ok){
		
	%>
	<script type="text/javascript">
	alert("Paciente Cadastrado Com Sucesso! Agora preencha o Formulário de Saúde!");
	window.location.href="Cadastro.jsp";
	</script>
	<%}else{ %>
	<script type="text/javascript">
	alert("Erro ao cadastrar Paciente! Por favor, tente novamente");
	window.location.href="Cadastro.jsp";
	</script>
	<%} %>
	