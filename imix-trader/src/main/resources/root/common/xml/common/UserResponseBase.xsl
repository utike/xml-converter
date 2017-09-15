<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.trade.xstl"
                exclude-result-prefixes="java">

    <xsl:import href="Base.xsl"/>

    <!--================================= dialogQuote =================================-->
    <!--修改密码反馈-主数据-->
    <xsl:template name="master-UserResponse">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="@name"/>
            <xsl:element name="{$nodeName}">
                <xsl:value-of select="current()"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>