import java.io.IOException;
import org.apache.hadoop.io.*;
import org.apache.hadoop.mapreduce.Mapper;

public class TopPriceMapper extends Mapper<LongWritable,Text,Text,DoubleWritable>{

public void map(LongWritable key,Text value,Context context)
throws IOException,InterruptedException{

String line=value.toString();

if(line.startsWith("asin"))
return;

String[] fields=line.split(",");

try{
String productId=fields[0];
String priceText=fields[6];

priceText=priceText.replace("$","")
.replace(",","")
.trim();

double price=Double.parseDouble(priceText);

context.write(new Text(productId),
new DoubleWritable(price));

}catch(Exception e){}

}
}