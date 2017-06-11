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
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

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

    public void read() throws IOException {
        Configuration conf = HBaseConfiguration.create();
        conf.set( HBASE_CONFIGURATION_ZOOKEEPER_QUORUM, "192.168.111.134" );
        conf.setInt( HBASE_CONFIGURATION_ZOOKEEPER_CLIENTPORT, 2181 );
        conf.set( ZOOKEEPER_ZNODE_PARENT, "/hbase_znode" );

        //nombre de la tabla
        hTable = ConnectionFactory.createConnection( conf ).getTable( TableName.valueOf( "ssanalysis:output_tot" ) );

        ResultScanner scanner = hTable.getScanner( CF.getBytes() );
        Iterator<Result> iterator = scanner.iterator();
        while ( iterator.hasNext() ) {
            Result result = iterator.next();

            //conteo tweets
            byte[] bs = result.getRow();
            String xValue = Bytes.toString( bs );
            System.out.println( "Result for row: " + new String( result.getRow() ) + ", LLAVE " + xValue.toString() );

            //conteo tweets
            Object cValue = red_aux(result, CF.getBytes(), C.getBytes());
            System.out.println( "Result for row: " + new String( result.getRow() ) + ", CONTEO_TWEET: " + cValue.toString() );

            //conteo usuarios
            Object cuValue = red_aux(result, CF.getBytes(), CU.getBytes());
            System.out.println( "Result for row: " + new String( result.getRow() ) + ", CONTEO_USER: " + cuValue.toString() );

            //conteo otros hashtag
            Object otcValue = red_aux(result, CF.getBytes(), OTC.getBytes());
            System.out.println( "Result for row: " + new String( result.getRow() ) + ", CONTEO_OTROS_HASHTAGS: " + otcValue.toString() );

            //top hashtags
            Cell cell  = result.getColumnLatestCell( CF.getBytes(), TH.getBytes());
            byte[] valueArrayth = cell.getValueArray();
            byte[] bsh = Bytes.copy( valueArrayth, cell.getValueOffset(), cell.getValueLength() );
            String thValue = Bytes.toString( bsh );

            //separando lista de top hashtags
            String[] tagsArray =  thValue.split(",");
            //Set<String> finalTags = new HashSet<String>();
            for(String tg: tagsArray){
                //finalTags.add(tg);
                System.out.println( "Result for row: " + new String( result.getRow() ) + ", TOP_HASHTAGS: " + tg.toString() );

                String[] tagsArrayVal = tg.split(":");
                for(String tgVal: tagsArrayVal){
                    System.out.println( "Result for row: " + new String( result.getRow() ) + ", TOP_HASHTAGS_VAL: " + tgVal.toString() );
                }
            }

            //top words
            cell  = result.getColumnLatestCell( CF.getBytes(), TW.getBytes());
            byte[] valueArraytw = cell.getValueArray();
            byte[] bst = Bytes.copy( valueArraytw, cell.getValueOffset(), cell.getValueLength() );
            String twValue = Bytes.toString( bst );

            //separando lista de top words
            String[] wordsArray =  twValue.split(",");
            Set<String> finalWords = new HashSet<String>();  //
            for(String wd: wordsArray){
                finalWords.add(wd);
                System.out.println( "Result for row: " + new String( result.getRow() ) + ", TOP_WORDS: " + wd.toString() );
            }

        }
    }

    //para obtener los registros
    private Object red_aux(Result result, byte[] CF, byte[] CX){

        Cell cell = result.getColumnLatestCell( CF, CX);
        byte[] valueArray = cell.getValueArray();
        byte[] bs = Bytes.copy( valueArray, cell.getValueOffset(), cell.getValueLength() );
        String xValue = Bytes.toString( bs );

        return xValue;
    }
}
