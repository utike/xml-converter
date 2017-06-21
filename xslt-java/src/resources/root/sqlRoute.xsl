<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="component/INTER_BANK_OFFERING/dialogQuoteSql.xsl"/>
    <xsl:import href="component/INTER_BANK_OFFERING/executionReportSql.xsl"/>
    <xsl:import href="component/INTER_BANK_OFFERING/indicatorQuoteSql.xsl"/>

    <xsl:import href="component/COLLATERAL_REPO/dialogQuoteSql.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/executionReportSql.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/indicatorQuoteSql.xsl"/>

    <xsl:import href="component/OUTRIGHT_REPO/dialogQuoteSql.xsl"/>
    <xsl:import href="component/OUTRIGHT_REPO/executionReportSql.xsl"/>
    <xsl:import href="component/OUTRIGHT_REPO/indicatorQuoteSql.xsl"/>

    <xsl:import href="component/CASH_BOND/dialogQuoteSql.xsl"/>
    <xsl:import href="component/CASH_BOND/executionReportSql.xsl"/>
    <xsl:import href="component/CASH_BOND/indicatorQuoteSql.xsl"/>

    <xsl:import href="component/SECURITY_LENDING/dialogQuoteSql.xsl"/>
    <xsl:import href="component/SECURITY_LENDING/executionReportSql.xsl"/>
    <xsl:import href="component/SECURITY_LENDING/indicatorQuoteSql.xsl"/>

    <xsl:import href="component/BOND_FORWARD/dialogQuoteSql.xsl"/>
    <xsl:import href="component/BOND_FORWARD/executionReportSql.xsl"/>
    <xsl:import href="component/BOND_FORWARD/indicatorQuoteSql.xsl"/>

    <xsl:import href="component/INTEREST_RATE_SWAP/fixFloatDialogQuoteSql.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/fixFloatExecutionReportSql.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/fixFloatIndicatorQuoteSql.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/floatFloatDialogQuoteSql.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/floatFloatExecutionReportSql.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/floatFloatIndicatorQuoteSql.xsl"/>

    <!--SQL脚本的路由-->
    <!--1.可以根据XML的类型、市场等信息自动路由到对应的处理器-->
    <xsl:template match="/">
        <xsl:variable name="MsgType" select="*/Header/MsgType"/>
        <xsl:variable name="MarketIndicator" select="*/Master/MarketIndicator"/>

        <xsl:choose>
            <!--================================= INTER_BANK_OFFERING =================================-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '1'">
                <xsl:call-template name="route-dialogQuoteSql-ibo"/>
            </xsl:when>
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '1'">
                <xsl:call-template name="route-executionReportSql-ibo"/>
            </xsl:when>
            <xsl:when test="$MsgType = '6' and $MarketIndicator = '1'">
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:if test="$QuoteType = '0'">
                    <xsl:call-template name="route-indicatorQuoteSql-ibo"/>
                </xsl:if>
            </xsl:when>

            <!--================================= COLLATERAL_REPO =================================-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '9'">
                <xsl:call-template name="route-dialogQuoteSql-collateralRepo"/>
            </xsl:when>
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '9'">
                <xsl:call-template name="route-executionReportSql-collateralRepo"/>
            </xsl:when>
            <xsl:when test="$MsgType = '6' and $MarketIndicator = '9'">
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:if test="$QuoteType = '0'">
                    <xsl:call-template name="route-indicatorQuoteSql-collateralRepo"/>
                </xsl:if>
            </xsl:when>

            <!--================================= OUTRIGHT_REPO =================================-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '10'">
                <xsl:call-template name="route-dialogQuoteSql-outrightRepo"/>
            </xsl:when>
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '10'">
                <xsl:call-template name="route-executionReportSql-outrightRepo"/>
            </xsl:when>
            <xsl:when test="$MsgType = '6' and $MarketIndicator = '10'">
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:if test="$QuoteType = '0'">
                    <xsl:call-template name="route-indicatorQuoteSql-collateralRepo"/>
                </xsl:if>
            </xsl:when>

            <!--================================= CASH_BOND =================================-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '4'">
                <xsl:call-template name="route-dialogQuoteSql-cashBond"/>
            </xsl:when>
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '4'">
                <xsl:call-template name="route-executionReportSql-cashBond"/>
            </xsl:when>
            <xsl:when test="$MsgType = '6' and $MarketIndicator = '4'">
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:if test="$QuoteType = '0'">
                    <xsl:call-template name="route-indicatorQuoteSql-cashBond"/>
                </xsl:if>
            </xsl:when>

            <!--================================= SECURITY_LENDING =================================-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '8'">
                <xsl:call-template name="route-dialogQuoteSql-securityLending"/>
            </xsl:when>
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '8'">
                <xsl:call-template name="route-executionReportSql-securityLending"/>
            </xsl:when>
            <xsl:when test="$MsgType = '6' and $MarketIndicator = '8'">
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:if test="$QuoteType = '0'">
                    <xsl:call-template name="route-indicatorQuoteSql-securityLending"/>
                </xsl:if>
            </xsl:when>

            <!--================================= BOND_FORWARD =================================-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '5'">
                <xsl:call-template name="route-dialogQuoteSql-bondForward"/>
            </xsl:when>
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '5'">
                <xsl:call-template name="route-executionReportSql-bondForward"/>
            </xsl:when>
            <xsl:when test="$MsgType = '6' and $MarketIndicator = '5'">
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:if test="$QuoteType = '0'">
                    <xsl:call-template name="route-indicatorQuoteSql-bondForward"/>
                </xsl:if>
            </xsl:when>

            <!--================================= INTEREST_RATE_SWAP =================================-->
            <!--利率互换-对话报价-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '2'">
                <xsl:variable name="Side" select="*/Master/Side"/>
                <xsl:if test="$Side = 'J'">
                    <xsl:call-template name="route-dialogQuoteSql-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$Side = 'K'">
                    <xsl:call-template name="route-dialogQuoteSql-interestRateSwap-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <!--利率互换-成交-->
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '2'">
                <xsl:variable name="Side" select="*/Master/Side"/>
                <xsl:if test="$Side = 'J'">
                    <xsl:call-template name="route-executionReportSql-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$Side = 'K'">
                    <xsl:call-template name="route-executionReportSql-interestRateSwap-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <!--利率互换-IOI-->
            <xsl:when test="$MsgType = '6' and $MarketIndicator = '2'">
                <xsl:variable name="Side" select="*/Master/Side"/>
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:if test="$QuoteType = '0' and $Side = 'J'">
                    <xsl:call-template name="route-indicatorQuoteSql-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = '0' and $Side = 'K'">
                    <xsl:call-template name="route-indicatorQuoteSql-interestRateSwap-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <xsl:otherwise>
                <ROOT>NOT FOUND</ROOT>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>