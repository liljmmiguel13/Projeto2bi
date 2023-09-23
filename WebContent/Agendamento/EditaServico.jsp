	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ page import="Dao.AgendamentoDao"%>
	<%@ page import="Model.Agendamento"%>
	
	<%
		
		boolean ok = false;
		
		AgendamentoDao agendamentoDao = new AgendamentoDao();
		Agendamento agendamento = agendamentoDao.getAgendamento(Integer.parseInt(request.getParameter("idconsulta"))); 
	    agendamento.setData(request.getParameter("data"));
	    agendamento.setClinica(request.getParameter("clinica"));
	    agendamento.setTipo_atendimento(request.getParameter("tipo_atendimento"));
	    
		ok = agendamentoDao.UpdateAgendamentoEditado(agendamento);
		response.sendRedirect("../Consulta/Consulta.jsp");
	%>
