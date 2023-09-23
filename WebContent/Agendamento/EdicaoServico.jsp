<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Agendamentos</title>
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
    padding-bottom: 2.5rem;
}
body{
  background-color: #bbb;
}
.main{
    width: 100%;
    background-color: #bbb;
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
#Escolhelugar select{
  max-width: 5% ;
  min-width: 5%;
}
#medico select{
  max-width: 5%;
  min-width: 5%;
}
#consulta{
background-color: #C51919;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 100%;
}
footer{
    position: absolute;
    bottom: 0;
  background: #110c0b;
  height: 2.5rem;
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
.agendamento{
    box-shadow: 5px 5px 30px rgba(0,0,0,0.2);
      height: auto;
    background-color: white;
    position: relative;
    top: 25%;
    left: 25%;
    width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  box-sizing: border-box;
    }
    .cons_data{
      background-color: aliceblue;
      border-radius: 15px;
    width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
    }
    .cons_morada{
      background-color: aliceblue;
      border-radius: 15px;
    width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
    }
    .cons_clinica{
      background-color: aliceblue;
      border-radius: 15px;
    width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
    }
    .cons_medico{
      background-color: aliceblue;
      border-radius: 15px;
    width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
    }
    .tipo_consulta{
        display: inline-flex;
        width: 400px;
        align-items: center;
        justify-content: space-evenly;
        padding: 20px 15px;
    }
    .tipo_consulta .opcao{
  background: #fff;
  height: 100%;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  margin: 0 10px;
  border-radius: 5px;
  cursor: pointer;
  padding: 0 10px;
  border: 2px solid lightgrey;
  transition: all 0.3s ease;
}
.tipo_consulta .opcao .ponto{
  height: 20px;
  width: 20px;
  background: #d9d9d9;
  border-radius: 50%;
  position: relative;
}
.tipo_consulta .opcao .ponto::before{
  position: absolute;
  content: "";
  top: 4px;
  left: 4px;
  width: 12px;
  height: 12px;
  background: #c51919;
  border-radius: 50%;
  opacity: 0;
  transform: scale(1.5);
  transition: all 0.3s ease;
}
input[type="radio"]{
  display: none;
}
#presencial:checked:checked ~ .presencial,
#online:checked:checked ~ .online{
    border-color: #c51919;
  background: #c51919;
}
#presencial:checked:checked ~ .presencial .ponto,
#online:checked:checked ~ .online .ponto{
    background: #fff;
}
#presencial:checked:checked ~ .presencial .ponto::before,
#online:checked:checked ~ .online .ponto::before{
opacity: 1;
transform: scale(1);
}
.tipo_consulta .opcao span{
    font-size: 20px;
    color: #808080;
}
#presencial:checked:checked ~ .presencial span,
#online:checked:checked ~ .online span{
    color: #fff;
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
                <li><a href="Agendamento.html">Agendamentos</a>  </li>
                <li><a href="../Servico.jsp" class="active">Serviços</a>  </li>
                <li><a href="../Consulta/Consulta.jsp">Consulta</a>  </li>
            </ul>
            <ul class="right">
                <li><a href="../Login/Login.jsp">Login</a>  </li>
                <li><a href="../Cadastro/Cadastro.jsp">Cadastro</a>  </li>
            </ul>
        </div>
    </div>
    <div class="main">
    <div class ="agendamento">
        <h1>Editar Serviço</h1>
        <form action="EditaServico.jsp" method="post">
        <input hidden type="text" name="idconsulta" value="<%=request.getParameter("idconsulta")%>">
            <div class="cons_info">
                

            <div class="cons_morada" >
                <h2>Seu Local de Morada</h2>
                
            </div>
            
            <div class="cons_clinica" >
                <h2>Clinicas para Atendimento</h2>
                <select name="clinica" required>
                        <option selected hidden value="">Clinicas Disponíveis</option>
                        <option value="Dr_Rodrigo_Souza_Cardiologista">Dr. Rodrigo Souza Cardiologista - Belém</option>
                        <option value="Centrocor_Clínica_de_Cardiologia">Centrocor Clínica de Cardiologia - Ananindeua</option>
                        <option value="Clínica_Recardio">Clínica Recardio - Santarém</option>
                        <option value="Clínica_Fênix">Clínica Fênix - Parauapebas</option>
                        <option value="Clínica_Dr_Vitor_de_Holanda">Clínica Dr Vitor de Holanda - Castanhal</option>
                        <option value=" Clínica_Odara"> Clínica Odara - Marabá</option>
                </select>
            </div>

            <div class="cons_medico">
            	<h2>Médicos</h2>
            	
                
            </div>
            <div class="cons_data">
              <h2>Data</h2>
            <input type="date" name="data" required> <br>
        </div>
            </div>
            <div class="tipo_consulta">
                <input type="radio" name="tipo_atendimento" value="presencial" id="presencial">
                <input type="radio" name="tipo_atendimento" value="online" id="online">
                <label for="presencial" class="opcao presencial">
                    <div class="ponto"></div>
                    <span>Presencial</span>
                 </label>
                
                <label for="online" class="opcao online">
                    <div class="ponto"></div> 
                    <span>Online</span>
                </label>
                </div>
            <input type="submit" id="consulta" value="Editar Consulta">
            </form>
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
</body>
</html>
