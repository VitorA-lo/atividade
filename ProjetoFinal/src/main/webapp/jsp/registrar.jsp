<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@page import="model.dao.UserDAO"%>

<!DOCTYPE html>
<html lang="pt">
<head>
    <link rel="stylesheet" href="../assets/style.css">
    <title>The Book Garden | REGISTRO</title>
</head>
<body>

        <%
            //Entrada/Receber
            String username = request.getParameter("username");
            String password1 = request.getParameter("password_one");
            String password2 = request.getParameter("password_two");
        %>


            <div class="content">
                <h1>Bem vindo ao The Book Garden</h1>
                <p class="par">The Book Garden, seu novo aliado para organizar e catalogar todos os seus livros de forma prática e eficiente! Com a nossa plataforma online, você pode criar registros personalizados e buscar títulos de maneira rápida. Organize sua coleção literária por author, gênero ou ano de lançamento.</p>

                <div class="form">

                    <h2>Novo<br>Usuario</h2>

                    <form>
                    <%
                        if(password1.equals(password2)){
                                        User user = new User(0,username,password1);

                                        if(UserDAO.registrarLogin(user)){
                                            out.println("<p class='link'>Usuario criado com sucesso.<br>Clique <a href='../index.html'>aqui</a> para retornar.</p>");

                                        }else{
                                            out.println("<p class='link'>Falha ao criar o Usuario.<br>Clique <a href='../html/registrar.html'>aqui</a> para tentar novamente.</p>");
                                        }
                                    }else{
                                        out.println("<p class='link'>Ambas senhas precisam ser iguais<br>Clique <a href='../html/registrar.html'>aqui</a> para tentar novamente.</p>");
                        }
                    %>
                    </form>

                </div>
            </div>


    </body>
</html>