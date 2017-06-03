package twitterAPIConn;

/**
 * Created by ariel on 22/05/17.
 */

import Database.Hypertable;
import twitter4j.*;
import twitter4j.auth.AccessToken;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class TwitterAPIConn extends Thread{
    private long lastTweet = 0;
    private boolean activeSearch = true;
    private Hypertable db;
    private Parser regexReplacement;

    public void run(String consumerKey, String consumerSecret, String token, String secret, String busqueda) throws InterruptedException {
        this.db = new Hypertable();
        this.regexReplacement = new Parser();
        Twitter twitter = new TwitterFactory().getInstance();
        // Twitter Consumer key & Consumer Secret
        twitter.setOAuthConsumer(consumerKey, consumerSecret);
        // Twitter Access token & Access token Secret
        twitter.setOAuthAccessToken(new AccessToken(token, secret));
        try {
            // Getting Twitter Timeline using Twitter4j API
            while (this.activeSearch) {
                Query query = new Query(busqueda);
                QueryResult result = twitter.search(query);
                Status tweet = result.getTweets().get(1);
                if (this.lastTweet != tweet.getId() && (tweet.getLang().compareTo("es") == 0 || tweet.getLang().compareTo("en") == 0)) {
                    this.lastTweet = tweet.getId();
                    this.regexReplacement.set(tweet.getText());
                    System.out.println("@" + tweet.getUser().getScreenName() + " - " + this.regexReplacement.transform() + " - " + tweet.getCreatedAt().toString());
                    this.db.set(tweet.getId()+"",busqueda,"@" + tweet.getUser().getScreenName(), this.regexReplacement.transform().toLowerCase(), tweet.getCreatedAt().toString());
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