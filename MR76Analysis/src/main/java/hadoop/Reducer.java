package hadoop;

import org.apache.commons.lang.StringUtils;
import org.apache.hadoop.io.*;
import org.apache.hadoop.hbase.client.Mutation;
import org.apache.hadoop.hbase.client.Put;
//import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableReducer;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.Text;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import java.io.IOException;
import java.util.*;

public class Reducer extends TableReducer<Text, SummaryWritable, ImmutableBytesWritable> {

	private  final byte[] CF = "cf".getBytes();
	private  final byte[] C2 = "c2".getBytes();
	private  final byte[] COUNTER = "c".getBytes();
	private  final byte[] COUNTERU = "cu".getBytes();
	private  final byte[] TH = "th".getBytes();
	private  final byte[] TW = "tw".getBytes();
	private  final byte[] OTC = "otc".getBytes();
	private  Set<String> users = new HashSet<String>();
	private static final Logger logger = LoggerFactory.getLogger( Reducer.class );
	private ImmutableBytesWritable doutput;
	private ImmutableBytesWritable houtput;
	private ImmutableBytesWritable toutput;
	private Map<String, WordCount> hashtagCountMap = new HashMap<String, WordCount>();
	private Map<String, WordCount> wordCountMap = new HashMap<String, WordCount>();
	private  final byte[] C3 = "c3".getBytes();
	private static final String kuser = "ku";
	private static final String ktweet = "kt";
	private static final String kother = "ko";

	private  final byte[] tmp = "tmp".getBytes();

	@Override
	protected void setup(Context context) throws IOException, InterruptedException {
		String dtable = context.getConfiguration().get("dy_table");
		doutput = new ImmutableBytesWritable(dtable.getBytes());
		String htable = context.getConfiguration().get("hr_table");
		houtput = new ImmutableBytesWritable(htable.getBytes());
		super.setup(context);
		String ttable = context.getConfiguration().get("tt_table");
		toutput = new ImmutableBytesWritable(ttable.getBytes());
		super.setup(context);
	}

	public void reduce(Text key, Iterable<SummaryWritable> values,
					   org.apache.hadoop.mapreduce.Reducer<Text, SummaryWritable, ImmutableBytesWritable, Mutation>.Context context
	) throws IOException, InterruptedException {
		Iterator<SummaryWritable> itr = values.iterator();
		int counter = 0;
		int octr = 0;
		users.clear();
		hashtagCountMap.clear();
		String keystrg = key.toString();
		List<String> ids = new ArrayList<String>() ;

		while (itr.hasNext()) {
			SummaryWritable value = itr.next();
			counter++;
			MapWritable fieldsmap = value.getFieldsMap();
			Text usr = (Text) fieldsmap.get(new Text(kuser));
			String user = new String(usr.getBytes());
			users.add(user);

			//extraer del tweet las palabras y los hasgtag
			Text twt = (Text) fieldsmap.get(new Text(ktweet));
			String tweet = new String(twt.getBytes());
			String[] tweetWords = tweet.split(" ");

			BooleanWritable hasOtherTags = (BooleanWritable) fieldsmap.get(new Text(kother));
			if(hasOtherTags.get()) octr++;

			Text id = (Text) fieldsmap.get(new Text("ids"));
			if (id!=null)ids.add(Bytes.toString(id.getBytes()));

			 //cuento los hashtag que aparecen en el tweet
			 for(String tweetWord:tweetWords){
			 	if(tweetWord.startsWith("#")){
			 		//inicialmente para los nuevos valores, tengo el bucket vacio, por eso la validacion para evitar null pointer exception
					if(hashtagCountMap.get(tweetWord)==null){
						hashtagCountMap.put(tweetWord, new WordCount(tweetWord));
					}
					hashtagCountMap.get(tweetWord).increment();
				}else {
					if(wordCountMap.get(tweetWord)==null){
						wordCountMap.put(tweetWord, new WordCount(tweetWord));
					}
					wordCountMap.get(tweetWord).increment();
				}
			 }
		}

		Comparator<WordCount> comparator = new Comparator<WordCount>() {
			public int compare(WordCount w1, WordCount w2) {

				return w2.getCount() - w1.getCount();
			}
		};

		Put put = new Put(Bytes.toBytes(key.toString()));
		put.addColumn(CF,COUNTER,(counter+"").getBytes());
		put.addColumn(CF,COUNTERU,(users.size()+"").getBytes());
		fetchTopAndPut(put, comparator, hashtagCountMap.values(), TH);
		fetchTopAndPut(put, comparator, wordCountMap.values(),TW);
		put.addColumn(CF,OTC,(octr+"").getBytes());
		//solopara probar los conteos
		put.addColumn(CF,tmp,(StringUtils.join(ids,"-------&&&&-------")).getBytes());


		if (context.getCurrentKey().toString().startsWith("D:") ) {
			context.write(doutput, put);
		} else if (context.getCurrentKey().toString().startsWith("H:")) {
			context.write(houtput, put);
		} else if (context.getCurrentKey().toString().startsWith("T:")) {
			context.write(toutput, put);
		}
	}

	private void fetchTopAndPut(Put put, Comparator<WordCount> comparator, Collection<WordCount> counts, byte[] column ) {

		ArrayList<WordCount> countList = new ArrayList<WordCount>();
		for (WordCount wordCount : counts){
			countList.add(wordCount);
		}
		Collections.sort(countList, comparator);

		StringBuilder builder = new StringBuilder();
		List<WordCount> finalWords = (countList.size()> 10)?countList.subList(0,10):countList;
		for( WordCount finalWord : finalWords ){
            builder.append(finalWord.getWord());
			builder.append(":");
			builder.append(finalWord.getCount());
            builder.append(",");
        }
		String words = builder.toString();
		/*String result = null;
		if (countList.size() > 10 ) {
			result = StringUtils.join(countList.subList(0,10), ",");
		}
		else {
			result = StringUtils.join(countList, ",");
		}*/

		if(!words.equals(""))
            put.addColumn(CF,column,Bytes.toBytes(words.substring(0,words.length()-1)));
	}
}

class WordCount {
	private String word;
	private int count = 0;

	public String getWord(){
		return word;
	}

	public int getCount(){
		return count;
	}

	public void increment(){
		count++;
	}

	public WordCount(String word){
		this.word = word;
	}

}