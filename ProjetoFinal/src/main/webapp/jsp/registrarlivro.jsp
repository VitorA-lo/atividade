<!DOCTYPE html>
<html lang="pt">
<head>
    <title>The Book Garden | REGISTRAR LIVRO</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>

<div class="content">
    <h1>Registrar Livro</h1>


    <p class="par">The Book Garden, seu novo aliado para organizar e catalogar todos os seus livros de forma prática e eficiente! Com a nossa plataforma online, você pode criar registros personalizados e buscar títulos de maneira rápida. Organize sua coleção literária por author, gênero ou ano de lançamento.</p>

    <div class="form">

        <h2>Novo<br>Livro</h2>

        <%
        out.println("<form method='post' action='bookRegister.jsp?user_ID=" + request.getParameter("user_ID") + "'>");
        %>

            <input type="text" name="b_name" placeholder="Nome do Livro" required>
            <input type="text" name="b_author" placeholder="Nome do Author" required>
            <input type="text" name="b_genre" placeholder="Gênero do Livro" required>
            <select name="b_state" placeholder="Estado da Leitura" required>
                <option value="Planejando">Planejando</option>
                <option value="Lendo">Sendo Lido</option>
                <option value="Completo">Completo</option>
            <input type="text" name="b_year" placeholder="Ano de Lançamento" required>

                <input type="submit" class="submit_btn" value="Registrar Livro">
        </form>

    </div>
</div>

</body>
</html>