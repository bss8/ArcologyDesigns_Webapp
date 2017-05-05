package com.arcologydesigns.dbconn;

import org.json.JSONArray;

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

    private String existingUserEmail;
    private String existingUserPassword;


    public MariaDbDao() {
        database = "arcologydesignsdb";
        user = "borisremote";
        password = "eNDTbArtQrGcbJ76x987e4Q3Fv5izV";
    }
    public Boolean connectMariaDb(boolean createNewUserFlag) {


        //TODO: always remove before push
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

            if(createNewUserFlag) {
                System.out.println("Creating new user...");
                insertNewUser(connection);
            } else {
                System.out.println("Checking if user exists...");
                return getUserDataForValidation(connection);
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
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

    private Boolean getUserDataForValidation(Connection connection) throws SQLException {
        String email = getExistingUserEmail();
        String pass = getExistingUserPassword();

        System.out.println("got this far 3");

        String selectSql = "SELECT * FROM USERS WHERE EMAIL = ? AND PASSWORD = ?";
        PreparedStatement statement = connection.prepareStatement(selectSql);
        statement.setString(1,email);
        statement.setString(2, pass);
        ResultSet resultSet = statement.executeQuery();

        System.out.println("got this far 4");

        if (!resultSet.next() ) {
            System.out.println("no data");
            return false;
        } else {
            String rsEmail = resultSet.getString("EMAIL");
            String rsPwd = resultSet.getString("PASSWORD");

            System.out.println("rsEmail: " + rsEmail + "rsPass: " + rsPwd);

            if(rsEmail.equals(email) && rsPwd.equals(pass)) {
                System.out.println("User exists and is valid");
                return true;
            }
        }
        System.out.println("User does not exist and/or is not valid");
        return false;
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

    //
    private String getExistingUserEmail() {
        return existingUserEmail;
    }

    public void setExistingUserEmail(String newUserEmail) {
        this.existingUserEmail = newUserEmail;
    }

    private String getExistingUserPassword() {
        return existingUserPassword;
    }

    public void setExistingUserPassword(String newUserPassword) {
        this.existingUserPassword = newUserPassword;
    }

}
