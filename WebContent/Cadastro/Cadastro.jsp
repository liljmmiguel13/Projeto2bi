
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	<!DOCTYPE html>
	<html lang="pt-br">
	<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Cadastro - Portal do Paciente</title>
    <script>
        function ValidaSenha(){
            const senha = document.querySelector('input[name=senha]');
            const confirma = document.querySelector('input[name=confirma]');
            if(senha.value === confirma.value){
                document.getElementById('resultado').style.color = "#008B45";
                document.getElementById('resultado').innerHTML = "As senhas são iguais";
                confirma.setCustomValidity('');
            }else{
                document.getElementById('resultado').style.color = "#FF6347";
                document.getElementById('resultado').innerHTML = "as senhas não correspondem";
                confirma.setCustomValidity('as senhas não correspondem');
            }
        }
        
    </script>
    
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
   #esquec{
font-size: medium;
display: contents;
}  
footer{
  background: #110c0b;
  height: auto;
  width: auto;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  padding-top: 40px;
  color: white;
}
.footer-content{
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
  margin: 1rem 0 3rem 0;
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
.cadastro{
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
#entrar{
    background-color: #C51919;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
.right{
  float: right;
}
#entrar:hover {
    opacity: 0.8;
  }
  .cadastro_input{
    border-radius: 15px;
    width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  }
.c_tel{
  border-radius: 15px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
.c_non_text{
  margin: 1rem;
  text-align: center;
  border-radius: 15px;
  padding: 5px;
  background-color: aliceblue;
  display: grid; 
  grid-template-columns: 1fr 1fr; 
    grid-gap: 20px; 
    border: 1px solid black; 
}
.child_non_text{
  margin: 10px; 
}
.child_non_text p{
  display: ruby;
}
  .login_text{
    font-family: Arial, Helvetica, sans-serif;
  }
  .c_border{ 
    border: solid;
    border-width: 10px;
    border-color: aliceblue;
    margin: 8px 0;
    border-radius: 15px;
    padding: 5px;
    background-color: aliceblue
  }
  .c_text{
    text-align: center;
    margin: 8px 0;
    background-color: aliceblue;
    border-radius: 15px;
    border: 10px;
    padding: 5px;
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
    
</head>
<body>
    <div class="navbar">
        <div class="menu"> 
            <div class="icon">
                <h2 class="logo">Cardiologia</h2>
            </div>
            <ul class="navbar-ul">
           	<li><a href="site.html">Home</a>  </li>
            	<li><a href="agendamentos.html">Agendamentos</a>  </li>
            	<li><a href="#">Serviços</a>  </li>
            	<li><a href="consulta.html">Consulta</a>  </li>
            </ul>
            <ul class="right">
            	<li><a href="login.html">Login</a>  </li>
            	<li><a class="active" href="cadastro.html">Cadastro</a>  </li>
            </ul>
        </div>
    </div>
    <div class="main">
                
        <div class="cadastro">
            <form action="RespostaCadastro.jsp" method="post">
                <div class="c_text">
                    <h1>Fazer Cadastro</h1><br>
                </div>

                <div class="c_border">
                    <label for="email" class="login_text"><b>E-mail:</b></label>
                    <input type="email" class="cadastro_input" name="email" required><br>
                </div>

                <div class="c_border">
                    <label for="senha" class="login_text"><b>Senha:</b> </label>
                    <input type="password" onkeyup="ValidaSenha()" id="senha1" class="cadastro_input" name="senha" required><br>
                </div>

                <div class="c_border">
                    <label for="repetir senha" class="login_text"><b>Repetir Senha:</b> </label>
                    <input type="password" onkeyup="ValidaSenha()" id="senha2" class="cadastro_input" name="confirma" required><br>
                </div>
                <p id="resultado"></p><br>

                <div class="c_border">
                    <label for="nome" class="login_text"><b>Nome:</b></label> 
                    <input name="nome" class="cadastro_input" type="text" required><br>
                </div>

                <div class="c_non_text">
                    <div class="child_non_text">
                    <label for="sexo" class="login_text"><b>Sexo: </b></label>
                    <input type="radio" name="sexo" value="Masculino" required>Masculino     <input type="radio" name="sexo" value="Feminino">Feminino 
                    </div>

                    <div class="child_non_text">
                    <label for="dt_nascimento"  class="login_text"><b>Data: </b> </label>
                    <input type="date" name="dt_nascimento" id="dt" required> <br>
                    </div>
                </div>

                <div class="c_border">
                    <label for="nacionalidade" class="login_text"><b>Nacionalidade: </b></label> 
                    <input type="text" class="cadastro_input" name="nacionalidade" required> <br>
                </div>

                <div class="c_border">
                    <label for="cidade" class="login_text"><b>Cidade: </b></label>  
                    <input type="text" class="cadastro_input" name="cidade" required> <br>
                </div>

                <div class="c_border">
                    <label for="estado" class="login_text"><b>Estado: </b></label> 
                    <input type="text" class="cadastro_input" name="estado" required> <br>
                </div>

                <div class="c_border">
                    <label for="telefone" class="login_text"><b>Telefone:</b> </label>  
                    <input type="tel" class="c_tel" name="telefone" id="telefone" placeholder="(99)99999-9999" 
                    pattern="^\(?[1-9]{2}\)? ?(?:[2-8]|9[1-9])[0-9]{3}\-?[0-9]{4}$" required>
                </div>
				<a id="jatem" href="../Login/Login.jsp"> Já tem um conta? Então clique aqui!</a>
                    <br><br><br><br>
                <input type="submit" id="entrar" value="Cadastrar">
            </form>
            
            <form action="DeleteCadastro.jsp" >
            
            	<input type="submit" name="n123" id="entrar" value="1">
            
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
</body>
</html>
