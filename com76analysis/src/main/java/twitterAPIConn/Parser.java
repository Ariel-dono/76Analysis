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
        //this.message = this.message.replaceAll("https"," ");
        this.message = this.message.replaceAll("\\b(http|https|ftp)://[a-zA-Z0-9/%=?_].+[a-zA-Z0-9/%=?_]","");
        this.message = this.message.replaceAll(":"," ");
        this.message = this.message.replaceAll("[\n\r\t]+"," ");
        this.message = this.message.replaceAll("[^# &&\\p{Punct}]"," ");
        this.message = this.message.replaceAll("[ ][a-zA-Z]{1,2}[ ]"," ");
        this.message = this.message.replaceAll("[ ][eE]n[a-z]{1,4}[ ]"," ");
        this.message = this.message.replaceAll("[ ][Tt]h[a-z]{1,3}[ ]"," ");
        this.message = this.message.replaceAll("[ ][Aa][a-v][a-sy][ ]"," ");
        this.message = this.message.replaceAll("[ ][Ww]h[a-z]{1,3}[ ]"," ");
        this.message = this.message.replaceAll("[ ][Ww]i[a-oq-z]{2}[ ]"," ");
        this.message = this.message.replaceAll("[ ][a-z]{1,2}ould[ ]"," ");
        this.message = this.message.replaceAll("[ ][aA]ble[ ]"," ");
        this.message = this.message.replaceAll("[ ][aA]fter[ ]"," ");
        this.message = this.message.replaceAll("[ ]eve[a-mo-z]{1,2}[ ]"," ");
        this.message = this.message.replaceAll("[ ]m[oa][b-mo-z]{1,2}[ ]"," ");
        this.message = this.message.replaceAll("[A-Z][a-z][ ]"," ");
        this.message = this.message.replaceAll("En[a-z]{1,4}[ ]"," ");
        this.message = this.message.replaceAll("Th[a-z]{1,3}[ ]"," ");
        this.message = this.message.replaceAll("A[a-v][a-sy][ ]"," ");
        this.message = this.message.replaceAll("Wh[a-z]{1,3}[ ]"," ");
        this.message = this.message.replaceAll("Wi[a-oq-z]{2}[ ]"," ");
        this.message = this.message.replaceAll("[A-Z][a-z]ould[ ]"," ");
        this.message = this.message.replaceAll("Able[ ]"," ");
        this.message = this.message.replaceAll("After[ ]"," ");
        this.message = this.message.replaceAll("Eve[a-mo-z]{1,2}[ ]"," ");
        this.message = this.message.replaceAll("M[oa][b-mo-z]{1,2}[ ]"," ");

        //Replace in spanish
        this.message = this.message.replaceAll("[ ][[cC]lu][a-hj-z]{1,2}[ ]"," ");
        this.message = this.message.replaceAll("[ ][cC]omo[ ]"," ");
        this.message = this.message.replaceAll("[ ][qQ]u[a-hj-zé]{1,5}[ ]"," ");
        this.message = this.message.replaceAll("[ ][cC]u[aá][a-hj-z]{1,4}[ ]"," ");
        this.message = this.message.replaceAll("[ ][lL][aoe]s[ ]"," ");
        this.message = this.message.replaceAll("[ ][sS]ol[aos]+[ ]"," ");
        this.message = this.message.replaceAll("[ ][eE][sl][a-z]*[ ]"," ");
        this.message = this.message.replaceAll("[ ][pP][ao]r[ ]"," ");
        this.message = this.message.replaceAll("[ ][tT]a[les]+[ ]"," ");
        this.message = this.message.replaceAll("[ ][tT]ip[os]+[ ]"," ");
        this.message = this.message.replaceAll("[ ][Hh]a[ystaci]+[ ]"," ");
        this.message = this.message.replaceAll("[ ][pP]ara[ ]"," ");
        this.message = this.message.replaceAll("[ ][mM][áa]s[ ]"," ");
        this.message = this.message.replaceAll("[ ][dD]el[ ]"," ");
        this.message = this.message.replaceAll("[ ][mM]uy[ ]"," ");
        this.message = this.message.replaceAll("[ ][mM][íi][oas]*[ ]"," ");
        this.message = this.message.replaceAll("C[lu][a-hj-z]{1,2}[ ]"," ");
        this.message = this.message.replaceAll("Como[ ]"," ");
        this.message = this.message.replaceAll("Qu[a-hj-zé]{1,5}[ ]"," ");
        this.message = this.message.replaceAll("Cu[aá][a-hj-z]{1,4}[ ]"," ");
        this.message = this.message.replaceAll("L[aoe]s[ ]"," ");
        this.message = this.message.replaceAll("Sol[aos]+[ ]"," ");
        this.message = this.message.replaceAll("E[sl][a-z]*[ ]"," ");
        this.message = this.message.replaceAll("P[ao]r[ ]"," ");
        this.message = this.message.replaceAll("Ta[les]+[ ]"," ");
        this.message = this.message.replaceAll("Tip[os]+[ ]"," ");
        this.message = this.message.replaceAll("Ha[ystaci]+[ ]"," ");
        this.message = this.message.replaceAll("Para[ ]"," ");
        this.message = this.message.replaceAll("M[áa]s[ ]"," ");
        this.message = this.message.replaceAll("Del[ ]"," ");
        this.message = this.message.replaceAll("[ ]Muy[ ]"," ");
        this.message = this.message.replaceAll("[ ]M[íi][oas]*[ ]"," ");

        //Replace other words or characters
        this.message = this.message.replaceAll("[ ][a-zA-Z]*[0-9]+[a-zA-Z]*[ ]"," ");
        this.message = this.message.replaceAll("[ ][a-zA-Z]*[0-9]+[a-zA-Z]*"," ");
        this.message = this.message.replaceAll("[ ]+"," ");

        return this.message;
    }
}