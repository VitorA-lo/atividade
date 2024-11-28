package model;

public class Book {

    private int book_id;
    private String name;
    private String author;
    private String genre;
    private String state;
    private String year;
    private int user_id;

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Book(int book_id, String name, String author, String genre, String state, String year, int user_id) {
        this.book_id = book_id;
        this.name = name;
        this.author = author;
        this.genre = genre;
        this.state = state;
        this.year = year;
        this.user_id = user_id;
    }
}
