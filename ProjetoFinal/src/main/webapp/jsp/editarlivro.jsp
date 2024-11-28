<!DOCTYPE html>
<html lang="pt">
<head>
    <title>The Book Garden | EDITAR LIVRO</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>

<div class="content">
    <h1>Editar Livro</h1>

    <div class="form">

        <h2>Editar<br>Livro</h2>

        <%
        out.println("<form method='post' action='bookEdit.jsp?user_ID=" + request.getParameter("user_ID") + "&book_ID=" + request.getParameter("book_ID") + "'>");
        %>

            <input type="text" name="b_name" placeholder="Nome do Livro">
            <input type="text" name="b_author" placeholder="Nome do Author">
            <input type="text" name="b_genre" placeholder="Gênero do Livro">
            <select name="b_state" placeholder="Estado da Leitura">
                <option value="Planejando">Planejando</option>
                <option value="Lendo">Sendo Lido</option>
                <option value="Completo">Completo</option>
            <input type="text" name="b_year" placeholder="Ano de Lançamento">

                <input type="submit" class="submit_btn" value="Registrar Livro">
        </form>

    </div>
</div>

</body>
</html>