<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Book"%>
<%@page import="model.dao.BookDAO"%>

<!DOCTYPE html>

<html>

<%

    String book_ID = request.getParameter("book_ID");
    String name = request.getParameter("b_name");
    String author = request.getParameter("b_author");
    String genre = request.getParameter("b_genre");
    String state = request.getParameter("b_state");
    String year = request.getParameter("b_year");

    Book book = BookDAO.bookData(Integer.parseInt(book_ID));

    if(name != "") {book.setName(name);}
    if(author != "") {book.setAuthor(author);}
    if(genre != "") {book.setGenre(genre);}
    if(state != "") {book.setState(state);}
    if(year != "") {book.setYear(year);}

    BookDAO.editarLivros(book);


    String url = "<meta http-equiv='refresh' content='0; url=bookList.jsp?user_ID=" + request.getParameter("user_ID") + "'/>";

            out.println("<head>");
            out.println(url);
            out.println("</head>");
%>
<body>
</body>
</html>