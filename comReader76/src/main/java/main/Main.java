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
        hbase_reader.cleanTemp();
        hbase_reader.read("output_tot");
        hbase_reader.read("output_day");
        hbase_reader.read("output_hr");

        ConexionBD con = new ConexionBD();
        //con.getMySql();
        //con.insertTtotal();
    }

}
