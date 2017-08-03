<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.trade.xstl"
                exclude-result-prefixes="java">

    <xsl:import href="Base.xsl"/>

    <!--1. 交易类型需要进行映射。值也需要进行映射。-->
    <!--================================= LimitQuoteStatusReport =================================-->
    <xsl:template name="master-LimitQuoteStatusReport">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if test="@tag != 453 and @tag != 235 and @tag != 167 and @tag != 10204">
                <xsl:element name="{$nodeName}">
                    <xsl:choose>
                        <xsl:when test="$nodeName = 'TransType'">
                            <xsl:value-of select="java:XsltUtil.getTransTypeFormatValue(current())"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!--此处主要是日期的格式化-->
                            <xsl:value-of select="java:XsltUtil.getFormatValue(current())"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>