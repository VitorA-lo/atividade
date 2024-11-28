package sqlDatabase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class sqlConnector {

    public static Connection connect() throws ClassNotFoundException {
        // connection string
        String url = "jdbc:sqlite:LibraryDB.db";
        Connection conn = null;

        try{
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection(url);

            System.out.println("Connection to SQLite has been established.");

            return conn;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }

    public static String createUser_Table() {
        String sql = "";
        sql = "CREATE TABLE IF NOT EXISTS 'Users' ("
                + "'ID' INTEGER NOT NULL UNIQUE,"
                + "'username'	TEXT NOT NULL,"
                + "'password'	TEXT NOT NULL,"
                + "PRIMARY KEY('ID' AUTOINCREMENT));";

        return sql;
    }

    public static String createBook_Table() {
        String sql = "";
        sql = "CREATE TABLE IF NOT EXISTS 'Books' ("
            + "'ID'	INTEGER NOT NULL,"
            + "'name'	TEXT NOT NULL,"
	        + "'author'	TEXT NOT NULL,"
	        + "'genre'	TEXT NOT NULL,"
	        + "'state'	TEXT NOT NULL,"
	        + "'year'	INTEGER NOT NULL,"
	        + "'user_ID'	INTEGER NOT NULL,"
	        + "PRIMARY KEY('ID' AUTOINCREMENT),"
	        + "FOREIGN KEY('user_ID') REFERENCES 'Users'('ID'));";


        return sql;
    }

    public static void createDatabase() throws SQLException, ClassNotFoundException {
        String url = "jdbc:sqlite:LibraryDB.db";

        Class.forName("org.sqlite.JDBC");
        Connection conn = DriverManager.getConnection(url);

        PreparedStatement user_table = conn.prepareStatement(createUser_Table());
        user_table.executeUpdate();

        PreparedStatement book_table = conn.prepareStatement(createBook_Table());
        book_table.executeUpdate();

        conn.close();

    }
}
