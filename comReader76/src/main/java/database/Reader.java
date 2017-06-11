package database;

import main.Main;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.Cell;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.client.ResultScanner;
import org.apache.hadoop.hbase.client.Table;
import org.apache.hadoop.hbase.util.Bytes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import database.ConexionBD;

/**
 * Created by florencio on 10/06/17.
 */
public class Reader {
    private static final String CF  = "cf";
    private static final String C   = "c";
    private static final String CU  = "cu";
    private static final String OTC = "otc";
    private static final String TH  = "th";
    private static final String TW  = "tw";

    private static Table hTable;
    private static final String HBASE_CONFIGURATION_ZOOKEEPER_QUORUM = "hbase.zookeeper.quorum";
    private static final String HBASE_CONFIGURATION_ZOOKEEPER_CLIENTPORT = "hbase.zookeeper.property.clientPort";
    private static final String ZOOKEEPER_ZNODE_PARENT = "zookeeper.znode.parent";
    private static final Logger logger = LoggerFactory.getLogger( Main.class );

    public void read(String tipoTbl) throws Exception {
        Configuration conf = HBaseConfiguration.create();
        conf.set( HBASE_CONFIGURATION_ZOOKEEPER_QUORUM, "192.168.111.134" );
        conf.setInt( HBASE_CONFIGURATION_ZOOKEEPER_CLIENTPORT, 2181 );
        conf.set( ZOOKEEPER_ZNODE_PARENT, "/hbase_znode" );
        ConexionBD pIns = new ConexionBD();
        //nombre de la tabla
        hTable = ConnectionFactory.createConnection( conf ).getTable( TableName.valueOf( "ssanalysis:"+ tipoTbl ) );

        ResultScanner scanner = hTable.getScanner( CF.getBytes() );
        Iterator<Result> iterator = scanner.iterator();
        while ( iterator.hasNext() ) {
            Result result = iterator.next();

            //conteo tweets
            byte[] bs = result.getRow();
            String xValue = Bytes.toString( bs );

            xValue = xValue.toString();
            xValue = xValue.substring(2, xValue.length());

            //System.out.println( "Result for row: " + new String( result.getRow() ) + ", LLAVE " + xValue.toString() );

            //conteo tweets
            String cValue = red_aux(result, CF.getBytes(), C.getBytes());
            //System.out.println( "Result for row: " + new String( result.getRow() ) + ", CONTEO_TWEET: " + cValue.toString() );

            //conteo usuarios
            String cuValue = red_aux(result, CF.getBytes(), CU.getBytes());
            //System.out.println( "Result for row: " + new String( result.getRow() ) + ", CONTEO_USER: " + cuValue.toString() );

            //conteo otros hashtag
            String otcValue = red_aux(result, CF.getBytes(), OTC.getBytes());
            //System.out.println( "Result for row: " + new String( result.getRow() ) + ", CONTEO_OTROS_HASHTAGS: " + otcValue.toString() );

            //top hashtags
            Cell cell  = result.getColumnLatestCell( CF.getBytes(), TH.getBytes());
            byte[] valueArrayth = cell.getValueArray();
            byte[] bsh = Bytes.copy( valueArrayth, cell.getValueOffset(), cell.getValueLength() );
            String thValue = Bytes.toString( bsh );

            if (tipoTbl == "output_tot") {
                insert("setOutputTot", "setTopHashtag", "setTopWord", cell, thValue, xValue, result, pIns, Integer.parseInt(cValue), Integer.parseInt(cuValue), Integer.parseInt(otcValue));
            }
            else if (tipoTbl == "output_day") {
                insert("setOutputDay", "setTopDayHashtag","setTopDayWord", cell, thValue, xValue, result, pIns, Integer.parseInt(cValue), Integer.parseInt(cuValue), Integer.parseInt(otcValue));
            }
            else {
                insert("setOutputHr", "setTopHrHashtag", "setTopHrWord", cell, thValue, xValue, result, pIns, Integer.parseInt(cValue), Integer.parseInt(cuValue), Integer.parseInt(otcValue));
            }
        }
    }

    //para obtener los registros
    private String red_aux(Result result, byte[] CF, byte[] CX){

        Cell cell = result.getColumnLatestCell( CF, CX);
        byte[] valueArray = cell.getValueArray();
        byte[] bs = Bytes.copy( valueArray, cell.getValueOffset(), cell.getValueLength() );
        String xValue = Bytes.toString( bs );

        return xValue;
    }

    public void cleanTemp()throws Exception{
        ConexionBD cleanT = new ConexionBD();
        cleanT.cleanTemp();
    }

    public void insert(String procGrainedName, String procTopHashName, String procTopWordName, Cell cell, String thValue, String xValue,
                       Result result, ConexionBD pIns, int cValue, int cuValue, int otcValue) throws Exception{
        //separando lista de top hashtags
        String[] tagsArray =  thValue.split(",");
        System.out.println( "Top Hashtags: {");
        for(String tg: tagsArray){
            String[] tagsArrayVal = tg.split(":");
            pIns.insertTop(procTopHashName,xValue,tagsArrayVal[0].toString(), Integer.parseInt(tagsArrayVal[1].toString()));
        }
        System.out.println( "}");
        //top words
        cell  = result.getColumnLatestCell( CF.getBytes(), TW.getBytes());
        byte[] valueArraytw = cell.getValueArray();
        byte[] bst = Bytes.copy( valueArraytw, cell.getValueOffset(), cell.getValueLength() );
        String twValue = Bytes.toString( bst );

        //separando lista de top words
        String[] wordsArray =  twValue.split(",");
        System.out.println( "Top Words: {");
        for(String wd: wordsArray){
            String[] tagsArrayVal = wd.split(":");
            pIns.insertTop(procTopWordName,xValue,tagsArrayVal[0].toString(), Integer.parseInt(tagsArrayVal[1].toString()));
        }
        System.out.println( "}");
        pIns.insertGrained(procGrainedName, xValue.toString(), cValue, cuValue, otcValue);
    }

}
