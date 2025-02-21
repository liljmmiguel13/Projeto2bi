<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ page import="Dao.AgendamentoDao"%>
	
	<%
	if (session.getAttribute("idpaciente") == null) {
		response.sendRedirect("../site.html");
		System.out.println("deu ruim menoh");
	} else {
		
		AgendamentoDao agendamentoDao = new AgendamentoDao();
		agendamentoDao.DeleteAgendamento(request.getParameter("idconsulta"));
		response.sendRedirect("../Consulta/Consulta.jsp");
}
%>