package model.dao;

import model.Book;
import sqlDatabase.sqlConnector;
import java.sql.*;
import java.util.ArrayList;

public class BookDAO {

    public static Boolean registrarLivro(Book book) {
        try {
            String statement = "INSERT INTO Books(name, author, genre, state, year, user_ID)" +
                    " VALUES('_name', '_author', '_genre', '_state', '_year', _user_ID)";
            statement = statement.replace("_name", book.getName());
            statement = statement.replace("_author", book.getAuthor());
            statement = statement.replace("_genre", book.getGenre());
            statement = statement.replace("_state", book.getState());
            statement = statement.replace("_year", book.getYear());
            statement = statement.replace("_user_ID", Integer.toString(book.getUser_id()));

            Connection conn = sqlConnector.connect();
            PreparedStatement preparedStatement = conn.prepareStatement(statement);

            preparedStatement.executeUpdate();
            conn.close();
            return true;

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
        }
        return false;
    }

    public static ArrayList<Integer> listarLivros(String user_ID) {
        try {
            String statement = "SELECT * FROM Books WHERE user_ID = " + user_ID;

            Connection conn = sqlConnector.connect();
            PreparedStatement preparedStatement = conn.prepareStatement(statement);

            ResultSet resultSet = preparedStatement.executeQuery();

            ArrayList<Integer> bookList = new ArrayList<>();

            while (resultSet.next()) {
                bookList.add(resultSet.getInt("ID"));
            }


            conn.close();
            return bookList;

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
        }
        return null;
    }

    public static Book bookData(int book_ID) {
        try {
            String statement = "SELECT * FROM Books WHERE ID = " + book_ID;

            Connection conn = sqlConnector.connect();
            PreparedStatement preparedStatement = conn.prepareStatement(statement);

            ResultSet resultSet = preparedStatement.executeQuery();


            if (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String name = resultSet.getString("name");
                String author = resultSet.getString("author");
                String genre = resultSet.getString("genre");
                String state = resultSet.getString("state");
                String year = resultSet.getString("year");
                int user_id = resultSet.getInt("user_ID");

                Book book = new Book(id,name,author,genre,state,year,user_id);

                conn.close();
                return book;
            }

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
        }
        return null;
    }

    public static boolean removerLivros(String book_ID) {
        try {
            String statement = "DELETE FROM Books WHERE ID = _book_ID";
            statement = statement.replace("_book_ID", book_ID);

            Connection conn = sqlConnector.connect();
            PreparedStatement preparedStatement = conn.prepareStatement(statement);


            preparedStatement.executeUpdate();
            conn.close();
            return true;

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
        }
        return false;
    }

    public static boolean editarLivros(Book book) {
        try {
            Connection conn = sqlConnector.connect();

            String statement = "";

            statement = "UPDATE Books SET name = '" + book.getName() + "' WHERE ID = " + book.getBook_id();
            conn.prepareStatement(statement).executeUpdate();

            statement = "UPDATE Books SET author = '" + book.getAuthor() + "' WHERE ID = " + book.getBook_id();
            conn.prepareStatement(statement).executeUpdate();

            statement = "UPDATE Books SET genre = '" + book.getGenre() + "' WHERE ID = " + book.getBook_id();
            conn.prepareStatement(statement).executeUpdate();

            statement = "UPDATE Books SET state = '" + book.getState() + "' WHERE ID = " + book.getBook_id();
            conn.prepareStatement(statement).executeUpdate();

            statement = "UPDATE Books SET year = '" + book.getYear() + "' WHERE ID = " + book.getBook_id();
            conn.prepareStatement(statement).executeUpdate();

            conn.close();
            return true;

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
        }
        return false;

    }
}
