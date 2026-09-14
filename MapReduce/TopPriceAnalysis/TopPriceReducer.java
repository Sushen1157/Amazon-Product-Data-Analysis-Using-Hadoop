import java.io.IOException;
import java.util.TreeMap;
import java.util.Map;
import org.apache.hadoop.io.*;
import org.apache.hadoop.mapreduce.Reducer;
public class TopPriceReducer 
extends Reducer<Text, DoubleWritable, Text, DoubleWritable> {
    private TreeMap<Double, Text> topPrices = new TreeMap<>();
    public void reduce(Text key, Iterable<DoubleWritable> values, Context context)
    throws IOException, InterruptedException {

        for(DoubleWritable value : values) {

            double price = value.get();

            topPrices.put(price, new Text(key));

            if(topPrices.size() > 20) {
                topPrices.remove(topPrices.firstKey());
            }
        }
    }
    protected void cleanup(Context context)
    throws IOException, InterruptedException {

        for(Map.Entry<Double, Text> entry : topPrices.descendingMap().entrySet()) {

            context.write(entry.getValue(),
            new DoubleWritable(entry.getKey()));

        }
    }
}