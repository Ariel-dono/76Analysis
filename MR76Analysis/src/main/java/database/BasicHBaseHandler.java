package database;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import java.io.IOException;
import org.apache.hadoop.hbase.client.Admin;
import org.apache.hadoop.hbase.client.Connection;
import org.apache.hadoop.hbase.TableName;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by florencio on 08/06/17.
 * clase para controlar tablas de hbase, en este caso la uso para poder hacer truncate de las tablas
 */
public class BasicHBaseHandler {

    private Configuration config;
    private Connection connection;
    private static final Logger logger = LoggerFactory.getLogger(BasicHBaseHandler.class);

    public BasicHBaseHandler( Configuration config ) throws IOException {
        this.config = config;
        connection = ConnectionFactory.createConnection( config );
    }

    private Admin getAdmin( Configuration config ) throws IOException {
        Connection connection = ConnectionFactory.createConnection( config );
        Admin admin = connection.getAdmin();
        return admin;
    }

    public void truncateTable( String tableName ) throws IOException, InterruptedException {
        Admin admin = getAdmin( config );
        TableName name = TableName.valueOf( tableName );
        admin.disableTableAsync( name );
        while ( !admin.isTableDisabled( name ) ) {
            Thread.sleep( 500 );
        }
        admin.truncateTable( name, true );
        admin.enableTableAsync( name );
        while ( !admin.isTableEnabled( name ) ) {
            Thread.sleep( 500 );
        }
        logger.info( "Truncated table: {}", tableName );
    }

}
