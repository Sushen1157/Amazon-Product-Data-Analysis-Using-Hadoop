import java.io.IOException;
import org.apache.hadoop.io.*;
import org.apache.hadoop.mapreduce.Mapper;

public class PopularityMapper extends Mapper<LongWritable,Text,Text,IntWritable>{

public void map(LongWritable key,Text value,Context context)
throws IOException,InterruptedException{

String line=value.toString();

if(line.startsWith("asin"))
return;

String[] fields=line.split(",");

try{

String product=fields[0];
int reviews=Integer.parseInt(fields[5]);

context.write(new Text(product),
new IntWritable(reviews));

}catch(Exception e){}

}
}