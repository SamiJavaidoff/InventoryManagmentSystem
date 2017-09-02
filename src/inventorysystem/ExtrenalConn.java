/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package inventorysystem;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author sami ullah
 */
public class ExtrenalConn {
      static Connection con;
         
         public static void call(){
             try {
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                 con = DriverManager.getConnection("jdbc:odbc:inventory","sa","123");
                 System.out.println("connected");
             }catch(ClassNotFoundException | SQLException e ){
                 System.err.println(" error"+e.getMessage());
             }
         }
   
        
}
