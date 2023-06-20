	<%@page import="Dao.AgendamentoDao"%>
	<%@page import="Model.Agendamento"%>

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	
    boolean ok = false;
    
    Agendamento agendamento = new Agendamento();
    agendamento.setData(request.getParameter("data"));
    agendamento.setLocalMorada(request.getParameter("localMorada"));
    agendamento.setClinica(request.getParameter("clinica"));
    agendamento.setMedico(request.getParameter("medico"));
    agendamento.setTipo_atendimento(request.getParameter("tipo_atendimento"));
    
    
	AgendamentoDao agendamentoDao = new AgendamentoDao();
	ok = agendamentoDao.InserirAgendamento(agendamento);
	
	if(ok){
		
	%>
	<script type="text/javascript">
	alert("Agendamento Cadastrado Com Sucesso!");
	window.location.href="../site.html";
	</script>
	<%}else{ %>
	<script type="text/javascript">
	alert("Erro ao cadastrar Paciente! Por favor, tente novamente");
	window.location.href="Cadastro.jsp";
	</script>
	<%} %>
	