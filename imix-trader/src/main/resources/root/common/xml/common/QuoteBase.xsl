<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.trade.xstl"
                exclude-result-prefixes="java">

    <xsl:import href="Base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <!--限价报价的主数据-->
    <xsl:template name="master-Quote">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if test="@tag != 453 and @tag != 235 and @tag != 232">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatValue(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--意向报价的主数据,NoStipulations信息-->
    <xsl:template name="master-Quote-NoStipulations">
        <xsl:for-each select="message/body/groups[@name='NoStipulations']/group">
            <xsl:variable name="nodeName" select="field[@name='StipulationType']"/>
            <xsl:element name="{$nodeName}">
                <xsl:value-of select="field[@name='StipulationValue']"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>