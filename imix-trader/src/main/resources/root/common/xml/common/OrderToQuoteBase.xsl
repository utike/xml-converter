<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.trade.xstl"
                exclude-result-prefixes="java">

    <xsl:import href="Base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <!--成交转为报价的主数据-->
    <xsl:template name="master-OrderToQuote">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="java:XsltUtil.getOrderToQuoteMap(@name)"/>
            <xsl:if test="@tag != 453 and @tag != 235 and @tag != 17 and @tag != 711">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatValue(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>