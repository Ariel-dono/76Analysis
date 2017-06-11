package hadoop;

import org.apache.hadoop.io.*;

import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.Cell;

import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableMapper;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.Text;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

public class Mapper extends TableMapper<Text, SummaryWritable> {

	private static final Logger logger = LoggerFactory.getLogger( Mapper.class );
	private final static IntWritable one = new IntWritable(1);
	private Text word = new Text();
	//column family
	private static final byte[] CF = "cf".getBytes();
	//hashtag
	private static final byte[] C1 = "c1".getBytes();
	//user
	private static final byte[] C2 = "c2".getBytes();
	//tweets
	private static final byte[] C3 = "c3".getBytes();
	//time
	private static final byte[] C4 = "c4".getBytes();

	private static final DateFormat TO_HOUR_FORMAT = new SimpleDateFormat("yyyyMMddHH");
	private static final DateFormat TO_DAY_FORMAT = new SimpleDateFormat("yyyyMMdd");

	private static final String kuser = "ku";
	private static final String ktweet = "kt";
	private static final String kother = "ko";

	private static final List<String> hashtags = getHashtag();

	public void map(ImmutableBytesWritable key, Result value, org.apache.hadoop.mapreduce.Mapper.Context context
	) throws IOException, InterruptedException {

		//**Iniciando la extraccion de los valores de las columnas
		//analysis 6.
		Cell cell = value.getColumnLatestCell(CF,C1);
		if ( cell == null ) {
			logger.info( "Map row cell null" );
			return;
		}
		byte[] valueArray = cell.getValueArray();
		byte[] bs = Bytes.copy( valueArray, cell.getValueOffset(), cell.getValueLength() );
		String hashtag = new String(bs);

		cell = value.getColumnLatestCell(CF,C2);
		if ( cell == null ) {
			logger.info( "Map row cell null" );
			return;
		}
		valueArray = cell.getValueArray();
		bs = Bytes.copy( valueArray, cell.getValueOffset(), cell.getValueLength() );
		String user = new String(bs);

		cell = value.getColumnLatestCell(CF,C3);
		if ( cell == null ) {
			logger.info( "Map row cell null" );
			return;
		}
		valueArray = cell.getValueArray();
		bs = Bytes.copy( valueArray, cell.getValueOffset(), cell.getValueLength() );
		String tweet = new String(bs);

		cell = value.getColumnLatestCell(CF,C4);
		if ( cell == null ) {
			logger.info( "Map row cell null" );
			return;
		}
		valueArray = cell.getValueArray();
		bs = Bytes.copy( valueArray, cell.getValueOffset(), cell.getValueLength() );
		Date dt = new Date(Bytes.toLong(bs));

		//**Fin de la extraccion de los datos de las columnas

		String[] tweetsArray =  tweet.split(" ");
		//List<String> finalHastags = new ArrayList<String>();  //cuento el mismo hashtag + los otros
		Set<String> finalHastags = new HashSet<String>();  //cuento solo los otros
		for(String twt: tweetsArray){
			if(hashtags.contains(twt)){
				finalHastags.add(twt);
			}
		}
		boolean hasOtherTags = false;
		if(finalHastags.size()>1){
			/*for(String tag:finalHastags){
				word.set("O_H:"+hashtag+"."+TO_HOUR_FORMAT.format(dt));
				context.write(word, value);
				word.set("O_D:"+hashtag+"."+TO_DAY_FORMAT.format(dt));
				context.write(word, value);
				word.set("O_T:"+hashtag);
				context.write(word, value);
			}*/
			hasOtherTags = true;


		}

		//agrego los valores al mapper
		logger.info("Final tags size : {}", finalHastags.size());
		MapWritable writable = new MapWritable();
		writable.put(new Text(kuser),new Text(user));
		writable.put(new Text(ktweet),new Text(tweet));
		writable.put(new Text(kother),new BooleanWritable(hasOtherTags));
		if(hasOtherTags)
		writable.put(new Text("ids"),new Text(tweet));

		word.set("H:"+hashtag+"."+TO_HOUR_FORMAT.format(dt));
		context.write(word, new SummaryWritable(word, writable));

		word.clear();
		word.set("D:"+hashtag+"."+TO_DAY_FORMAT.format(dt));
		context.write(word, new SummaryWritable(word, writable));
		//total
		word.clear();
		word.set("T:"+hashtag);
		context.write(word, new SummaryWritable(word, writable));
	}

	public static List<String>  getHashtag() {
		List<String> tempList = new ArrayList<String>();
		tempList.add("#2030NOW");       //1
		tempList.add("#women");         //2
		tempList.add("#costarica");     //3
		tempList.add("#puravida");      //4
		tempList.add("#MakeAmericaGreatAgain"); //5
		tempList.add("#Trumprussia");   //6
		tempList.add("#RecycleReuse");  //7
		tempList.add("#TraficoCR");     //8
		return tempList;
	}
}
