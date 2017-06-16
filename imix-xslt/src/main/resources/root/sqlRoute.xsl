<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="component/INTER_BANK_OFFERING/dialogQuoteSql.xsl"/>
    <xsl:import href="component/INTER_BANK_OFFERING/executionReportSql.xsl"/>

    <!--SQL脚本的路由-->
    <!--1.可以根据XML的类型、市场等信息自动路由到对应的处理器-->
    <xsl:template match="/">
        <xsl:variable name="MsgType" select="*/Header/MsgType"/>
        <xsl:variable name="MarketIndicator" select="*/Master/MarketIndicator"/>

        <xsl:choose>
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '1'">
                <xsl:call-template name="route-dialogQuoteSql"/>
            </xsl:when>
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '1'">
                <xsl:call-template name="route-executionReportSql"/>
            </xsl:when>
            <xsl:otherwise>
                <ROOT>NOT FOUND</ROOT>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>