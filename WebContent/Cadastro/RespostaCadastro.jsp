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
    paciente.setNome_pai(request.getParameter("nome_pai"));
    paciente.setNome_mae(request.getParameter("nome_mae"));
    paciente.setTelefone_emergencia(request.getParameter("telefone_emergencia"));
    paciente.setTipo_sangue(request.getParameter("tipo_sangue"));
    
	PacienteDao pacienteDao = new PacienteDao();
	ok = pacienteDao.InserirPaciente(paciente);
	
	if(ok){
		
	%>
	<script type="text/javascript">
	alert("Paciente Cadastrado Com Sucesso! Agora preencha o Formulário de Saúde!");
	window.location.href="../site.html";
	</script>
	<%}else{ %>
	<script type="text/javascript">
	alert("Erro ao cadastrar Paciente! Por favor, tente novamente");
	window.location.href="Cadastro.jsp";
	</script>
	<%} %>
	
	