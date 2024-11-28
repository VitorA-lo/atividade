<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Book"%>
<%@page import="model.dao.BookDAO"%>

<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="pt">
<head>
    <title>The Book Garden | LISTA DE LIVROS</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>

<div class="book_list">

        <%
                    String user_ID = request.getParameter("user_ID");
                    ArrayList<Integer> bookList = BookDAO.listarLivros(user_ID);

                    out.println("<dl>");

                    for (int i=0; i<bookList.size(); i++) {
                      int current = bookList.get(i);
                      Book book = BookDAO.bookData(current);

                      out.println("<dt><h1>" + book.getName() + "</h1></dt>");
                      out.println("<dd><b>Autor</b>: <i>" + book.getAuthor() + "</i></dd>");
                      out.println("<dd><b>Gênero</b>: <i>" + book.getGenre() + "</i></dd>");
                      out.println("<dd><b>Estado</b>: <i>" + book.getState() + "</i></dd>");
                      out.println("<dd><b>Ano de Lançamento</b>: <i>" + book.getYear() + "</i></dd>");
                      String book_edit = "<dd><a href='editarlivro.jsp?user_ID=" + user_ID + "&book_ID=" + book.getBook_id() + "'>Editar Livro</a>";
                      String book_delete = "<a href='bookRemove.jsp?user_ID=" + user_ID + "&book_ID=" + book.getBook_id() + "'>Remover Livro</a></dd>";
                      out.println(book_edit + " | " + book_delete);
                      out.println("<br>");
                    }

                    out.println("</dl>");
                %>

</div>

</body>
</html>