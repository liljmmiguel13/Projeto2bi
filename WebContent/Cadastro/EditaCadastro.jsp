<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Dao.PacienteDao"%>
<%
	if (session.getAttribute("idpaciente") == null) {
		response.sendRedirect("../");
		System.out.println("deu ruim menoh");
	} else {
		
		PacienteDao pacienteDao = new PacienteDao();
		pacienteDao.DeletePaciente(request.getParameter("n123"));
		response.sendRedirect("../site.html");
}
%>