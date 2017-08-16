package base;

import org.junit.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by bbhou on 2017/8/15.
 */
public class TableContainsTest {

    @Test
    public void isContainsTest() {
        List<String> orderList = getOrdersList();
        List<String> quotesList = getQuotesList();

        for(String order : orderList) {
            if(!quotesList.contains(order)) {
                System.out.println(order);
            }
        }
    }

    private List<String> getQuotesList() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\quotes.txt";
        Path path = Paths.get(filePath);
        try {
            return Files.readAllLines(path);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private List<String> getOrdersList() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orders.txt";
        Path path = Paths.get(filePath);
        try {
            return Files.readAllLines(path);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

}
