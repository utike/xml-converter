package com.ryo.xslt.util;



import imix.DataDictionary;
import imix.imix10.*;
import imix.imix10.ExecutionReport;
import imix.imix10.IOI;
import imix.imix10.MarketDataAck;
import imix.imix10.NewOrderSingle;
import imix.imix10.Quote;
import imix.imix20.*;
import imix.imix20.QueryResult;
import imix.imix20.UserResponse;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;

/**
 * Created by bbhou on 2017/6/13.
 */
public class Imix2XmlTest {

    /**
     *
     * @param stringList imix 原始文件内容
     * @param targetDir 目标文件夹
     */
    public static void genXml(List<String> stringList, final String targetDir) {
        int i = 0;

        for (String msgBody : stringList) {
            DataDictionary dd = null;
            imix.Message message = new imix.Message();
            try {
                dd = new DataDictionary("IMIX20.xml");
//			message.fromString(msgBody, dd, false);
                if (msgBody.contains("35=S")) {//对话报价、点击成交、做市报价
                    message = new Quote();
                    message.fromString(msgBody, dd, false);
                } else if (msgBody.contains("35=8")) {//成交数据
                    message = new ExecutionReport();
                    message.fromString(msgBody, dd, false);
                } else if (msgBody.contains("35=6")) {//意向报价、双向报价
                    message = new IOI();
                    message.fromString(msgBody, dd, false);
                } else if (msgBody.contains("35=D")) {//限价报价
                    message = new NewOrderSingle();
                    message.fromString(msgBody, dd, false);
                } else if (msgBody.contains("35=W")){   //行情
                    message = new MarketDataAck();
                    message.fromString(msgBody, dd, false);
                }
            } catch (Exception e) {
                // TODO Auto-generated catch block
            }
            System.out.println(message.toXML(dd));

            i++;
            Path targetPath = Paths.get(targetDir+i+".xml");
            try {
                Files.write(targetPath, Arrays.asList(message.toXML(dd)));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

    private static String getXml20(final String msgBody) {
        DataDictionary dd = null;
        imix.Message message = new imix.Message();
        try {
            dd = new DataDictionary("IMIX20.xml");
//			message.fromString(msgBody, dd, false);
            if (msgBody.contains("35=S")) {//对话报价、点击成交、做市报价
                message = new Quote();
                message.fromString(msgBody, dd, false);
            } else if (msgBody.contains("35=8")) {//成交数据
                message = new ExecutionReport();
                message.fromString(msgBody, dd, false);
            } else if (msgBody.contains("35=6")) {//意向报价、双向报价
                message = new IOI();
                message.fromString(msgBody, dd, false);
            } else if (msgBody.contains("35=D")) {//限价报价
                message = new NewOrderSingle();
                message.fromString(msgBody, dd, false);
            } else if (msgBody.contains("35=W")){   //行情
                message = new MarketDataAck();
                message.fromString(msgBody, dd, false);
            } else if(msgBody.contains("35=BF")) {  //修改密码反馈
                message = new UserResponse();
                message.fromString(msgBody, dd, false);
            } else if(msgBody.contains("35=U01")) {
                message = new QueryResult();
                message.fromString(msgBody, dd, false);
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
        }
        System.out.println(message.toXML(dd));
        return message.toXML(dd);
    }


    public static void main(String[] args) throws IOException {
//        final String imix = "8=IMIX.2.0\u00019=853\u000135=W\u000134=167\u000149=CFETS-TRADING-INFT\u000150=RMB\u000152=20170913-09:48:53.546\u000156=545454545454545454541\u000157=ahhymd\u000148=100002\u000155=10附息国债02\u000160=20170913-15:13:41\u0001167=TB\u0001264=5\u00011021=2\u000110176=4\u0001268=3\u0001269=0\u00011023=1\u000163=2\u0001269=1\u000131=101.0000\u0001272=20170913\u0001270=101.3821\u0001271=10000000\u0001273=15:08:36.071\u00011023=1\u00011070=105\u0001299=201709130440000092\u0001120=CNY\u000164=20170914\u000163=2\u000111143=13\u000110204=1\u000110044=4\u000110047=0\u0001453=1\u0001448=888888888888888888888\u0001452=101\u0001802=2\u0001523=htjjdealerahhy\u0001803=2\u0001523=安徽海益测试对手方\u0001803=101\u0001269=1\u000131=101.0000\u0001272=20170913\u0001270=101.3821\u0001271=10000000\u0001273=15:13:41.190\u00011023=2\u00011070=105\u0001299=201709130440000093\u0001120=CNY\u000164=20170914\u000163=2\u000111143=13\u000110204=1\u000110044=4\u000110047=0\u0001453=1\u0001448=888888888888888888888\u0001452=101\u0001802=2\u0001523=htjjdealerahhy\u0001803=2\u0001523=安徽海益测试对手方\u0001803=101\u000193=34\u000189=?????爂?????榲?爂?????榠倘????\u0004| \u0004:\u0011\u0004@)\u000110=001\u0001";

        final String BFImix = "8=IMIX.2.0\u00019=215\u000135=BF\u000134=5\u000149=CFETS-TRADING-INFT\u000150=RMB\u000152=20170915-02:54:05.244\u000156=545454545454545454541\u000157=ahhytrd\u0001553=ahhytrd\u0001923=ODahhytrd000000007\u0001926=4\u0001927=new password equal old password.\u000193=16\u000189=???????\u0004| \u0004:\u0011\u0004@)\u000110=078\u0001";

        final String U01QueryRequestImix = "8=IMIX.2.0\u00019=212\u000135=U01\u000134=70\u000149=CFETS-TRADING-INFT\u000150=RMB\u000152=20170915-05:05:35.566\u000156=545454545454545454541\u000157=ahhytrd\u000111=ODahhytrd000000014\u0001911=0\u000110168=QRahhytrd000000013\u000110270=47\u000111251=1403\u000193=16\u000189=ᐒᐊᐆ\u0080\u0080\u0080\u0083\u0004| \u0004:\u0011\u0004@)\u000110=182\u0001";


        getXml20(U01QueryRequestImix);

//        Path path = Paths.get("E:\\CODE_GEN\\Fork\\xml-converter\\xslt-util\\src\\main\\resources\\data\\20170728\\imixMarketData.data");
//        List<String> stringList = Files.readAllLines(path);

//            String msgBody = "8=IMIX.1.09=79035=S34=1149=CFETS-RMB-CSTP52=20160928-07:49:49.78656=10159057=stkecstp1115=CFETS-RMB128=101590129=stkecstp111=99376847507549000138=400000.0044=3.000048=IBO00754=160=20160928-15:19:34.19062=20160928-19:20:00.00063=1117=201609280120000037297=16537=110002=333.3310176=110192=110271=20160928-15:19:34.19010272=N10282=N10289=400333.3310316=510465=0453=2448=101590452=101802=6523=浙商证券首席交易员803=101523=浙商证券股份有限公司803=124523=浙商证券803=125523=建行杭州市庆春支行803=110523=33001617835059888666803=15523=CFETS803=29448=304162452=102802=4523=a028803=101523=恒天银行803=124523=恒天银行803=125523=CFETS803=2993=3389=???????????卤?搄沀??′??????| :@)10=065";
//            String msgBody = "8=IMIX.1.0\u00019=1051\u000135=S\u000134=80\u000149=CFETS-RMB-CSTP\u000152=20170216-07:03:27.825\u000156=102445\u000157=zyzqcstp3\u0001115=CFETS-RMB\u0001128=102445\u0001129=zyzqcstp3\u000111=994828487256773006\u000138=6400000\u000144=35.0019\u000148=OR007\u000154=1\u000155=OR007\u000160=20170216-15:03:27.399\u000162=20170216-19:20:00.000\u000163=1\u000164=20170216\u0001117=201702161020000005\u0001119=5709028.07\u0001120=CNY\u0001297=107\u0001537=1\u0001919=0\u000110022=N\u000110045=0\u000110158=N\u000110176=10\u000110192=1\u000110271=20170216-15:03:11.586\u000110272=R\u000110282=N\u000110289=5747350.98\u000110316=7\u000110465=0\u000111143=13\u0001453=2\u0001448=304161\u0001452=101\u0001802=7\u0001523=中原证券对手方\u0001803=101\u0001523=恒天基金\u0001803=124\u0001523=恒天基金\u0001803=125\u0001523=1111\u0001803=110\u0001523=654321\u0001803=15\u0001523=A654321\u0001803=10\u0001523=CFETS\u0001803=29\u0001448=102445\u0001452=102\u0001802=4\u0001523=中原证券首席交易员\u0001803=101\u0001523=中原证券股份有限公司\u0001803=124\u0001523=中原证券\u0001803=125\u0001523=CFETS\u0001803=29\u0001711=1\u0001309=010216\u000110321=1.20356\u000110322=1.28536\u0001882=89.2036\u000110325=89.8024\u0001810=88.0000\u000110328=88.5170\u0001879=6400000\u0001311=01国开16\u0001887=2\u0001888=Yield\u0001889=7.2798\u0001888=Yield2\u0001889=7.1494\u000193=39\u000189=ᐖᐸ䮐\u052Eဖ㈂㙀ᛈ˘䁚䠊夀婬\u2028岀ⶐֲ¶ဖ⚒㤄㋤Ŭ\u202C䴊À\u0080\u0080\u0080\u009A\u0004| \u0004:\u0011\u0004@)\u000110=247\u0001";
//        String msgBody = stringList.get(0);

//        int i = 0;
//        for (String msgBody : stringList) {
//            DataDictionary dd = null;
//            imix.Message message = new imix.Message();
//            try {
//                dd = new DataDictionary("IMIX10.xml");
////			message.fromString(msgBody, dd, false);
//                if (msgBody.contains("35=S")) {//对话报价、点击成交、做市报价
//                    message = new Quote();
//                    message.fromString(msgBody, dd, false);
//                } else if (msgBody.contains("35=8")) {//成交数据
//                    message = new ExecutionReport();
//                    message.fromString(msgBody, dd, false);
//                } else if (msgBody.contains("35=6")) {//意向报价、双向报价
//                    message = new IOI();
//                    message.fromString(msgBody, dd, false);
//                } else if (msgBody.contains("35=D")) {//限价报价
//                    message = new NewOrderSingle();
//                    message.fromString(msgBody, dd, false);
//                } else if (msgBody.contains("35=W")){   //行情
//                    message = new MarketDataAck();
//                    message.fromString(msgBody, dd, false);
//                }
//            } catch (Exception e) {
//                // TODO Auto-generated catch block
//            }
//            System.out.println(message.toXML(dd));
//
//            i++;
//            Path targetPath = Paths.get("E:\\Test\\_imix\\marketData20170728\\"+i+".txt");
//            Files.write(targetPath, Arrays.asList(message.toXML(dd)));
//        }

    }


}
