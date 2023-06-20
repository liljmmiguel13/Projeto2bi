<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ page import="Dao.PacienteDao"%>
	<%@ page import="Model.Paciente"%>
	
	<%
	if (session.getAttribute("idpaciente") == null) {
		response.sendRedirect("../");
		System.out.println("deu ruim menoh");
	} else {
		
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
		ok = pacienteDao.UpdatePaciente(paciente);
		response.sendRedirect("../site.html");
	}
	%>