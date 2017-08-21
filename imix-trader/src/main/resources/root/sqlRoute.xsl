<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="component/CASH_BOND/ExecutionReportSql.xsl"/>
    <xsl:import href="component/CASH_BOND/LimitQuoteStatusReportSql.xsl"/>
    <xsl:import href="component/CASH_BOND/ListMarketDataAckSql.xsl"/>
    <xsl:import href="component/CASH_BOND/MarketDataSnapshotFullRefreshSql.xsl"/>
    <xsl:import href="component/CASH_BOND/NewOrderSingleQuoteSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteCancelSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestAckSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestCancelSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteStatusReportSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteResponseSql.xsl"/>
    <xsl:import href="component/CASH_BOND/RequestQuoteSql.xsl"/>

    <xsl:import href="component/COLLATERAL_REPO/ExecutionReportSql.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/QuoteStatusReportSql.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/QuoteSql.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/QuoteResponseSql.xsl"/>

    <xsl:import href="component/ERROR/ErrorSql.xsl"/>

    <xsl:import href="component/OTHER/OrderToQuoteSql.xsl"/>

    <!--SQL脚本的路由-->
    <!--1.可以根据XML的类型、市场等信息自动路由到对应的处理器-->
    <xsl:template match="/">
        <xsl:variable name="MsgType" select="*/Header/MsgType"/>
        <xsl:variable name="MarketIndicator" select="*/Master/MarketIndicator"/>

        <xsl:choose>
            <!--================================= CASH_BOND =================================-->
            <xsl:when test="$MsgType = 'AI' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-QuoteStatusReportSql"/>
            </xsl:when>

            <xsl:when test="$MsgType = '8' and $MarketIndicator = '4'">
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:choose>
                    <!--对于限价报价，对应的都是 报价，不是成交。-->
                    <xsl:when test="$QuoteType = '102'">
                        <xsl:call-template name="route-cashBond-LimitQuoteStatusReportSql"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="route-cashBond-ExecutionReportSql"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!--报价 Quote-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '4'">
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:choose>
                    <!--113 为请求报价-->
                    <xsl:when test="$QuoteType = '113'">
                        <xsl:call-template name="route-cashBond-RequestQuoteSql"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="route-cashBond-QuoteSql"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!--限价报价-->
            <xsl:when test="$MsgType = 'D' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-NewOrderSingleQuoteSql"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'U100' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-ListMarketDataAckSql"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'W' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-MarketDataSnapshotFullRefreshSql"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'R' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-QuoteRequestSql"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'U32' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-QuoteRequestCancelSql"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'U29' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-QuoteRequestAckSql"/>
            </xsl:when>
            <!--请求报价取消-->
            <xsl:when test="$MsgType = 'Z' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-QuoteCancelSql"/>
            </xsl:when>
            <!--确认或者拒绝成交及询价通知-->
            <xsl:when test="$MsgType = 'AJ' and $MarketIndicator='4'">
                <xsl:call-template name="route-cashBond-QuoteResponseSql"/>
            </xsl:when>

            <!--================================= COLLATERAL_REPO =================================-->
            <xsl:when test="$MsgType = 'AI' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-QuoteStatusReportSql"/>
            </xsl:when>
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-ExecutionReportSql"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'AJ' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-QuoteResponseSql"/>
            </xsl:when>
            <!--报价 Quote-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-QuoteSql"/>
            </xsl:when>

            <!--================================= ERROR =================================-->
            <xsl:when test="$MsgType = 'j'">
                <xsl:call-template name="route-ErrorSql"/>
            </xsl:when>

            <!--================================= Other-Order2Quote =================================-->
            <xsl:when test="$MsgType = 'FINAL'">
                <xsl:call-template name="route-orderToQuoteSql"/>
            </xsl:when>

            <xsl:otherwise>
                <xsl:call-template name="NOT-FOUND"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>