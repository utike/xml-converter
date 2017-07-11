<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <xsl:import href="component/CASH_BOND/ExecutionReport.xsl"/>
    <xsl:import href="component/CASH_BOND/LimitQuoteStatusReport.xsl"/>
    <xsl:import href="component/CASH_BOND/ListMarketDataAck.xsl"/>
    <xsl:import href="component/CASH_BOND/MarketDataSnapshotFullRefresh.xsl"/>
    <xsl:import href="component/CASH_BOND/NewOrderSingleQuote.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequest.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestAck.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestCancel.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteStatusReport.xsl"/>

    <xsl:import href="component/COLLATERAL_REPO/ExecutionReport.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/QuoteStatusReport.xsl"/>

    <xsl:import href="component/ERROR/Error.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>

    <!--xml生成的路由-->
    <!--1.可以根据XML的类型、市场等信息自动路由到对应的处理器-->
    <xsl:template match="/">
        <xsl:variable name="MsgType" select="message/header/field[@name='MsgType']"/>
        <xsl:variable name="MarketIndicator" select="message/body/field[@name='MarketIndicator']"/>

        <xsl:choose>
            <!--================================= CASH_BOND =================================-->
            <xsl:when test="$MsgType = 'AI' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-QuoteStatusReport"/>
            </xsl:when>

            <xsl:when test="$MsgType = '8' and $MarketIndicator = '4'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']"/>
                <xsl:choose>
                    <!--对于限价报价，对应的都是 报价，不是成交。-->
                    <xsl:when test="$QuoteType = '102'">
                        <xsl:call-template name="route-cashBond-LimitQuoteStatusReport"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="route-cashBond-ExecutionReport"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <xsl:when test="$MsgType = 'D' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-NewOrderSingleQuote"/>
            </xsl:when>

            <!--深度行情订阅反馈: 此处取 market 较为麻烦，省略-->
            <xsl:when test="$MsgType = 'U100'">
                <xsl:call-template name="route-cashBond-ListMarketDataAck"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'W' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-MarketDataSnapshotFullRefresh"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'R' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-QuoteRequest"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'U32' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-QuoteRequestCancel"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'U29' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-QuoteRequestAck"/>
            </xsl:when>

            <!--================================= COLLATERAL_REPO =================================-->
            <xsl:when test="$MsgType = 'AI' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-QuoteStatusReport"/>
            </xsl:when>

            <xsl:when test="$MsgType = '8' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-ExecutionReport"/>
            </xsl:when>


            <!--================================= ERROR =================================-->
            <xsl:when test="$MsgType = 'j'">
                <xsl:call-template name="route-Error"/>
            </xsl:when>

            <xsl:otherwise>
                <ROOT>NOT FOUND</ROOT>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>