package twitterAPIConn;

/**
 * Created by florencio on 06/06/17.
 */
public class Controler {
    private boolean doStop = false;

    public synchronized boolean getDoStop(){
        return doStop;
    }

    public synchronized void setDoStop(boolean doStop){
        this.doStop = doStop;
    }

}
