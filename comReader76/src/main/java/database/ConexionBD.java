package database;
import java.sql.*;

/**
 * Created by florencio on 10/06/17.
 */
public class ConexionBD {
    static String bd = "76analysis";
    //static String bd = "sys";
    static String login = "root";
    static String password = "Asp123asp";
    static String url = "jdbc:mysql://localhost:3306/"+bd;


    public Connection openConn() throws Exception{
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            conn = DriverManager.getConnection(url, login, password);

            if (conn != null) {
                System.out.println("Conexión de datos " + url + " ... Ok");
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }
        return conn;
    }


    public void closeConn(Connection conn) throws Exception{
        conn.close();
    }

    /*
    public void getMySql() throws Exception {
        Connection conni = null;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            conni = DriverManager.getConnection(url, login, password);

            if (conni != null) {
                System.out.println("Conexión de datos " + url + " ... Ok");

         PreparedStatement stmt = conni.prepareStatement("SELECT * FROM 76analysis.search;");
         ResultSet rs = stmt.executeQuery();

         while (rs.next()) {
         //System.out.println(rs.getString("nameHashtag"));
             System.out.println(rs.getString("variable"));
         }
        conni.close();

            }
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }*/

    public void insertTtotal() throws Exception{
        ConexionBD conn = new ConexionBD();
        Connection con = conn.openConn();

        PreparedStatement stmt = con.prepareCall("{call setOutputTot(?,?,?,?)}");
        stmt.setString(1,"#women");
        stmt.setInt(2, 3);
        stmt.setInt(3, 3);
        stmt.setInt(4, 0);
        stmt.execute();
        PreparedStatement stmtt = con.prepareStatement("SELECT * FROM output_tot");
        ResultSet rs = stmtt.executeQuery();
        while (rs.next()) {
            System.out.println(rs.getString("id"));
        }

        //PreparedStatement stmt = con.prepareStatement("SELECT * FROM 76analysis.search;");
        //ResultSet rs = stmt.executeQuery();

        //while (rs.next()) {
        //    System.out.println(rs.getString("nameHashtag"));
        //}

        conn.closeConn(con);
    }

}
