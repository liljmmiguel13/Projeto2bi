	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ page import="Dao.AgendamentoDao"%>
	<%@ page import="Model.Agendamento"%>
	
	<%
	if (session.getAttribute("idpaciente") == null) {
		response.sendRedirect("../Login/Login.jsp");
		System.out.println("deu ruim menoh");
	} else {
		
		boolean ok = false;
		
		AgendamentoDao agendamentoDao = new AgendamentoDao();
		Agendamento agendamento = agendamentoDao.getAgendamento(Integer.parseInt(request.getParameter("idconsulta"))); 
	    agendamento.setData(request.getParameter("data"));
	    agendamento.setLocalMorada(request.getParameter("localMorada"));
	    agendamento.setClinica(request.getParameter("clinica"));
	    agendamento.setMedico(request.getParameter("medico"));
	    agendamento.setTipo_atendimento(request.getParameter("tipo_atendimento"));
	    
		ok = agendamentoDao.UpdateAgendamento(agendamento);
		response.sendRedirect("../Consulta/Consulta.jsp");
	}
	%>
