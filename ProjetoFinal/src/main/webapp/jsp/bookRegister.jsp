<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Book"%>
<%@page import="model.dao.BookDAO"%>

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

                    <h2>Novo<br>Livro</h2>

                    <form>
                    <%
                                String name = request.getParameter("b_name");
                                String author = request.getParameter("b_author");
                                String genre = request.getParameter("b_genre");
                                String state = request.getParameter("b_state");
                                String year = request.getParameter("b_year");
                                int user_ID = Integer.parseInt(request.getParameter("user_ID"));

                                Book book = new Book(0,name,author,genre,state,year,user_ID);

                                if(BookDAO.registrarLivro(book)){
                                    out.println("<p class='link'>Livro criado com sucesso.<br>Clique <a href='mainmenu.jsp?user_ID=" + user_ID + "'>aqui</a> para retornar.</p>");

                                }else{
                                    out.println("<p class='link'>Falha ao criar o Usuario.<br>Clique <a href='mainmenu.jsp?user_ID=" + user_ID + "'>aqui</a> para tentar novamente.</p>");
                                }

                            %>
                    </form>

                </div>
            </div>


    </body>
</html>