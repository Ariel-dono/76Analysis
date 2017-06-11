package main;

import database.BasicHBaseHandler;
import hadoop.Mapper;
import hadoop.Reducer;
import hadoop.SummaryWritable;
import org.apache.hadoop.conf.Configuration;

import org.apache.hadoop.fs.Path;
import org.apache.hadoop.hbase.mapreduce.MultiTableOutputFormat;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.hbase.client.Table;
import org.apache.hadoop.hbase.client.Scan;
import org.apache.hadoop.hbase.mapreduce.TableMapReduceUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.apache.hadoop.hbase.mapreduce.KeyValueSerialization;
import org.apache.hadoop.hbase.mapreduce.MutationSerialization;
import org.apache.hadoop.hbase.mapreduce.ResultSerialization;

/**
 * Created by florencio on 04/06/17.
 */
public class Main {  //extends Configured implements Tool {


    private static Table hTable;
    private static final String HBASE_CONFIGURATION_ZOOKEEPER_QUORUM = "hbase.zookeeper.quorum";
    private static final String HBASE_CONFIGURATION_ZOOKEEPER_CLIENTPORT = "hbase.zookeeper.property.clientPort";
    private static final String ZOOKEEPER_ZNODE_PARENT = "zookeeper.znode.parent";
    private static final Logger logger = LoggerFactory.getLogger( Main.class );


    //Main function
    public static void main(String[] args) throws Exception {
        //int res = ToolRunner.run(new Configuration(), new Main(), args);
        //System.exit(res);
        run(args);

    }

    //@Override
    public static int run(String[] args)
            throws Exception {

        //configuraciones para hbase
        Configuration conf = getConf();
        conf.set( HBASE_CONFIGURATION_ZOOKEEPER_QUORUM, "192.168.111.134" );
        conf.setInt( HBASE_CONFIGURATION_ZOOKEEPER_CLIENTPORT, 2181 );
        conf.set( ZOOKEEPER_ZNODE_PARENT, "/hbase_znode" );
        conf.set("hr_table","ssanalysis:output_hr");
        conf.set("dy_table","ssanalysis:output_day");
        conf.set("tt_table","ssanalysis:output_tot");

        // crea la instancia del job. que voy a correr.
        conf.setStrings( "io.serializations", conf.get( "io.serializations" ),
                MutationSerialization.class.getName(), ResultSerialization.class.getName(),
                KeyValueSerialization.class.getName() );

        //creo instancia para poder borrar tablas
        BasicHBaseHandler handler = new BasicHBaseHandler(conf);
        handler.truncateTable("ssanalysis:output_hr");
        handler.truncateTable("ssanalysis:output_day");
        handler.truncateTable("ssanalysis:output_tot");

        Job job = Job.getInstance( conf );
        job.setJobName( "analysis" );

        // List<Scan> scans = getTableScans();
        Scan scan = new Scan();
        scan.setCaching( 500 );
        job.setJarByClass( Main.class );
        // para hacer el map
        TableMapReduceUtil.initTableMapperJob( "ssanalysis:TWITTER_API", scan, Mapper.class, Text.class, SummaryWritable.class, job );
        // para hacer el reduce
        //TableMapReduceUtil.initTableReducerJob( "ssanalysis:output_tmp", Reducer.class, job );
        job.setReducerClass(Reducer.class);
        job.setOutputFormatClass(MultiTableOutputFormat.class);

        if ( !job.waitForCompletion( true ) ) {
            logger.error("Something went wrong with the job");
        }

        boolean success = job.waitForCompletion(true);
        return success ? 0 : 1;
    }

    private static Configuration getConf() {
        Configuration conf= new Configuration();
        conf.addResource( new Path( "/home/florencio/Install/Hadoop_HBase/hadoop/etc/hadoop/core-site.xml" ) );
        conf.addResource( new Path( "/home/florencio/Install/Hadoop_HBase/hadoop/etc/hadoop/hdfs-site.xml" ) );
        return conf;
    }
}
