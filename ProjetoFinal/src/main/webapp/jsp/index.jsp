<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@page import="model.dao.UserDAO"%>

<!DOCTYPE html>
<html lang="pt">
<head>
    <title>The Book Garden</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
<div class="content">
    <h1>Bem vindo ao The Book Garden</h1>
    <p class="par">The Book Garden, seu novo aliado para organizar e catalogar todos os seus livros de forma prática e eficiente! Com a nossa plataforma online, você pode criar registros personalizados e buscar títulos de maneira rápida. Organize sua coleção literária por author, gênero ou ano de lançamento.</p>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    User user = new User(0,username,password);
    user = UserDAO.validarLogin(user);

    if(user != null) {
        String url = "<meta http-equiv='refresh' content='0; url=../jsp/mainmenu.jsp?user_ID=" + user.getUser_id() + "'/>";

        out.println("<head>");
        out.println(url);
        out.println("</head>");


    }else{
        out.println("<div class='form'>");
        out.println("<p>Registro n encontrado</p");
        out.println("</div>");
    }
%>
</div>
</body>
</html>