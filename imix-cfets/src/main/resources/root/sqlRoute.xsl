<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="component/CASH_BOND/dialogOrderSql.xsl"/>
    <xsl:import href="component/CASH_BOND/dialogQuoteCancelSql.xsl"/>
    <xsl:import href="component/CASH_BOND/dialogQuoteCreateModifySql.xsl"/>
    <xsl:import href="component/CASH_BOND/limitQuoteCancelSql.xsl"/>
    <xsl:import href="component/CASH_BOND/limitQuoteCreateModifySql.xsl"/>
    <xsl:import href="component/CASH_BOND/requestOrderSql.xsl"/>
    <xsl:import href="component/CASH_BOND/requestQuoteCancelSql.xsl"/>
    <xsl:import href="component/CASH_BOND/requestQuoteCreateModifySql.xsl"/>

    <xsl:import href="component/COLLATERAL_REPO/dialogOrderSql.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/dialogQuoteCancelSql.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/dialogQuoteCreateModifySql.xsl"/>

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