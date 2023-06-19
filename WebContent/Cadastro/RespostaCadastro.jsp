<%@page import="Dao.PacienteDao"%>
<%@page import="Model.Paciente"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	
    boolean ok = false;
    
    Paciente paciente = new Paciente();
    paciente.setEmail(request.getParameter("email"));
    paciente.setSenha(request.getParameter("senha"));
    paciente.setNome(request.getParameter("nome"));
    paciente.setSexo(request.getParameter("sexo"));
    paciente.setDt_nascimento(request.getParameter("dt_nascimento"));
    paciente.setNacionalidade(request.getParameter("nacionalidade"));
    paciente.setCidade(request.getParameter("cidade"));
    paciente.setEstado(request.getParameter("estado"));
    paciente.setTelefone(request.getParameter("telefone"));
    
	PacienteDao pacienteDao = new PacienteDao();
	ok = pacienteDao.InserirPaciente(paciente);
	
	if(ok){
		
	%>
	<script type="text/javascript">
	alert("Paciente Cadastrado Com Sucesso! Agora preencha o Formulário de Saúde!");
	window.location.href="Form.html";
	</script>
	<%}else{ %>
	<script type="text/javascript">
	alert("Erro ao cadastrar Paciente! Por favor, tente novamente");
	window.location.href="Cadastro.jsp";
	</script>
	<%} %>
	
	