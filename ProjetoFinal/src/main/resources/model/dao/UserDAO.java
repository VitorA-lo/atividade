package model.dao;

import model.User;
import sqlDatabase.sqlConnector;
import java.sql.*;

public class UserDAO {

    public static User validarLogin(User user) {
        try {

            sqlConnector.createDatabase();

            String statement = "SELECT * FROM Users WHERE username = '_username' AND password = '_password'";
            statement = statement.replace("_username", user.getUsername());
            statement = statement.replace("_password", user.getPassword());


            Connection conn = sqlConnector.connect();
            PreparedStatement preparedStatement = conn.prepareStatement(statement);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                user.setUser_id(resultSet.getInt("id"));
                conn.close();
                return user;
            }
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
        }

        return null;
    }

    public static Boolean registrarLogin(User user) {
        try {
            String statement = "INSERT INTO Users(username, password)" +
                    " VALUES('_username', '_password')";
            statement = statement.replace("_username", user.getUsername());
            statement = statement.replace("_password", user.getPassword());


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

}
