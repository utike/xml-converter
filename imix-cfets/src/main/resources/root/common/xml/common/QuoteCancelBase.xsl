<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.trade.xstl"
                exclude-result-prefixes="java">

    <xsl:import href="Base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <!--请求报价的主数据-->
    <xsl:template name="master-QuoteCancel">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if test="@tag != 453 and @tag != 295">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--请求报价的 NoRelatedSym 节点下主数据-->
    <!--1. 本场景固定为1 -->
    <xsl:template name="master-QuoteCancel-NoQuoteEntries">
        <xsl:for-each select="message/body/groups[@name='NoQuoteEntries']/group">
            <xsl:for-each select="field">
                <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
                <xsl:if test="@tag != 167">
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                    </xsl:element>
                </xsl:if>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>