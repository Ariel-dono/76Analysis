package twitterAPIConn;

/**
 * Created by ariel on 22/05/17.
 */

import twitter4j.*;
import twitter4j.auth.AccessToken;

import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.client.Table;
import org.apache.hadoop.hbase.util.Bytes;

public class TwitterAPIConn extends Thread{
    private long lastTweet = 0;
    private boolean activeSearch = true;
    private Parser regexReplacement;

    private static final byte[] C1 = "c1".getBytes();
    private static final byte[] C2 = "c2".getBytes();
    private static final byte[] C3 = "c3".getBytes();
    private static final byte[] C4 = "c4".getBytes();
    //private static final byte[] C5 = "c5".getBytes();

    private Table htable;
    private Controler controler;

    public  TwitterAPIConn(Table htable, Controler controler) throws Exception{
      this.htable = htable;
      this.controler = controler;
    }

    public void run(String consumerKey, String consumerSecret, String token, String secret, String busqueda) throws InterruptedException {


        this.regexReplacement = new Parser();
        Twitter twitter = new TwitterFactory().getInstance();
        // Twitter Consumer key & Consumer Secret
        twitter.setOAuthConsumer(consumerKey, consumerSecret);
        // Twitter Access token & Access token Secret
        twitter.setOAuthAccessToken(new AccessToken(token, secret));
        try {
            // Getting Twitter Timeline using Twitter4j API
            while (this.activeSearch && !controler.getDoStop()) {
                Query query = new Query(busqueda);
                QueryResult result = twitter.search(query);
                Status tweet = result.getTweets().get(1);
                if (this.lastTweet != tweet.getId() && (tweet.getLang().compareTo("es") == 0 || tweet.getLang().compareTo("en") == 0)) {
                    this.lastTweet = tweet.getId();
                    this.regexReplacement.set(tweet.getText());
                    System.out.println("@" + tweet.getUser().getScreenName()+ " - " + this.regexReplacement.transform() + " - " + tweet.getCreatedAt().toString());
                    //this.db.set(tweet.getId()+"",busqueda,"@" + tweet.getUser().getScreenName(), this.regexReplacement.transform().toLowerCase(), tweet.getCreatedAt().toString());

                    //recorre el valor de i
                    Put put = new Put( Bytes.toBytes(tweet.getId()) );
                    //meto los valores en la hbase table, en la columna 1 y columna1
                    //put.addColumn( "cf".getBytes(), C1, Bytes.toBytes( tweet.getId()));
                    put.addColumn( "cf".getBytes(), C1, busqueda.getBytes() );
                    put.addColumn( "cf".getBytes(), C2, tweet.getUser().getScreenName().getBytes() );
                    put.addColumn( "cf".getBytes(), C3, this.regexReplacement.transform().getBytes() );
                    put.addColumn( "cf".getBytes(), C4, Bytes.toBytes(tweet.getCreatedAt().getTime() ));
                    htable.put( put );
                }

                Thread.sleep(6000);
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void kill() {
        this.activeSearch = false;
    }
}