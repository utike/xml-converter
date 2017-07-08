<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="component/CASH_BOND/ExecutionReportSql.xsl"/>
    <xsl:import href="component/CASH_BOND/ListMarketDataAckSql.xsl"/>
    <xsl:import href="component/CASH_BOND/MarketDataSnapshotFullRefreshSql.xsl"/>
    <xsl:import href="component/CASH_BOND/NewOrderSingleQuoteSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestAckSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestCancelSql.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteStatusReportSql.xsl"/>

    <xsl:import href="component/COLLATERAL_REPO/ExecutionReportSql.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/QuoteStatusReportSql.xsl"/>

    <!--SQL脚本的路由-->
    <!--1.可以根据XML的类型、市场等信息自动路由到对应的处理器-->
    <xsl:template match="/">
        <xsl:variable name="MsgType" select="*/Header/MsgType"/>
        <xsl:variable name="MarketIndicator" select="*/Master/MarketIndicator"/>

        <xsl:choose>

            <!--================================= CASH_BOND =================================-->
            <xsl:when test="$MsgType = 'AJ' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-dialogOrderSql"/>
            </xsl:when>

            <!--================================= COLLATERAL_REPO =================================-->
            <xsl:when test="$MsgType = 'AJ' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-dialogOrderSql"/>
            </xsl:when>

            <xsl:otherwise>
                <ROOT>NOT FOUND</ROOT>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>