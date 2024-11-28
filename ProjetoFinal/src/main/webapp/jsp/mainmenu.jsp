<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt">
<head>
    <title>The Book Garden | MENU</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>

    <header>
        <div class="title">
            <h1>The Book Garden</h1>
        </div>
        <div class="button">
        <%
            String user_ID = request.getParameter("user_ID");
            out.println("<a href='registrarlivro.jsp?user_ID=" + user_ID + "' class='btn'>Registrar Livro</a>");
            out.println("<a href='bookList.jsp?user_ID=" + user_ID + "' class='btn'>Lista de Livros</a>");
        %>
        </div>
    </header>

</body>
</html>