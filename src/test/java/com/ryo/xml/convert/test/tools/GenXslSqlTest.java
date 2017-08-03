package com.ryo.xml.convert.test.tools;

import com.ryo.xml.converter.util.StringUtils;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.junit.Test;

import java.io.File;
import java.util.List;

/**
 * Created by bbhou on 2017/8/3.
 */
public class GenXslSqlTest {

    @Test
    public void genTest() {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\resources\\root\\common\\sql\\common\\base.xsl";

        addFilter(path);
    }

    private void addFilter(final String filePath)  {
        SAXReader reader = new SAXReader();
        try {
            Document document = reader.read(new File(filePath));
            List<Node> list=document.selectNodes("/xsl:stylesheet/xsl:template");

            for (Node node : list) {
                System.out.println("====node===="+node.getNodeTypeName());
                String text = node.getText();

                if(StringUtils.isEmpty(text)) {
                    List<Node> slaveNodeList = node.selectNodes("xsl:for-each");
                    for(Node node1 :slaveNodeList) {
                        String slaveNode = node1.getText();
                        //1. salve content
                        if(slaveNode.contains("INSERT INTO")) {
                            System.out.println("【slaveNode text】: "+slaveNode);
                        }
                    }
                } else {
                    //master values;
                    System.out.println("【text】: "+text);
                }
            }
        } catch (DocumentException e) {
            e.printStackTrace();
        }
    }

}
