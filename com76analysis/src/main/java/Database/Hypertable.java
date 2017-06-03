package Database;

/**
 * Created by ariel on 27/05/17.
 */

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import org.apache.thrift.TException;
import org.apache.thrift.transport.TTransportException;
import org.hypertable.thrift.*;
import org.hypertable.thriftgen.*;

public class Hypertable {
    private ThriftClient client = null;

    public Hypertable() {
        try {
            client = ThriftClient.create("localhost", 15867);
        } catch (TException e) {
            e.printStackTrace();
        }
    }

    public void set(String tweetCode, String busqueda, String user, String message, String timestamp){
        try {
            long ns = this.client.namespace_open("ssanalysis");

            List cells = new ArrayList();

            //Insert the first field

            Key keyHashtag = new Key();
            keyHashtag.setRow(tweetCode);
            keyHashtag.setColumn_family("hashtag");

            Cell cellHashtag = new Cell();
            cellHashtag.setKey(keyHashtag);
            cellHashtag.setValue(busqueda.getBytes("UTF-8"));

            cells.add(cellHashtag);

            //Insert the second field

            Key keyUser = new Key();
            keyUser.setRow(tweetCode);
            keyUser.setColumn_family("user");

            Cell cellUser = new Cell();
            cellUser.setKey(keyUser);
            cellUser.setValue(user.getBytes("UTF-8"));

            cells.add(cellUser);

            //Insert the third field

            Key keyTime = new Key();
            keyTime.setRow(tweetCode);
            keyTime.setColumn_family("timestamp");

            Cell cellTime = new Cell();
            cellTime.setKey(keyTime);
            cellTime.setValue(timestamp.getBytes("UTF-8"));

            cells.add(cellTime);

            //Insert the fourth field

            Key keyData = new Key();
            keyData.setRow(tweetCode);
            keyData.setColumn_family("data");

            Cell cellData = new Cell();
            cellData.setKey(keyData);
            cellData.setValue(message.getBytes("UTF-8"));

            cells.add(cellData);

            client.set_cells(ns, "TWITTER_API", cells);
            client.namespace_close(ns);
        }
        catch (ClientException e) {
            System.out.println(e.getMessage());
        } catch (TException e) {
            System.out.println(e.getMessage());
        } catch (UnsupportedEncodingException e) {
            System.out.println(e.getMessage());
        }
    }


}
