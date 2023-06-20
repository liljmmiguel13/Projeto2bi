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
                <li><a class="active" href="Agendamento.html">Agendamentos</a>  </li>
                <li><a href="#">Serviços</a>  </li>
                <li><a href="../Consulta/Consulta.jsp">Consulta</a>  </li>
            </ul>
            <ul class="right">
                <li><a href="../Login/Login.jsp">Login</a>  </li>
                <li><a href="../Cadastro/Cadastro.jsp">Cadastro</a>  </li>
            </ul>
        </div>
    </div>
    <div class="main">
        <h1>Editar Consulta</h1>
        <form action="EditaAgendamento.jsp" method="post">
            <div class="cons_data">
                <h2>Data</h2>
                <div class="">
                <label><b>Data: </b> </label>
                <input type="date" name="data" required> <br>
            </div>

            <div class="cons_morada" >
                <h2>Seu Local de Morada</h2>
                <select name="localMorada" required>
                        <option selected hidden value="">Local de Morada</option>
                        <option value="Belem">Belém</option>
                        <option value="Ananindeua">Ananindeua</option>
                        <option value="Santarem">Santarém</option>
                        <option value="Parauapebas">Parauapebas</option>
                        <option value="Maraba">Marabá</option>
                        <option value="Castanhal">Castanhal</option>
                    </select>
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
                <select name="medico" required>
                        <option selected hidden value="">Médicos Disponíveis</option>
                        <option value="Dr_Fernando_de_Loureiro"> Dr. Fernando de Loureiro - USP 2006 - Belém</option>
                        <option value="Dra_Nathielly_de_Castro_Neves"> Dra. Nathielly de Castro Neves - UEPA 2009 - Ananindeua</option>
                        <option value="Dra_Gracielma_Rosa"> Dra. Gracielma Rosa - Cesupa 2003 - Santarém</option>
                        <option value="Dr_André_Pacheco"> Dr. André Pacheco - UFPA 2005 - Parauapebas</option>
                        <option value="Dr_Murilo_Conde_da_Luz"> Dr. Murilo Conde da Luz - FDT 2072 - Castanhal</option>
                        <option value="Dra_Rosalba_Nascimento"> Dra. Rosalba Nascimento - UFPA 2000 - Marabá</option>
                </select>
            	
                
            </div>
            </div>
            <div class="tipo_consulta">
                <input type="radio" name="tipo_atendimento" value="presencial">Presencial<input type="radio" name="tipo_atendimento" value="online">Online
            </div>
            <input type="submit" value="Editar Consulta">
            </form>
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