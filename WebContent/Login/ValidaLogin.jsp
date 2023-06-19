<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    	<%@page import="Dao.PacienteDao" %>
    	<%@page import="Model.Paciente" %>
    	
    	<%
    	
    		PacienteDao pacienteDao = new PacienteDao();
    		Paciente paciente = pacienteDao.FazerLogin(request.getParameter("email"), request.getParameter("senha"));
    		if (paciente == null){
    			System.out.println("Deu errado!");
    			response.sendRedirect("../site.html");
    		}else {
    			session.setAttribute("idpaciente", paciente.getIdpaciente());
    			response.sendRedirect("./RespostaLogin.jsp");
    			System.out.println("Deu certo!");
    		}
    	
    	%>