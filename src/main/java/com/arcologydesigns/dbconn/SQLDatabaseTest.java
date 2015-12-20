package com.arcologydesigns.dbconn;

/**
 * Created by Boris on 12/13/2015.
 */

import java.sql.*;
import com.microsoft.sqlserver.jdbc.*;
import org.json.JSONArray;

public class SQLDatabaseTest {

    public static JSONArray jsonArray;

    public static void main(String[] args) {



        String connectionString =
                "jdbc:sqlserver://ads-test.database.windows.net:1433;"
                        + "database=ads-test-db;"
                        + "user=test-user1;"
                        + "password=Germania@543;"
                        + "encrypt=true;"
                        + "trustServerCertificate=false;"
                        + "hostNameInCertificate=*.database.windows.net;"
                        + "loginTimeout=30;";

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        // Declare the JDBC objects.
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        PreparedStatement prepsInsertPerson = null;
        PreparedStatement prepsUpdateAge = null;

        try {
            connection = DriverManager.getConnection(connectionString);

            // INSERT two rows into the table.
            // ...
            // Create and execute an INSERT SQL prepared statement.
            String insertSql = "INSERT INTO T_USER (ID, NAME, JOB_POSITION, EMAIL, SUBJECT_OF_INTEREST) VALUES "
                    + "(NEWID(), 'Test001', '....', '', ''), "
                    + "(NEWID(), 'Test002', '....', '', '');";

            prepsInsertPerson = connection.prepareStatement(
                    insertSql,
                    Statement.RETURN_GENERATED_KEYS);
            //prepsInsertPerson.execute();
            // Retrieve the generated key from the insert.
            //resultSet = prepsInsertPerson.getGeneratedKeys();
            // Iterate through the set of generated keys.
            //while (resultSet.next()) {
              //  System.out.println("Generated: " + resultSet.getString(1));
            //}


            // TRANSACTION and commit for an UPDATE.
            // ...

            // SELECT rows from the table.
            // ...
            // Create and execute a SELECT SQL statement.
            String selectSql = "SELECT * FROM dbo.T_USER";
            statement = connection.createStatement();
            resultSet = statement.executeQuery(selectSql);

            JSONArray a = ResultSetConverter.convert(resultSet);
            SQLDatabaseTest.setJSONArray(a);
            for (int i = 0; i < a.length(); i++)
                System.out.println(a.get(i));



            // Iterate through the result set and print the attributes.
            while (resultSet.next()) {
                System.out.println(resultSet.getString(2) + " "
                        + resultSet.getString(3));
            }

        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            // Close the connections after the data has been handled.
            if (prepsInsertPerson != null) try { prepsInsertPerson.close(); } catch(Exception e) {}
            if (prepsUpdateAge != null) try { prepsUpdateAge.close(); } catch(Exception e) {}
            if (resultSet != null) try { resultSet.close(); } catch(Exception e) {}
            if (statement != null) try { statement.close(); } catch(Exception e) {}
            if (connection != null) try { connection.close(); } catch(Exception e) {}
        }
    }

    public static void setJSONArray(JSONArray a) {
        jsonArray = a;
    }

    public static JSONArray getJsonArray() {
        return jsonArray;
    }

}
