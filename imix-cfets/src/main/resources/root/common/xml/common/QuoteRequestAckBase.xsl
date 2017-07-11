<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.trade.xstl"
                exclude-result-prefixes="java">

    <xsl:import href="Base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <!--新增/撤销请求报价成功反馈的主数据-->
    <xsl:template name="master-QuoteRequestAck">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if test="@tag != 146">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--请求报价的 NoRelatedSym 节点下主数据-->
    <!--这个也许可以抽离成共有的方法-->
    <xsl:template name="master-QuoteRequestAck-NoRelatedSym">
        <xsl:for-each select="message/body/groups[@name='NoRelatedSym']/group">
            <xsl:for-each select="field[@name]">
                <xsl:if test="@tag != 146 and @tag != 453">
                    <xsl:variable name="nodeName" select="@name"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                    </xsl:element>
                </xsl:if>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>