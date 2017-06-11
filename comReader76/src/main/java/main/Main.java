package main;

import database.Reader;
import database.ConexionBD;

/**
 * Created by florencio on 10/06/17.
 */
public class Main {

    public static void main(String[] args) throws Exception
    {
        Reader hbase_reader = new Reader();
        hbase_reader.read();

        ConexionBD con = new ConexionBD();
        //con.getMySql();
        con.insertTtotal();
    }

}
