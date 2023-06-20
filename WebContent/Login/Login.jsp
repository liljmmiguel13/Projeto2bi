<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Login - Portal do paciente</title>
    
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
.login{
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
#entrar:hover {
    opacity: 0.8;
  }
  .login_email{
    border-radius: 15px;
    width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  }
  .login_senha{
    border-radius: 15px;
    width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  }
  .login_text{
    font-family: Arial, Helvetica, sans-serif;
  }
  .l_email{
    margin: 8px 0;
    border-radius: 15px;
    border: 10px;
    padding: 5px;
    background-color: aliceblue
  }
  .l_senha{
    margin: 8px 0;
    border-radius: 15px;
    border: 10px;
    padding: 5px;
    background-color: aliceblue;
  }
  .l_text{
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

             <nav>
                <ul class="navbar-ul">
                <li><a href="site.html">Home</a>  </li>
                <li><a href="agendamentos.html">Agendamentos</a>  </li>
                <li><a href="#">Serviços</a>  </li>
                <li><a href="consulta.html">Consulta</a>  </li>
                </ul>
                </nav>
                <ul class="right">
                <li><a class="active" href="login.html">Login</a>  </li>
                <li><a  href="cadastro.html">Cadastro</a>  </li>
                </ul>
        </div>
    </div>
    <div class="main">
                
        <div class="login">
            <form action="ValidaLogin.jsp" method="post">
                <div class="l_text">
                    <h1>Fazer Login</h1><br>
                </div>
                <div class="l_email">
                    <label for="e-mail" class="login_text"><b>E-mail:</b></label>
                <input type="email" class="login_email" name="email" required><br>
                </div>
                <div class="l_senha">
                    <label for="senha" class="login_text"><b>Senha:</b> </label>
                <input type="password"  class="login_senha" name="senha" required><br>
                </div>
                <a id="esquec" href="../Cadastro/Cadastro.jsp"> Esqueceu sua senha? Então faz tudo de novo ai kkk</a><br> <br>
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Lembre de mim
                </label>
                <input type="submit" id="entrar" value="Entrar">
            </form>
            <%
            	String email = request.getParameter("email");
            	String senha = request.getParameter("senha");
            	
            	if(email != null && senha != null && !email.isEmpty() && !senha.isEmpty()) {
            		session.setAttribute("email", email);
            		response.sendRedirect("ValidaLogin.jsp");
            	}
            %>
            
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
