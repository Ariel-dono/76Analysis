package main;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.Table;
import twitterAPIConn.Controler;

import java.util.ArrayList;
import java.util.List;

import twitterAPIConn.TwitterAPIConn;

/**
 * Created by ariel on 22/05/17.
 */


//"#2030NOW"
//"#women"
//"#costarica"
//"#puravida"
//"#MakeAmericaGreatAgaing"
//"#Trumprussia"
//"#RecycleReuse"
//"#TraficoCR"

public class main {


    private static Table hTable;
    private static final String HBASE_CONFIGURATION_ZOOKEEPER_QUORUM = "hbase.zookeeper.quorum";
    private static final String HBASE_CONFIGURATION_ZOOKEEPER_CLIENTPORT = "hbase.zookeeper.property.clientPort";
    private static final String ZOOKEEPER_ZNODE_PARENT = "zookeeper.znode.parent";

    public static void main(String[] args) {
        try {
            List<Thread> threads = new ArrayList<Thread>();
            Configuration conf = HBaseConfiguration.create();
            conf.set( HBASE_CONFIGURATION_ZOOKEEPER_QUORUM, "192.168.111.134" );
            conf.setInt( HBASE_CONFIGURATION_ZOOKEEPER_CLIENTPORT, 2181 );
            conf.set( ZOOKEEPER_ZNODE_PARENT, "/hbase_znode" );

            final Controler controler = new Controler();
            hTable = ConnectionFactory.createConnection( conf ).getTable( TableName.valueOf( "ssanalysis:TWITTER_API" ) );
            addShutDownHook(controler);

/*
            //#2030NOW
            Thread t1 = new Thread(new Runnable() {
                public void run() {
                    try {
                        TwitterAPIConn tapiConn = new TwitterAPIConn(hTable,controler);
                        tapiConn.run("Pa8vxxx6iBcwuaJqYIwbqDsrE", "61GCCbElKq21Q9Ghamy3LJ0WE4Rt0rvnw6EdKtMIywJs9bB4UU",
                                "79249701-vtUdQFoVEN0GiYILuWLwtqUTtbH8cY3VVoFzb5NSd", "8N6y00C6pT28ocnD6PbkPu9qn9UQGjdsCLwBSAerLW9Xt", "#2030NOW");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }) ;
            threads.add(t1);
/*

            //#women
            Thread t2 = new Thread(new Runnable() {
                public void run() {
                    try {
                        TwitterAPIConn tapiConn = new TwitterAPIConn(hTable,controler);

                        tapiConn.run("Pa8vxxx6iBcwuaJqYIwbqDsrE", "61GCCbElKq21Q9Ghamy3LJ0WE4Rt0rvnw6EdKtMIywJs9bB4UU",
                                "79249701-vtUdQFoVEN0GiYILuWLwtqUTtbH8cY3VVoFzb5NSd", "8N6y00C6pT28ocnD6PbkPu9qn9UQGjdsCLwBSAerLW9Xt", "#women");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }) ;
            threads.add(t2);


            //#costarica
            Thread t3 = new Thread(new Runnable() {
                public void run() {
                    try {
                        TwitterAPIConn tapiConn = new TwitterAPIConn(hTable,controler);

                        tapiConn.run("Pa8vxxx6iBcwuaJqYIwbqDsrE", "61GCCbElKq21Q9Ghamy3LJ0WE4Rt0rvnw6EdKtMIywJs9bB4UU",
                                "79249701-vtUdQFoVEN0GiYILuWLwtqUTtbH8cY3VVoFzb5NSd", "8N6y00C6pT28ocnD6PbkPu9qn9UQGjdsCLwBSAerLW9Xt", "#costarica");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }) ;
            threads.add(t3);


            //#puravida
            Thread t4 = new Thread(new Runnable() {
                public void run() {
                    try {
                        TwitterAPIConn tapiConn = new TwitterAPIConn(hTable,controler);

                        tapiConn.run("Pa8vxxx6iBcwuaJqYIwbqDsrE", "61GCCbElKq21Q9Ghamy3LJ0WE4Rt0rvnw6EdKtMIywJs9bB4UU",
                                "79249701-vtUdQFoVEN0GiYILuWLwtqUTtbH8cY3VVoFzb5NSd", "8N6y00C6pT28ocnD6PbkPu9qn9UQGjdsCLwBSAerLW9Xt", "#puravida");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }) ;
            threads.add(t4);
*/

            //#MakeAmericaGreatAgain
            Thread t5 = new Thread(new Runnable() {
                public void run() {
                    try {
                        TwitterAPIConn tapiConn = new TwitterAPIConn(hTable,controler);

                        tapiConn.run("Pa8vxxx6iBcwuaJqYIwbqDsrE", "61GCCbElKq21Q9Ghamy3LJ0WE4Rt0rvnw6EdKtMIywJs9bB4UU",
                                "79249701-vtUdQFoVEN0GiYILuWLwtqUTtbH8cY3VVoFzb5NSd", "8N6y00C6pT28ocnD6PbkPu9qn9UQGjdsCLwBSAerLW9Xt", "#MakeAmericaGreatAgain");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }) ;
            threads.add(t5);

/*
            //#Trumprussia
            Thread t6 = new Thread(new Runnable() {
                public void run() {
                    try {
                        TwitterAPIConn tapiConn = new TwitterAPIConn(hTable,controler);

                        tapiConn.run("Pa8vxxx6iBcwuaJqYIwbqDsrE", "61GCCbElKq21Q9Ghamy3LJ0WE4Rt0rvnw6EdKtMIywJs9bB4UU",
                                "79249701-vtUdQFoVEN0GiYILuWLwtqUTtbH8cY3VVoFzb5NSd", "8N6y00C6pT28ocnD6PbkPu9qn9UQGjdsCLwBSAerLW9Xt", "#Trumprussia");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }) ;
            threads.add(t6);


            //#RecycleReuse
            Thread t7 = new Thread(new Runnable() {
                public void run() {
                    try {
                        TwitterAPIConn tapiConn = new TwitterAPIConn(hTable,controler);

                        tapiConn.run("Pa8vxxx6iBcwuaJqYIwbqDsrE", "61GCCbElKq21Q9Ghamy3LJ0WE4Rt0rvnw6EdKtMIywJs9bB4UU",
                                "79249701-vtUdQFoVEN0GiYILuWLwtqUTtbH8cY3VVoFzb5NSd", "8N6y00C6pT28ocnD6PbkPu9qn9UQGjdsCLwBSAerLW9Xt", "#RecycleReuse");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }) ;
            threads.add(t7);

            //#TraficoCR
            Thread t8 = new Thread(new Runnable() {
                public void run() {
                    try {
                        TwitterAPIConn tapiConn = new TwitterAPIConn(hTable,controler);

                        tapiConn.run("Pa8vxxx6iBcwuaJqYIwbqDsrE", "61GCCbElKq21Q9Ghamy3LJ0WE4Rt0rvnw6EdKtMIywJs9bB4UU",
                                "79249701-vtUdQFoVEN0GiYILuWLwtqUTtbH8cY3VVoFzb5NSd", "8N6y00C6pT28ocnD6PbkPu9qn9UQGjdsCLwBSAerLW9Xt", "#TraficoCR");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }) ;
            threads.add(t8);
*/

            for(Thread t:threads){
                t.run();
            }

            for(Thread t:threads){
                t.join();
            }
           // tapiConn.kill();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static void addShutDownHook(final Controler controler){
        Runtime.getRuntime().addShutdownHook(new Thread(){
             public void run() {
                 controler.setDoStop(true);
             }
         }
        );

    }
}
