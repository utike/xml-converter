package com.ryo.xml.converter.util;

import com.ryo.xml.converter.constant.Imix803Mapping;
import com.ryo.xml.converter.vo.GroupVo;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.File;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by bbhou on 2017/6/13.
 */
public class XslGeneratorUtil {

    private static List<String> special_list = new LinkedList<>();

    static {
        /**
         * 对于这个节点 每一个 group 都应该是 一个对象。
         * 在 message 构建时忽略掉。
         */
        special_list.add("NoUnderlyings");
    }

    /**
     * 1. 根据解析拼接处对应的 xsl 内容
     * 2. 根据 mapping 替换掉太长的名称。
     * 3. 返回最后的结果
     * @param xmlPath xml 文件路径
     * @return
     */
    private static GroupVo generatorXslContent(final String xmlPath)  {
        GroupVo groupVo = new GroupVo();

        //创建SAXReader对象
        SAXReader reader = new SAXReader();
        //读取文件 转换成Document
        org.dom4j.Document document = null;
        try {
            document = reader.read(new File(xmlPath));
            //获取根节点元素对象
            Element root = document.getRootElement();
            List<Element> eles = root.element("body").elements("groups");
            for (Element element : eles) {
                String groupName = element.attribute("name").getValue();
                if("NoUnderlyings".equals(groupName)) {
                    String content = getNoUnderlyingsXslContent(element);
                    groupVo.setNoUnderlyings(content);
                } else if("NoPartyIDs".equals(groupName)) {
                    String content = getNoPartyIDsXslContent(element);
                    groupVo.setNoPartyIDs(content);
                }
            }
            return groupVo;
        } catch (DocumentException e) {
            e.printStackTrace();
            return groupVo;
        }
    }

    /**
     * 生成 NoUnderlyings xsl 内容
     * @return
     */
    private static String getNoUnderlyingsXslContent(Element element) {
        StringBuilder stringBuilder = new StringBuilder();

        return stringBuilder.toString();
    }

    /**
     * 生成 NoPartyIDs xsl 内容
     * 1. 对手方 还是我方。
     * @return
     */
    private static String getNoPartyIDsXslContent(Element element) {
        String PartySubID = "PartySubID";
        String PartySubIDType = "PartySubIDType";

        StringBuilder stringBuilder = new StringBuilder();
        List<Element> groups = element.elements("group");
        for (Element group : groups) {
            List<Element> NoPartySubIDsEles = group.element("groups").elements("group");

            for (Element NoPartySubIDsEle : NoPartySubIDsEles) {
                List<Element> fields = NoPartySubIDsEle.elements("field");
                for(Element field : fields) {
                    String name = field.attributeValue("name");
                    if("PartySubIDType".equals(name)) {
                        String actualVal = Imix803Mapping.getActualVal(field.attributeValue("enum"));
//                        System.out.println(field.attributeValue("enum"));
                    }
                }
            }


        }

        return stringBuilder.toString();
    }

    public static void main(String[] args) {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\src\\main\\resources\\original\\1.txt";
        GroupVo groupVo = generatorXslContent(xmlPath);
//
//        String templateContent = FileUtil.getFileContent("E:\\CODE_GEN\\Fork\\xml-converter\\src\\main\\resources\\xml\\template.xsl");
//        String resultXsl = String.format(templateContent, groupVo.getNoPartyIDs(), groupVo.getNoUnderlyings());
//        System.out.println(resultXsl);


    }



}
