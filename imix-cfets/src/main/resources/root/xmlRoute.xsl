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
        <xsl:variable name="MsgType" select="message/header/field[@name='MsgType']/@enum"/>
        <xsl:variable name="MarketIndicator" select="message/body/field[@name='MarketIndicator']/@enum"/>

        <xsl:choose>
            <!--================================= INTER_BANK_OFFERING =================================-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'INTER_BANK_OFFERING'">
                <xsl:call-template name="route-dialogQuote-ibo"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'INTER_BANK_OFFERING'">
                <xsl:call-template name="route-executionReport-ibo"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'INTER_BANK_OFFERING'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-indicatorQuote-ibo"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'TWO_WAY'">
                    <xsl:call-template name="route-twoWayQuote-ibo"/>
                </xsl:if>
            </xsl:when>

            <!--================================= COLLATERAL_REPO =================================-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'COLLATERAL_REPO'">
                <xsl:call-template name="route-dialogQuote-collateralRepo"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'COLLATERAL_REPO'">
                <xsl:call-template name="route-executionReport-collateralRepo"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'COLLATERAL_REPO'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-indicatorQuote-collateralRepo"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'TWO_WAY'">
                    <xsl:call-template name="route-twoWayQuote-collateralRepo"/>
                </xsl:if>
            </xsl:when>

            <!--================================= OUTRIGHT_REPO =================================-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'OUTRIGHT_REPO'">
                <xsl:call-template name="route-dialogQuote-outrightRepo"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'OUTRIGHT_REPO'">
                <xsl:call-template name="route-executionReport-outrightRepo"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'OUTRIGHT_REPO'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-indicatorQuote-outrightRepo"/>
                </xsl:if>
            </xsl:when>

            <!--================================= CASH_BOND =================================-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'CASH_BOND'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'TRADEABLE'">
                    <xsl:call-template name="route-dialogQuote-cashBond"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'CLICK_AND_DEAL_QUOTE'">
                    <xsl:call-template name="route-clickAndDealQuote-cashBond"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'MARKET_MAKING'">
                    <xsl:call-template name="route-marketMakingQuote-cashBond"/>
                </xsl:if>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'CASH_BOND'">
                <xsl:call-template name="route-executionReport-cashBond"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'CASH_BOND'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-indicatorQuote-cashBond"/>
                </xsl:if>
            </xsl:when>
            <xsl:when test="$MsgType = 'NewOrderSingle' and $MarketIndicator = 'CASH_BOND'">
                <xsl:call-template name="route-newOrderSingleQuote-cashBond"/>
            </xsl:when>

            <!--================================= SECURITY_LENDING =================================-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'SECURITY_LENDING'">
                <xsl:call-template name="route-dialogQuote-securityLending"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'SECURITY_LENDING'">
                <xsl:call-template name="route-executionReport-securityLending"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'SECURITY_LENDING'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-indicatorQuote-securityLending"/>
                </xsl:if>
            </xsl:when>

            <!--================================= BOND_FORWARD =================================-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'BOND_FORWARD'">
                <xsl:call-template name="route-dialogQuote-bondForward"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'BOND_FORWARD'">
                <xsl:call-template name="route-executionReport-bondForward"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'BOND_FORWARD'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-indicatorQuote-bondForward"/>
                </xsl:if>
            </xsl:when>

            <!--================================= STANDARD_BOND_FORWARD =================================-->
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'STANDARD_BOND_FORWARD'">
                <xsl:call-template name="route-executionReport-standardBondForward"/>
            </xsl:when>


            <!--================================= INTEREST_RATE_SWAP =================================-->
            <!--利率互换-对话报价-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'INTEREST_RATE_SWAP'">
                <xsl:variable name="Side" select="message/body/field[@name='Side']/@enum"/>
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'TRADEABLE' and $Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-dialogQuote-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'TRADEABLE' and $Side = 'FLOAT_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-dialogQuote-interestRateSwap-floatFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'CLICK_AND_NEGOTIATE_QUOTE' and $Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-clickAndDealQuote-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'CLICK_AND_NEGOTIATE_QUOTE' and $Side = 'FLOAT_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-clickAndDealQuote-interestRateSwap-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <!--利率互换-成交-->
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'INTEREST_RATE_SWAP'">
                <xsl:variable name="Side" select="message/body/field[@name='Side']/@enum"/>
                <xsl:if test="$Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-executionReport-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$Side = 'FLOAT_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-executionReport-interestRateSwap-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <!--利率互换-IOI-->
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'INTEREST_RATE_SWAP'">
                <xsl:variable name="Side" select="message/body/field[@name='Side']/@enum"/>
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE' and $Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-indicatorQuote-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'INDICATIVE' and $Side = 'FLOAT_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-indicatorQuote-interestRateSwap-floatFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'TWO_WAY' and $Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-twoWayQuote-interestRateSwap-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'TWO_WAY' and $Side = 'FLOAT_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-twoWayQuote-interestRateSwap-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <xsl:otherwise>
                <ROOT>NOT FOUND</ROOT>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>