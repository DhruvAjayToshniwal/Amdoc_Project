package amdocs.training;
import java.sql.DriverManager;
import java.sql.Connection;
public class Connection1 {
   public static void main(String[] args) throws Exception {
      Class.forName("com.mysql.cj.jdbc.Driver");     
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
      if (con == null) {
         System.out.println("JDBC connection is not established");
         return;
      } else
         System.out.println(" JDBC connection is established successfully.\n");
      con.close();
   } 
}