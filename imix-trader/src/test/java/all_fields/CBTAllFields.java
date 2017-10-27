package all_fields;

import cn.com.haiyi.trade.xstl.XsltUtil;
import org.junit.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by bbhou on 2017/10/18.
 */
public class CBTAllFields {


//    XsltUtil.getDialogQuoteMap
    @Test
    public void CBTDialogQuoteTest() throws IOException {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\all_fields\\CBT-DialogQuote.txt";
        Path path = Paths.get(filePath);
        String fileName = path.getFileName().toString();//文件名称

        List<String> fields = Files.readAllLines(path); //所有原始字段

        //1. 字段映射
        List<String> mappedFields = new LinkedList<>(); //字段映射
        for (String field : fields) {
            mappedFields.add( XsltUtil.getDialogQuoteMap(field));
        }

        //2. 判断数据库是否有此字段
        List<String> dbFields = new LinkedList<>();
        for(String mappedField : mappedFields) {
            if("1".equals(XsltUtil.isCfetsQuotesContains(mappedField))) {
                dbFields.add(mappedField);
            }
        }

        //3. 结果输出到目标文件
        String targetFilePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\all_fields\\result\\"+fileName;
        Files.write(Paths.get(targetFilePath), dbFields);
    }










}
