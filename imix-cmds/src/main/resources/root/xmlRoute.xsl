<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <xsl:import href="common/xml/common/marketDataBase.xsl"/>


    <xsl:import href="component/INTER_BANK_OFFERING/executionReport.xsl"/>
    <xsl:import href="component/INTER_BANK_OFFERING/indicatorQuote.xsl"/>
    <xsl:import href="component/INTER_BANK_OFFERING/twoWayQuote.xsl"/>

    <xsl:import href="component/COLLATERAL_REPO/executionReport.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/indicatorQuote.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/twoWayQuote.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/rateMarketData.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/savingInsititutionmdMarketData.xsl"/>

    <xsl:import href="component/OUTRIGHT_REPO/executionReport.xsl"/>
    <xsl:import href="component/OUTRIGHT_REPO/indicatorQuote.xsl"/>

    <xsl:import href="component/CASH_BOND/executionReport.xsl"/>
    <xsl:import href="component/CASH_BOND/indicatorQuote.xsl"/>
    <xsl:import href="component/CASH_BOND/clickAndDealQuote.xsl"/>
    <xsl:import href="component/CASH_BOND/marketMakingQuote.xsl"/>

    <xsl:import href="component/SECURITY_LENDING/executionReport.xsl"/>
    <xsl:import href="component/SECURITY_LENDING/indicatorQuote.xsl"/>

    <xsl:import href="component/INTEREST_RATE_SWAP/fixFloatExecutionReport.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/fixFloatIndicatorQuote.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/fixFloatTwoWayQuote.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/fixFloatClickAndDealQuote.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/floatFloatExecutionReport.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/floatFloatIndicatorQuote.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/floatFloatTwoWayQuote.xsl"/>
    <xsl:import href="component/INTEREST_RATE_SWAP/floatFloatClickAndDealQuote.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>

    <!--xml生成的路由-->
    <!--1.可以根据XML的类型、市场等信息自动路由到对应的处理器-->
    <xsl:template match="/">
        <xsl:variable name="MsgType" select="message/header/field[@name='MsgType']/@enum"/>

        <xsl:variable name="MarketIndicator" select="message/body/field[@name='MarketIndicator']/@enum"/>

        <xsl:variable name="DataMarketIndicator"
                      select="message/body/groups[@name='NoMDTypes']/group/field[@name='MarketIndicator']/@enum"/>

        <xsl:choose>
            <!--================================= INTER_BANK_OFFERING =================================-->
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'INTER_BANK_OFFERING'">
                <xsl:call-template name="route-ibo-executionReport"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'INTER_BANK_OFFERING'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-ibo-indicatorQuote"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'TWO_WAY'">
                    <xsl:call-template name="route-ibo-twoWayQuote"/>
                </xsl:if>
            </xsl:when>


            <!--================================= COLLATERAL_REPO =================================-->
            <!--市场成交-->
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'COLLATERAL_REPO'">
                <xsl:call-template name="route-collateralRepo-executionReport"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'COLLATERAL_REPO'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <!--意向报价-->
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-indicatorQuote-collateralRepo"/>
                </xsl:if>
                <!--双向报价-->
                <xsl:if test="$QuoteType = 'TWO_WAY'">
                    <xsl:call-template name="route-twoWayQuote-collateralRepo"/>
                </xsl:if>
            </xsl:when>

            <xsl:when test="$MsgType='MarketDataSnapshotFullRefresh' and $DataMarketIndicator = 'COLLATERAL_REPO'">
                <xsl:variable name="MDSubType"
                              select="message/body/groups[@name='NoMDTypes']/group/field[@name='MDSubType']/@enum"/>
                <xsl:choose>
                    <!--质押式回购利率行情数据(8)-->
                    <xsl:when test="$MDSubType = 'REPO_RATE_STATISTICS'">
                        <xsl:call-template name="route-MarketData-base"/>
                    </xsl:when>
                    <!--存款类机构间质押式回购行情(37)-->
                    <xsl:when test="$MDSubType = 'SAVINGINSITITUTIONMD'">
                        <xsl:call-template name="route-MarketData-base"/>
                    </xsl:when>

                    <!--$MDSubType=0-->
                    <xsl:when test="$MDSubType = 'DEAL_MARKET_STATISTICS'">
                        <xsl:variable name="TradeMethod" select="message/body/groups[@name='NoMDTypes']/group/field[@name='TradeMethod']/current()"/>
                        <xsl:choose>
                            <!--质押式回购匿名点击成交行情-->
                            <xsl:when test="$TradeMethod = '3'">
                                <xsl:call-template name="route-MarketData-base"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="NOT-FOUND"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:call-template name="route-MarketData-base"/>
                    </xsl:when>

                    <!--$MDSubType=38-->
                    <xsl:when test="$MDSubType = 'TOP_OF_BOOK'">
                        <xsl:variable name="MDBookType" select="message/body/groups[@name='NoMDTypes']/group/groups[@name='MDInstrumentGrp']/group/field[@name='MDBookType']/current()"/>
                        <xsl:choose>
                            <xsl:when test="$MDBookType = '2'">
                                <!--质押式回购报价深度行情-->
                                <xsl:call-template name="route-MarketData-base"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <!--质押式回购最优报价行情-->
                                <xsl:call-template name="route-MarketData-base"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="NOT-FOUND"/>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:if test="$MDSubType='REPO_RATE_STATISTICS'">
                    <xsl:call-template name="route-MarketData-base"/>
                </xsl:if>
                <xsl:if test="$MDSubType='SAVINGINSITITUTIONMD'">
                    <xsl:call-template name="route-MarketData-base"/>
                </xsl:if>
                <xsl:if test="$MDSubType='TOP_OF_BOOK'">
                    <xsl:call-template name="route-MarketData-base"/>
                </xsl:if>
            </xsl:when>

            <!--================================= OUTRIGHT_REPO =================================-->
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'OUTRIGHT_REPO'">
                <xsl:call-template name="route-outrightRepo-executionReport"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'OUTRIGHT_REPO'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-outrightRepo-indicatorQuote"/>
                </xsl:if>
            </xsl:when>

            <xsl:when test="$MsgType='MarketDataSnapshotFullRefresh' and $DataMarketIndicator = 'OUTRIGHT_REPO'">
                <xsl:variable name="MDSubType"
                              select="message/body/groups[@name='NoMDTypes']/group/field[@name='MDSubType']/@enum"/>
                <xsl:if test="$MDSubType='REPO_RATE_STATISTICS'">
                    <xsl:call-template name="route-MarketData-base"/>
                </xsl:if>
                <xsl:if test="$MDSubType='FIRST_LEG_CLEAN_PRICE_STATISTICS'">
                    <xsl:call-template name="route-MarketData-base"/>
                </xsl:if>
                <xsl:if test="$MDSubType='SECOND_LEG_CLEAN_PRICE_STATISTICS'">
                    <xsl:call-template name="route-MarketData-base"/>
                </xsl:if>
            </xsl:when>

            <!--================================= CASH_BOND =================================-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'CASH_BOND'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <!--点击成交报价-->
                <xsl:if test="$QuoteType = 'CLICK_AND_DEAL_QUOTE'">
                    <xsl:call-template name="route-cashBond-clickAndDealQuote"/>
                </xsl:if>
                <!--做市报价-->
                <xsl:if test="$QuoteType = 'MARKET_MAKING'">
                    <xsl:call-template name="route-cashBond-marketMakingQuote"/>
                </xsl:if>
            </xsl:when>
            <!--市场成交-->
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'CASH_BOND'">
                <xsl:call-template name="route-cashBond-executionReport"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'CASH_BOND'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <!--意向报价-->
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-cashBond-indicatorQuote"/>
                </xsl:if>
            </xsl:when>

            <xsl:when test="$MsgType='MarketDataSnapshotFullRefresh' and $DataMarketIndicator = 'CASH_BOND'">
                <xsl:variable name="MDSubType"
                              select="message/body/groups[@name='NoMDTypes']/group/field[@name='MDSubType']/@enum"/>
                <xsl:choose>
                    <!--现券清洗后实时行情 or 现券清洗后收盘行情-->
                    <xsl:when test="$MDSubType = 'MARKETSTATISTICS_EXCLUDING_ABNORMAL'">
                        <xsl:call-template name="route-MarketData-base"/>
                    </xsl:when>
                    <!--现券买卖-->
                    <xsl:when test="$MDSubType = 'TRADING_PRODUCT_MARKET_STATISTICS'">
                        <xsl:call-template name="route-MarketData-base"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="NOT-FOUND"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!--================================= SECURITY_LENDING =================================-->
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'SECURITY_LENDING'">
                <xsl:call-template name="route-securityLending-executionReport"/>
            </xsl:when>
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'SECURITY_LENDING'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE'">
                    <xsl:call-template name="route-securityLending-indicatorQuote"/>
                </xsl:if>
            </xsl:when>


            <!--================================= INTEREST_RATE_SWAP =================================-->
            <!--利率互换-点击成交报价-->
            <xsl:when test="$MsgType = 'Quote' and $MarketIndicator = 'INTEREST_RATE_SWAP'">
                <xsl:variable name="Side" select="message/body/field[@name='Side']/@enum"/>
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'CLICK_AND_NEGOTIATE_QUOTE' and $Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-interestRateSwap-clickAndDealQuote-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'CLICK_AND_NEGOTIATE_QUOTE' and $Side = 'FLOAT_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-interestRateSwap-clickAndDealQuote-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <!--利率互换-成交-->
            <xsl:when test="$MsgType = 'ExecutionReport' and $MarketIndicator = 'INTEREST_RATE_SWAP'">
                <xsl:variable name="Side" select="message/body/field[@name='Side']/@enum"/>
                <xsl:if test="$Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-interestRateSwap-executionReport-fixFloat"/>
                </xsl:if>
                <xsl:if test="$Side = 'FLOAT_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-interestRateSwap-executionReport-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <!--利率互换-IOI-->
            <xsl:when test="$MsgType = 'IOI' and $MarketIndicator = 'INTEREST_RATE_SWAP'">
                <xsl:variable name="Side" select="message/body/field[@name='Side']/@enum"/>
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']/@enum"/>
                <xsl:if test="$QuoteType = 'INDICATIVE' and $Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-interestRateSwap-indicatorQuote-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'INDICATIVE' and $Side = 'FLOAT_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-interestRateSwap-indicatorQuote-floatFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'TWO_WAY' and $Side = 'FIXED_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-interestRateSwap-twoWayQuote-fixFloat"/>
                </xsl:if>
                <xsl:if test="$QuoteType = 'TWO_WAY' and $Side = 'FLOAT_RATE_TO_FLOAT_RATE'">
                    <xsl:call-template name="route-interestRateSwap-twoWayQuote-floatFloat"/>
                </xsl:if>
            </xsl:when>

            <xsl:when test="$MsgType='MarketDataSnapshotFullRefresh' and $DataMarketIndicator = 'INTEREST_RATE_SWAP'">
                <xsl:variable name="MDSubType"
                              select="message/body/groups[@name='NoMDTypes']/group/field[@name='MDSubType']/@enum"/>
                <xsl:if test="$MDSubType='DEAL_MARKET_STATISTICS_FLOATING_VS_FLOATING'">
                    <xsl:call-template name="route-MarketData-base"/>
                </xsl:if>
                <xsl:if test="$MDSubType='DEAL_MARKET_STATISTICS_FIXED_VS_FLOATING'">
                    <xsl:call-template name="route-MarketData-base"/>
                </xsl:if>
            </xsl:when>

            <xsl:otherwise>
                <xsl:call-template name="NOT-FOUND"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>