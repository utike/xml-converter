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
                <xsl:if test="$QuoteType = '101'">
                    <xsl:call-template name="route-twoWayQuoteSql-ibo"/>
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
                <xsl:if test="$QuoteType = '101'">
                    <xsl:call-template name="route-twoWayQuoteSql-collateralRepo"/>
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
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:if test="$QuoteType = '1'">
                    <xsl:call-template name="route-dialogQuoteSql-cashBond"/>
                </xsl:if>
                <xsl:if test="$QuoteType = '105'">
                    <xsl:call-template name="route-clickAndDealQuoteSql-cashBond"/>
                </xsl:if>
                <xsl:if test="$QuoteType = '107'">
                    <xsl:call-template name="route-marketMakingQuoteSql-cashBond"/>
                </xsl:if>
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
            <xsl:when test="$MsgType = 'D' and $MarketIndicator = '4'">
                <xsl:call-template name="route-newOrderSingleQuoteSql-cashBond"/>
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

            <!--================================= STANDARD_BOND_FORWARD =================================-->
            <xsl:when test="$MsgType = '8' and $MarketIndicator = '43'">
                <xsl:call-template name="route-executionReportSql-standardBondForward"/>
            </xsl:when>

            <!--================================= INTEREST_RATE_SWAP =================================-->
            <!--利率互换-报价-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '2'">
                <xsl:variable name="QuoteType" select="*/Master/QuoteType"/>
                <xsl:variable name="Side" select="*/Master/Side"/>
                <xsl:if test="$QuoteType ='1' and $Side = 'J'">
                    <xsl:call-template name="route-dialogQuoteSql-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType ='1' and $Side = 'K'">
                    <xsl:call-template name="route-dialogQuoteSql-interestRateSwap-floatFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType ='103' and $Side = 'J'">
                    <xsl:call-template name="route-clickAndDealQuoteSql-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType ='103' and $Side = 'K'">
                    <xsl:call-template name="route-clickAndDealQuoteSql-interestRateSwap-floatFloat"/>
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
                <xsl:if test="$QuoteType = '101' and $Side = 'J'">
                    <xsl:call-template name="route-twoWayQuoteSql-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = '101' and $Side = 'K'">
                    <xsl:call-template name="route-twoWayQuoteSql-interestRateSwap-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <xsl:otherwise>
                <ROOT>NOT FOUND</ROOT>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>