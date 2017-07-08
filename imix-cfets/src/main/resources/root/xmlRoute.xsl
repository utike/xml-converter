<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <xsl:import href="component/CASH_BOND/dialogOrder.xsl"/>
    <xsl:import href="component/CASH_BOND/dialogQuoteCancel.xsl"/>
    <xsl:import href="component/CASH_BOND/dialogQuoteCreateModify.xsl"/>
    <xsl:import href="component/CASH_BOND/limitQuoteCancel.xsl"/>
    <xsl:import href="component/CASH_BOND/limitQuoteCreateModify.xsl"/>
    <xsl:import href="component/CASH_BOND/requestOrder.xsl"/>
    <xsl:import href="component/CASH_BOND/requestQuoteCancel.xsl"/>
    <xsl:import href="component/CASH_BOND/requestQuoteCreateModify.xsl"/>

    <xsl:import href="component/COLLATERAL_REPO/dialogOrder.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/dialogQuoteCancel.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/dialogQuoteCreateModify.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>

    <!--xml生成的路由-->
    <!--1.可以根据XML的类型、市场等信息自动路由到对应的处理器-->
    <xsl:template match="/">
        <xsl:variable name="MsgType" select="message/header/field[@name='MsgType']"/>
        <xsl:variable name="MarketIndicator" select="message/body/field[@name='MarketIndicator']"/>

        <xsl:choose>
            <!--================================= CASH_BOND =================================-->
            <xsl:when test="$MsgType = 'AJ' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-dialogOrder"/>
            </xsl:when>


            <!--================================= COLLATERAL_REPO =================================-->
            <xsl:when test="$MsgType = 'AJ' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-dialogOrder"/>
            </xsl:when>

            <xsl:otherwise>
                <ROOT>NOT FOUND</ROOT>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>