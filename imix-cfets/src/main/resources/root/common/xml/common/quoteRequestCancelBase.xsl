<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.cstp.xstl"
                exclude-result-prefixes="java">

    <!--================================= quoteRequestCancel =================================-->
    <xsl:template name="master-quoteRequestCancel">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if test="@tag != 453 and @tag != 295 ">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatValue(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="master-quoteRequestCancel-NoQuoteEntries">
        <xsl:for-each select="message/body/NoQuoteEntries/field[@name]">
            <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if test="@tag != 167">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatValue(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>