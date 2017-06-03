package twitterAPIConn;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by ariel on 02/06/17.
 */
public class Parser {
    private String message;

    public void set(String message) {
        this.message = message;
    }

    public String transform(){
        //Replace english
        this.message = this.message.replaceAll(":"," ");
        this.message = this.message.replaceAll("[^a-zA-Z#@éáíóú ]","");
        this.message = this.message.replaceAll("\\b[ ][a-zA-Z]{1,2}\\b","");
        this.message = this.message.replaceAll("\\b[a-zA-Z]{1,2}\\b","");
        this.message = this.message.replaceAll("\\b[ ][eE]n[a-z]{1,4}\\b","");
        this.message = this.message.replaceAll("\\b[ ][Tt]h[a-z]{1,3}\\b","");
        this.message = this.message.replaceAll("\\b[ ][Aa][a-v][a-sy]\\b","");
        this.message = this.message.replaceAll("\\b[ ][Ww]h[a-z]{1,3}\\b","");
        this.message = this.message.replaceAll("\\b[ ][Ww]i[a-z]{2}\\b","");
        this.message = this.message.replaceAll("\\b[ ][a-z]{1,2}ould\\b","");
        this.message = this.message.replaceAll(" able","");
        this.message = this.message.replaceAll(" after","");
        this.message = this.message.replaceAll(" one","");
        this.message = this.message.replaceAll(" two","");
        this.message = this.message.replaceAll(" two","");
        this.message = this.message.replaceAll(" two","");

        this.message = this.message.replaceAll("\\b[ ]eve[a-mo-z]{1,2}\\b","");
        this.message = this.message.replaceAll("\\b[ ]m[oá][a-mo-z]{1,2}\\b","");
        //Replace in spanish
        this.message = this.message.replaceAll("\\b[ ][clu][a-hj-z]{1,2}\\b","");
        this.message = this.message.replaceAll("como","");
        this.message = this.message.replaceAll("\\b[ ]qu[a-hj-zé]{1,5}\\b","");
        this.message = this.message.replaceAll("\\b[ ]cu[aá][a-hj-z]{1,2}\\b","");
        return this.message;
    }
}
