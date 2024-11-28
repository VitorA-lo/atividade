<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Book"%>
<%@page import="model.dao.BookDAO"%>

<!DOCTYPE html>

<html>

<%
    String url = "<meta http-equiv='refresh' content='0; url=bookList.jsp?user_ID=" + request.getParameter("user_ID") + "'/>";

    out.println("<head>");
    out.println(url);
    out.println("</head>");
%>

<body>
</body>
</html>