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


    //inserta en la tabla temporal total
    public void insertGrained(String prodName, String key, int c, int cu, int otc) throws Exception{
        Connection con = this.openConn();

        PreparedStatement stmt = con.prepareCall("{call " + prodName + "(?,?,?,?)}");
        stmt.setString(1,key);
        stmt.setInt(2, otc);
        stmt.setInt(3, cu);
        stmt.setInt(4, c);
        stmt.execute();

        /*PreparedStatement stmtt = con.prepareStatement("SELECT * FROM output_tot");
        ResultSet rs = stmtt.executeQuery();
        while (rs.next()) {
            System.out.println(rs.getString("id"));
        }*/

        this.closeConn(con);
    }

    //inserta en la tabla temporal total
    public void insertTop(String prodName, String hashtag, String tag, int count) throws Exception{
        Connection con = this.openConn();

        PreparedStatement stmt = con.prepareCall("{call " + prodName + "(?,?,?)}");
        stmt.setString(1,hashtag);
        stmt.setString(2, tag);
        stmt.setInt(3, count);
        stmt.execute();

        this.closeConn(con);
    }

    //limpiar tablas temporales
    public void cleanTemp() throws Exception{
        Connection con = this.openConn();

        PreparedStatement stmt = con.prepareCall("{call truncTemp()}");
        stmt.execute();

        this.closeConn(con);
    }

}
