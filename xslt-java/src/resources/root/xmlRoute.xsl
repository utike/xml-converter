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

    <xsl:import href="component/CASH_BOND/dialogQuote.xsl"/>
    <xsl:import href="component/CASH_BOND/executionReport.xsl"/>

    <xsl:import href="component/SECURITY_LENDING/dialogQuote.xsl"/>
    <xsl:import href="component/SECURITY_LENDING/executionReport.xsl"/>

    <xsl:import href="component/BOND_FORWARD/dialogQuote.xsl"/>
    <xsl:import href="component/BOND_FORWARD/executionReport.xsl"/>

    <xsl:import href="component/INTEREST_RATE_SWAP/fixFloatDialogQuote.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/fixFloatExecutionReport.xsl"/>

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

            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'CASH_BOND'">
                <xsl:call-template name="route-dialogQuote-cash-bond"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'CASH_BOND'">
                <xsl:call-template name="route-executionReport-cash-bond"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'SECURITY_LENDING'">
                <xsl:call-template name="route-dialogQuote-securityLending"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'SECURITY_LENDING'">
                <xsl:call-template name="route-executionReport-securityLending"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'BOND_FORWARD'">
                <xsl:call-template name="route-dialogQuote-bondForward"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'BOND_FORWARD'">
                <xsl:call-template name="route-executionReport-bondForward"/>
            </xsl:when>

            <!--利率互换-对话报价-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'INTEREST_RATE_SWAP'">
                <xsl:variable name="Side" select="message/body/field[@name='Side']/@enum"/>
                <xsl:if test="$Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-dialogQuote-interestRateSwap-fixFloat"/>
                </xsl:if>
            </xsl:when>

            <!--利率互换-成交-->
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'INTEREST_RATE_SWAP'">
                <xsl:variable name="Side" select="message/body/field[@name='Side']/@enum"/>
                <xsl:if test="$Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-executionReport-interestRateSwap-fixFloat"/>
                </xsl:if>
            </xsl:when>

            <xsl:otherwise>
                <ROOT>NOT FOUND</ROOT>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>