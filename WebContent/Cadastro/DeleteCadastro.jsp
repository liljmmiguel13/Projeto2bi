	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ page import="Dao.PacienteDao"%>
	
	<%
	if (session.getAttribute("idpaciente") == null) {
		response.sendRedirect("../site.html");
		System.out.println("deu ruim menoh");
	} else {
		
		PacienteDao pacienteDao = new PacienteDao();
		pacienteDao.DeletePaciente(request.getParameter("delete_cad"));
		response.sendRedirect("../Cadastro/Cadastro.jsp");
	}
	%>