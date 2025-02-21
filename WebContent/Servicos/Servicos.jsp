<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@ page import="java.sql.ResultSet"%>
	<%@ page import="Dao.AgendamentoDao"%>
	<%@ page import="Dao.PacienteDao"%>
	<%@ page import="Model.Paciente"%>
	<%@ page import="Model.Agendamento"%>
	<%@ page import="java.util.ArrayList"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Serviços - Portal do paciente</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <style>
    *{
    margin: 0;
    padding: 0;
}
.page-container{
  position: relative;
  min-height: 100vh;
}
.content-wrap{
  padding-bottom: 6.5rem;
}
body{
  background-color: #bbb;
}
.main{
  background-attachment:fixed;
    width: 100%;
    background-color: #bbb;
    background-position: center;
    background-size: cover;
    height: fit-content; 
    margin-top: 29px;
    margin-bottom: 21px;
}


.navbar{
  width: 98vw;
  height: 75px;
  margin: 0;
  display: flex;
  z-index: 20;
  position: sticky;
}
.menu{
  border: 1px solid;
  position: fixed;
  width: 100%;
  align-content: space-around;
  background-color: white;
}
.logo{
  color: red;
  font-size: 41px;
  font-family: 'Courier New', Courier, monospace;
  text-align: center;
  padding-top: 0.5%;
  float: left;
  display: flex;
}
.right{
  float: right;
}
ul{
    list-style-type: none;
    margin: 0;
    position: relative; left:0,9px;
    background-color: white;
    
}
li{
        border-right: 1px solid #bbb;
        float: left;
}
li a {
       width: fit-content;
       display: block;
       color: black;
       text-align: center;
       padding: 14px 16px;
       text-decoration: none;
}
li a:hover:not(.active) {
    background-color: gray;
  }
  .active {
    background-color: #C51919;
}
a{
    font-size: 30px;
      width: 105px; 
      height: 47px ;
       display: block;
       padding: 0;
}
#appearance-select {
 -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background: url(http://www.webcis.com.br/images/imagens-noticias/select/ico-seta-appearance.gif) no-repeat #eeeeee;
    background-position: 218px center;
    text-align:center;
    width: 80px;
    height: 30px;
    border: 1px solid #ddd;
    font-family: Arial, Helvetica, sans-serif;
    font-size:18px
}
footer{
    position: absolute;
    bottom: 0;
  background: #110c0b;
  height: 3.5rem;
  width: 100%;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  color: white;
}
.footer-content{
    background-color: #110c0b;
  text-align: center;
}
.footer-content h3{
  font-size: 1.8rem;
  font-weight: 400;
  line-height: 3rem;
}
.footer-content p{
  max-width: 500px;
  margin: 10px auto;
  line-height: 28px;
  font-size: 14px;
}
.socials{
  background-color: #110c0b;
  list-style: none;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 7px 0 3rem 0;
}
.socials li{
  color: black;
}
.socials a{
  width: 6.6rem;
  color: white;
  text-decoration: none;
}
.socials a i{
  font-size: 1.1rem;
}
.socials a:hover i{
 color:aqua
}
.footer-bottom{
    background-color: #110c0b;
  width: auto;
  text-align: center;
}
.footer-bottom p{
  font-size: 14px;
  word-spacing: 2px;
  text-transform: capitalize;
}
.footer-bottom span{
  text-transform: uppercase;
  opacity: .4;
  font-weight: 200;
}
#form{
  height: fit-content;
}
.table{
width: 100%;
display: table;
border-bottom: 1px solid black;
}
.table-header{
	color: white;
	font-family: Arial, Helvetica, sans-serif;
	   display: table-header-group;
background-color: red;
font-weight: bold;
font-size: 25px;
}
.table-header-cell{
 text-align: center;
 display: table-cell;
padding: 10px;
border-bottom: 1px solid black;
}
.table-body{
display: table-row-group;
background-color: white;
}
.table-row{
display: table-row;
text-align: center;
}
.table-body-cell{
font-family: Arial, Helvetica, sans-serif;
display: table-cell;
border:1px solid black;
padding-bottom:10px;
padding-top:10px;
}
.button {
  font-family:'Open Sans';
  font-size: 16px;
  font-weight:400;
  display:inline-block;
  color:#FFF;
  border-radius: .25em;
  text-shadow: -1px -1px 0px rgba(0,0,0,0.4);
    cursor: pointer;
}

.primary {
  line-height:40px;
  transition:ease-in-out .2s;
  padding: 0 16px;
}

.primary:hover{
  transform:scale(1.02);
  box-shadow:2px 2px 5px rgba(0,0,0,0.20), inset 0 0 0 99999px rgba(0,0,0,0.2);
}
.edit:before, .delete:before {
  font-family: FontAwesome;
  display: inline-block;
  font-size:1rem;
  padding-right:12px;
  background:none;
  color:#FFF;
}
.edit {
  background: #3498db;
  }
  .edit:before {
    content: "\f040";
  }

.delete {
  background: #c0392b;
  }
  .delete:before {
    content: "\f1f8";
  
}

  @media screen and (max-width: 778px) {
    .navbar{
      flex-direction: column;
    }
      .menu{
        flex-direction: column;
        align-items: center;
        justify-content: center;
      }
    .navbar-ul{
      justify-content: center;
      align-items: center;
      width: 100%;
    }
      .icon{
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .logo{
        text-align: center;
      }
      .main{
        margin-top: 75px;
      }
  }
  </style>

<body>
<div class="page-container">
    <div class="content-wrap">
<div class="navbar">
    
    <div class="menu"> 
        <div class="icon">
            <h2 class="logo">Cardiologia</h2>
        </div>
        <ul class="navbar-ul">
        <li><a href="../site.html">Home</a>  </li>
        <li><a href="../Agendamento/Agendamento.html">Agendamentos</a>  </li>
        <li><a class="active" href="Servicos.jsp">Serviços</a>  </li>
        <li><a  href="../Consulta/Consulta.jsp">Consulta</a>  </li>
        </ul>
        <ul class="right">
        <li><a href="../Login/Login.jsp">Login</a>  </li>
        <li><a href="../Cadastro/Cadastro.jsp">Cadastro</a>  </li>
        </ul>
    	</div>
	</div>
	<div class="main">
		<%
			PacienteDao pacienteDao = new PacienteDao();
			AgendamentoDao agendamentoDao = new AgendamentoDao();
			ArrayList<Paciente> pacientes = pacienteDao.getPacientes();
			ArrayList<Agendamento> agendamentos;
		%>
	<label for="paciente" style="text-size:50px">Nome do Paciente:</label>
	<select id="appearance-select" name="paciente">
	<option selected hidden value=""></option>
	<% 
		for (Paciente paciente : pacientes) {
	%>
	
	<option onclick="toggleConsultas(<%=paciente.getIdpaciente()%>)"><%= paciente.getNome() %></option>
	<%
	} 
	%>
	</select>
	<input style="background-color:#C51919;" class="primary button" type="button" onclick="toggleAll()" value="Mostrar Todos">
	
	<input style="background-color:#C51919;" class="primary button" type="button" onclick="hideAll()" value="Esconder Todos">
	<div class="table">
		<div class="table-header">
			<div class="table-header-cell">Data</div>
			<div class="table-header-cell">Local de Morada</div>
			<div class="table-header-cell">Clinica</div>
			<div class="table-header-cell">Medico</div>
			<div class="table-header-cell">Tipo de Atendimento</div>
			<div class="table-header-cell">Nome do Paciente</div>
			<div class="table-header-cell"></div>
			<div class="table-header-cell"></div>
		</div>
	
		<% 
		for (Paciente paciente : pacientes) {
				
	%>
		
		<div class="table-body" id="<%=paciente.getIdpaciente()%>" style="display:none;">
			<% 
			agendamentos = agendamentoDao.getAgendamentos(paciente.getIdpaciente());
			for (Agendamento agendamento : agendamentos) {
				
			
			%>	
			<div class="table-row">
				<div class="table-body-cell"><%= agendamento.getData() %></div>
				<div class="table-body-cell"><%= agendamento.getLocalMorada() %></div>
				<div class="table-body-cell"><%= agendamento.getClinica() %></div>
				<div class="table-body-cell"><%= agendamento.getMedico() %></div>
				<div class="table-body-cell"><%= agendamento.getTipo_atendimento() %></div>
				<div class="table-body-cell"><%= paciente.getNome() %></div>
				<div class="table-body-cell"><form action="../Agendamento/EdicaoServico.jsp"><button type="submit" name="idconsulta" class="button primary edit" value="<%= agendamento.getIdagendamento() %>">Editar Consulta</button></form></div>
				<div class="table-body-cell"><form action="../Agendamento/DeleteAgendamento.jsp"><button type="submit" name="idconsulta" class="button primary delete" value="<%= agendamento.getIdagendamento() %>">Deletar Consulta</button></form></div>
			</div>
			<% 
			}
			%>
		</div>
			
		
	<%
	}
	%>
    
   </div>	
	</div>
</div>
<footer>
   <div class="footer-content">
    <h3>Sobre o Site</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
        sed do eiusmod tempor incididunt ut labore et dolore magna
        aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
        ullamco laboris nisi ut aliquip ex ea commodo consequat. 
        Duis aute irure dolor in reprehenderit in voluptate velit 
        esse cillum dolore eu fugiat nulla pariatur. Excepteur sint 
        occaecat cupidatat non proident, sunt in culpa qui officia 
        deserunt mollit anim id est laborum</p>
        <ul class="socials">
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-whatsapp"></i></a></li>
            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
        </ul>
   </div>
<div class="footer-bottom">
<p>&copy;2023 Cardio. designed by <span>Rodrifer2004</span> Todos os direitos reservados</p>
</div>
</footer>
</div>

<script>
	
	function toggleConsultas(idpaciente) {
		let menu = document.getElementById(idpaciente);
		
		if (menu.style.display == "none") {
			menu.style.display = "table-row-group";
		
		} else if (menu.style.display == "table-row-group") {
			menu.style.display = "none";
		}
	}
	function toggleAll(){
		let todos = document.getElementsByClassName('table-body')
		for(let i=0; i<todos.length;i++){
		todos[i].style.display = "table-row-group"
		}
	}
	function hideAll(){
		let todos = document.getElementsByClassName('table-body')
		for(let i=0; i<todos.length;i++){
		todos[i].style.display = "none"
		}
	}
</script>

</body>
</html>
