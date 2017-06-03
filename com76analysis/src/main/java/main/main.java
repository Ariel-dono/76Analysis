package main;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import Database.Hypertable;
import twitterAPIConn.Parser;
import twitterAPIConn.TwitterAPIConn;

/**
 * Created by ariel on 22/05/17.
 */


public class main {
    public static void main(String[] args) {
        try {
            TwitterAPIConn tapiConn = new TwitterAPIConn();
            tapiConn.run("Pa8vxxx6iBcwuaJqYIwbqDsrE", "61GCCbElKq21Q9Ghamy3LJ0WE4Rt0rvnw6EdKtMIywJs9bB4UU",
                    "79249701-vtUdQFoVEN0GiYILuWLwtqUTtbH8cY3VVoFzb5NSd", "8N6y00C6pT28ocnD6PbkPu9qn9UQGjdsCLwBSAerLW9Xt", "#costarica");
            Thread.sleep(90000);
            tapiConn.kill();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
