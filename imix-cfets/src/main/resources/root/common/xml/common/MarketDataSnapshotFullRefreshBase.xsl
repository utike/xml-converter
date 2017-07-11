<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.trade.xstl"
                exclude-result-prefixes="java">

    <xsl:import href="Base.xsl"/>

    <!--================================= ListMarketDataAck =================================-->

    <!--行情订阅主数据-->
    <xsl:template name="master-MarketDataSnapshotFullRefresh">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="@name"/>
            <xsl:if test="@tag != 146 and @tag != 453">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatValue(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--主数据，不相关的系统变量-->
    <!--<xsl:template name="master-NoRelatedSym">-->
        <!--<xsl:for-each select="message/body/groups[@name='NoRelatedSym']/group">-->
            <!--<xsl:for-each select="field[@name]">-->
                <!--<xsl:variable name="nodeName" select="@name"/>-->
                <!--<xsl:element name="{$nodeName}">-->
                    <!--<xsl:value-of select="current()"/>-->
                <!--</xsl:element>-->
            <!--</xsl:for-each>-->
        <!--</xsl:for-each>-->
    <!--</xsl:template>-->

</xsl:stylesheet>