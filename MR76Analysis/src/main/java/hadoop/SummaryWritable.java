package hadoop;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

import org.apache.hadoop.io.MapWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.WritableComparable;

/**
 * Created by florencio on 08/06/17.
 * Clase para poder hacer mis propios tipos complejos
 */
public class SummaryWritable implements WritableComparable<SummaryWritable> {
    private MapWritable fieldsMap;

    private Text key;

    public SummaryWritable() {
        this.fieldsMap = new MapWritable();
        this.key = new Text();
    }

    public SummaryWritable( Text key, MapWritable fieldsMap ) {
        this.key = key;
        this.fieldsMap = fieldsMap;
    }

    public void set( Text key, MapWritable fieldsMap ) {
        this.key = key;
        this.fieldsMap = fieldsMap;
    }


    public void readFields( DataInput in ) throws IOException {
        key.readFields( in );
        fieldsMap.readFields( in );
    }

    //@Override
    public void write( DataOutput out ) throws IOException {
        key.write( out );
        fieldsMap.write( out );
    }

    //@Override
    public int compareTo( SummaryWritable o ) {
        return key.compareTo( o.key );
    }

    //@Override
    public boolean equals( Object o ) {
        if ( o instanceof SummaryWritable ) {
            SummaryWritable other = ( SummaryWritable ) o;
            return key.equals( other.key );
        }
        return false;
    }

    //@Override
    public int hashCode() {
        return key.hashCode();
    }

    public MapWritable getFieldsMap() {
        return fieldsMap;
    }

    public Text getKey() {
        return key;
    }

}
