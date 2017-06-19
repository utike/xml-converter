<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <xsl:import href="component/INTER_BANK_OFFERING/dialogQuote.xsl"/>
    <xsl:import href="component/INTER_BANK_OFFERING/executionReport.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/dialogQuote.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/executionReport.xsl"/>

    <xsl:import href="component/OUTRIGHT_REPO/dialogQuote.xsl"/>
    <xsl:import href="component/OUTRIGHT_REPO/executionReport.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>

    <!--xml生成的路由-->
    <!--1.可以根据XML的类型、市场等信息自动路由到对应的处理器-->
    <xsl:template match="/">
        <xsl:variable name="MsgType" select="message/header/field[@name='MsgType']/@enum"/>
        <xsl:variable name="MarketIndicator" select="message/body/field[@name='MarketIndicator']/@enum"/>

        <xsl:choose>
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'INTER_BANK_OFFERING'">
                <xsl:call-template name="route-dialogQuote-ibo"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'INTER_BANK_OFFERING'">
                <xsl:call-template name="route-executionReport-ibo"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'COLLATERAL_REPO'">
                <xsl:call-template name="route-dialogQuote-collateral-repo"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'COLLATERAL_REPO'">
                <xsl:call-template name="route-executionReport-collateral-repo"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'OUTRIGHT_REPO'">
                <xsl:call-template name="route-dialogQuote-outright-repo"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'OUTRIGHT_REPO'">
                <xsl:call-template name="route-executionReport-outright-repo"/>
            </xsl:when>

            <xsl:otherwise>
                <ROOT>NOT FOUND</ROOT>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>