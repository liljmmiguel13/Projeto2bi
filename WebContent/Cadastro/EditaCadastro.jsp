<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@page import="Dao.PacienteDao"%>
	<%@page import="Model.Paciente"%>
	
	<%
		
		int idpaciente = (Integer)session.getAttribute("idpaciente");
		PacienteDao pacienteDao = new PacienteDao();
		Paciente paciente = pacienteDao.getPaciente(idpaciente);
	
	%>