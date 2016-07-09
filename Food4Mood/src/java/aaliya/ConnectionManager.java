/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author Farheen
 */
package aaliya;
import java.sql.*;
public class ConnectionManager {
    private static Connection con=null;
    public static Connection getConnection() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectfood","root","Aaliya");
        return con;  
    }
    public static int exQuery(String query) throws ClassNotFoundException, SQLException
    {
        con=getConnection();
        Statement stmt = con.createStatement();
        int num = stmt.executeUpdate(query);
        return num;
        
    }
      public static ResultSet exeQuery(String query) throws ClassNotFoundException, SQLException
    {
        con=getConnection();
        Statement stmt = con.createStatement();
       ResultSet rs = stmt.executeQuery(query);
       return rs ;
        
    }
      
    
}
