package CASH_BOND_EXCEPTION;


import base.DBBaseTest;
import org.junit.Test;

/**
 * 现券买卖异常测试
 * Created by bbhou on 2017/7/8.
 */
public class CashBondExceptionTest extends DBBaseTest {

    /**
     * 目标文件夹
     * @return
     */
    @Override
    protected String getTargetFilePath() {
        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND_EXCEPTION\\";
    }

    /**
     * 普通测试
     */
    @Test
    public void commonTest() {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND_EXCEPTION\\QuoteStatusReport.xml";
        super.execute(path);
    }

    /**
     * 多域测试
     */
    @Test
    public void addFieldsTest() {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND_EXCEPTION\\addFields.xml";
        super.execute(path);
    }

    /**
     * 少域测试
     * 1. 重要的域
     */
    @Test
    public void removeUsageFieldsTest() {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND_EXCEPTION\\removeUsageFields.xml";
        super.execute(path);
    }

    /**
     * 少域测试
     * 1. 不重要的域
     */
    @Test
    public void removeOtherFieldsTest() {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND_EXCEPTION\\removeOtherFields.xml";
        super.execute(path);
    }


    /**
     * 添加枚举
     * 1. 对于新增加的枚举应该由页面前端进行警告！
     */
    @Test
    public void addEnumTest() {

    }

    /**
     * 乱序不影响的
     */
    @Test
    public void disorderTest() {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND_EXCEPTION\\disorder.xml";
        super.execute(path);
    }

    /**
     * 增加重复组
     */
    @Test
    public void addRepeatGroupTest() {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND_EXCEPTION\\addRepeatGroup.xml";
        super.execute(path);
    }

}