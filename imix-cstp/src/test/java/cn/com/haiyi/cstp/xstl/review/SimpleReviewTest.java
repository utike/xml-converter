package cn.com.haiyi.cstp.xstl.review;

import org.junit.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by bbhou on 2017/8/29.
 */
public class SimpleReviewTest extends AbstractReViewBaseTest {

    @Test
    public void test() throws IOException {
        final String dir = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\test\\resources\\original";
        List<String> stringList = getStringList(dir);

        try {
            for(String path : stringList) {
                LOGGER.info("Path: {} start!", path);
                super.execute(path);
            }
        } catch (Exception ex) {
            LOGGER.error("allMarketStatisticsTest ex: {}", ex, ex);
        }
    }

    private List<String> getStringList(final String dir) throws IOException {
        List<String> stringList = new LinkedList<>();

        Path path = Paths.get(dir);
        Files.list(path).forEach(p->{
            String fileName = p.getFileName().toString();
            if(fileName.endsWith("xml")) {
                stringList.add(p.toString());
            }
        });
        return stringList;
    }

}
