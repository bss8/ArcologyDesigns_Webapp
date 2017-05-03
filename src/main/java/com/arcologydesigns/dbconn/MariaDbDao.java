package com.arcologydesigns.dbconn;

import java.sql.*;

/**
 * Created by boris on 5/2/2017.
 */
public class MariaDbDao {

    private static String database;
    private static String user;
    private static String password;



    private String newUserName;
    private String newUserEmail;
    private String newUserPassword;


    public MariaDbDao() {
        database = "arcologydesignsdb";
        user = "borisremote";
        password = "eNDTbArtQrGcbJ76x987e4Q3Fv5izV";
    }
    public void connectMariaDb() {



        String connectionString =
                "";
//                        + "&user=" + user
//                        + "&password=" + password
//                        + "&trustServerCertificate=false"
//                        + "&useSSL=true"
//                        + "&connectTimeout=10000";

        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            //"jdbc:mariadb://localhost:3306/DB?user=root&password=myPassword"
            Connection connection = DriverManager.getConnection(connectionString);
            System.out.println("got this far 1 ");
            insertNewUser(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    private void insertNewUser(Connection connection) throws SQLException {
        PreparedStatement prepsInsertUser = null;

        String addUserName = getNewUserName();
        String addUserEmail = getNewUserEmail();
        String addUserPassword = getNewUserPassword();

        // INSERT new user in database
        String insertUsersSql = "INSERT INTO USERS ( USERNAME, EMAIL, PASSWORD, ENABLED) VALUES "
                + "(?, ?, ?, ?)";

        prepsInsertUser = connection.prepareStatement(insertUsersSql);
        prepsInsertUser.setString(1,addUserName);
        prepsInsertUser.setString(2, addUserEmail);
        prepsInsertUser.setString(3, addUserPassword);
        prepsInsertUser.setInt(4, 1);

        prepsInsertUser.execute();

        System.out.println("got this far 2");

        PreparedStatement prepsInsertUserRole = null;
        // INSERT user's role in database
        String insertUserRoleSql = "INSERT INTO USER_ROLES ( USERNAME, USER_ROLE) VALUES "
                + "(?, ?)";
        prepsInsertUserRole = connection.prepareStatement(insertUserRoleSql);
        prepsInsertUserRole.setString(1, addUserName);
        prepsInsertUserRole.setString(2, "USER");


    }

    private String getNewUserName() {
        return newUserName;
    }

    public void setNewUserName(String newUserName) {
        this.newUserName = newUserName;
    }

    private String getNewUserEmail() {
        return newUserEmail;
    }

    public void setNewUserEmail(String newUserEmail) {
        this.newUserEmail = newUserEmail;
    }

    private String getNewUserPassword() {
        return newUserPassword;
    }

    public void setNewUserPassword(String newUserPassword) {
        this.newUserPassword = newUserPassword;
    }

}
