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
    <xsl:import href="component/CASH_BOND/Quote.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteCancel.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequest.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestAck.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteRequestCancel.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteStatusReport.xsl"/>
    <xsl:import href="component/CASH_BOND/QuoteResponse.xsl"/>
    <xsl:import href="component/CASH_BOND/RequestQuote.xsl"/>

    <xsl:import href="component/COLLATERAL_REPO/ExecutionReport.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/QuoteStatusReport.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/Quote.xsl"/>
    <xsl:import href="component/COLLATERAL_REPO/QuoteResponse.xsl"/>

    <xsl:import href="component/ERROR/Error.xsl"/>

    <xsl:import href="component/OTHER/OrderToQuote.xsl"/>

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
                    <!--对于限价报价，对应的都是 报价，不是成交。且ExecId不存在-->
                    <xsl:when test="$QuoteType = '102'">
                        <xsl:variable name="ExecId" select="message/body/field[@name='ExecId']"/>
                        <xsl:choose>
                            <xsl:when test="$ExecId != ''">
                                <xsl:call-template name="route-cashBond-ExecutionReport"/>
                            </xsl:when>
                            <!--对于限价报价，对应的都是 报价，不是成交。且ExecId不存在-->
                            <xsl:otherwise>
                                <xsl:call-template name="route-cashBond-LimitQuoteStatusReport"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="route-cashBond-ExecutionReport"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!--询价报价 Quote-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '4'">
                <xsl:variable name="QuoteType" select="message/body/field[@name='QuoteType']"/>
                <xsl:choose>
                    <!--113 为请求报价-->
                    <xsl:when test="$QuoteType = '113'">
                        <xsl:call-template name="route-cashBond-RequestQuote"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="route-cashBond-Quote"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!--限价报价 NewOrderSingleQuote-->
            <xsl:when test="$MsgType = 'D' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-NewOrderSingleQuote"/>
            </xsl:when>

            <!--深度行情订阅反馈: 此处取 market 较为麻烦，省略-->
            <xsl:when test="$MsgType = 'U100'">
                <xsl:variable name="MarketIndicatorLocal"
                              select="message/body/groups[@name='NoRelatedSym']/group/field[@name='MarketIndicator']"/>
                <xsl:choose>
                    <xsl:when test="$MarketIndicatorLocal = '4'">
                        <xsl:call-template name="route-cashBond-ListMarketDataAck"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="NOT-FOUND"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <xsl:when test="$MsgType = 'W' and $MarketIndicator = '4'">
                <xsl:call-template name="route-cashBond-MarketDataSnapshotFullRefresh"/>
            </xsl:when>

            <!--请求报价 QuoteRequest-->
            <xsl:when test="$MsgType = 'R'">
                <xsl:variable name="MarketIndicatorLocal"
                              select="message/body/groups[@name='NoRelatedSym']/group/field[@name='MarketIndicator']"/>
                <xsl:choose>
                    <xsl:when test="$MarketIndicatorLocal = '4'">
                        <xsl:call-template name="route-cashBond-QuoteRequest"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="NOT-FOUND"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>


            <xsl:when test="$MsgType = 'U32'">
                <xsl:variable name="MarketIndicatorLocal"
                              select="message/body/groups[@name='NoRelatedSym']/group/field[@name='MarketIndicator']"/>
                <xsl:choose>
                    <xsl:when test="$MarketIndicatorLocal = '4'">
                        <xsl:call-template name="route-cashBond-QuoteRequestCancel"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="NOT-FOUND"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!--接收非做事方-新增撤销请求报价反馈-->
            <xsl:when test="$MsgType = 'U29'">
                <xsl:variable name="MarketIndicatorLocal"
                              select="message/body/groups[@name='NoRelatedSym']/group/field[@name='MarketIndicator']"/>
                <xsl:choose>
                    <xsl:when test="$MarketIndicatorLocal = '4'">
                        <xsl:call-template name="route-cashBond-QuoteRequestAck"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="NOT-FOUND"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!--请求报价取消-->
            <xsl:when test="$MsgType = 'Z'">
                <xsl:variable name="MarketIndicatorLocal"
                              select="message/body/groups[@name='NoQuoteEntries']/group/field[@name='MarketIndicator']"/>
                <xsl:choose>
                    <xsl:when test="$MarketIndicatorLocal = '4'">
                        <xsl:call-template name="route-cashBond-QuoteCancel"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="NOT-FOUND"/>
                    </xsl:otherwise>
                </xsl:choose>

            </xsl:when>

            <!--确认或者拒绝成交及询价通知-->
            <xsl:when test="$MsgType = 'AJ' and $MarketIndicator='4'">
                <xsl:call-template name="route-cashBond-QuoteResponse"/>
            </xsl:when>

            <!--================================= COLLATERAL_REPO =================================-->
            <xsl:when test="$MsgType = 'AI' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-QuoteStatusReport"/>
            </xsl:when>

            <xsl:when test="$MsgType = '8' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-ExecutionReport"/>
            </xsl:when>

            <xsl:when test="$MsgType = 'AJ' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-QuoteResponse"/>
            </xsl:when>

            <!--报价 Quote-->
            <xsl:when test="$MsgType = 'S' and $MarketIndicator = '9'">
                <xsl:call-template name="route-collateralRepo-Quote"/>
            </xsl:when>


            <!--================================= ERROR =================================-->
            <xsl:when test="$MsgType = 'j'">
                <xsl:call-template name="route-Error"/>
            </xsl:when>

            <!--================================= Other-Order2Quote =================================-->
            <xsl:when test="$MsgType = 'FINAL'">
                <xsl:call-template name="route-orderToQuote"/>
            </xsl:when>

            <xsl:otherwise>
                <xsl:call-template name="NOT-FOUND"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>