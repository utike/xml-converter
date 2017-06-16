<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:msxsl="http://www.w3.org/1999/xhtml">

    <msxsl:script language="JavaScript" implements-prefix="jscript">
        <![CDATA[
        /**
         * 自定义映射
         * @param original 原始值
         * @param constantMap 映射列表.是一个JSON对象。
         * @see ENUM_CONSTANT
         */
        function defineMap(original, constantMap) {
            var result = constantMap[original];
            if (!!result
                && result != "") {
                return result;
            }
            return original;
        }

        /**
         * 获取格式化的日期。如果不需要对利率进行互换，使用这个。
         * @param original 原始日期。如：20170216-14:53:35.026
         * @returns {*} 将-替换后的日期。如：20170216 14:53:35.026
         */
        function getFormatDate(original) {
            var dateReg = /^[0-9]{8}-[0-9]{2}:[0-9]{2}:[0-9]{2}\.[0-9]{3}$/;
            if (dateReg.test(original)) {
                return original.replace('-', ' ');
            }
            return original;
        }

        /**
         * 对日期进行格式化；对利率进行处理。
         * @param nodeName 节点名称
         * @param original 原始值
         */
        function getFormatDateAndRate(nodeName, original) {
            if ("Price" == nodeName) {
                return getRate(original);
            } else {
                return getFormatDate(original);
            }
        }

        /**
         * 获取当前金额对应的利率
         * @param original 原始金额
         * @returns {number} 对金额进行运算之后的结果
         */
        function getRate(original) {
            return original / 100.0;
        }
        ]]>
    </msxsl:script>


</xsl:stylesheet>