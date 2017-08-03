<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.cstp.xstl"
                exclude-result-prefixes="java">

    <!--================================= dialogQuote =================================-->
    <!--意向报价的主数据,没有利率-->
    <xsl:template name="master-twoWayQuote-withoutRate">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if test="@tag != 453 and @tag != 711 and @tag != 232 and @tag != 136 and @tag != 10210 and @tag != 555 and @tag != 215">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>


    <!--意向报价的主数据,具有利率-->
    <!--1.price 需要转化为rate-->
    <xsl:template name="master-twoWayQuote-withRate">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if test="@tag != 453 and @tag != 711 and @tag != 232 and @tag != 136 and @tag != 10210 and @tag != 555 and @tag != 215">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatDateAndRate($nodeName, current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--意向报价的主数据,NoStipulations信息-->
    <xsl:template name="master-twoWayQuote-NoStipulations">
        <xsl:for-each select="message/body/groups[@name='NoStipulations']/group">
            <xsl:variable name="nodeName" select="field[@name='StipulationType']"/>
            <xsl:element name="{$nodeName}">
                <xsl:value-of select="field[@name='StipulationValue']"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!--意向报价的主数据,NoMiscFees信息-->
    <xsl:template name="master-twoWayQuote-NoMiscFees">
        <xsl:element name="MiscFeeAmt">
            <xsl:value-of select="message/body/groups[@name='NoMiscFees']/group/field[@name='MiscFeeAmt']"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>