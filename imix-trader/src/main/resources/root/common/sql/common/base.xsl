<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:java="cn.com.haiyi.trade.xstl"
        exclude-result-prefixes="java"
>


    <!--================================= 公共方法 =================================-->
    <!--对于字段的SQL构建-->
    <xsl:template name="fields">
        <xsl:choose>
            <xsl:when test="position() = 1">
                [<xsl:value-of select="name()"/>]
            </xsl:when>
            <xsl:otherwise>
                ,[<xsl:value-of select="name()"/>]
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!--对于值的SQL构建-->
    <xsl:template name="values">
        <xsl:choose>
            <xsl:when test="position() = 1">
                '<xsl:value-of select="current()"/>'
            </xsl:when>
            <xsl:otherwise>
                ,'<xsl:value-of select="current()"/>'
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


    <!--================================= 对话报价 =================================-->
    <!--对话报价表-->
    <xsl:template name="sql-quote">
        INSERT INTO [dbo].[cfets_quotes]
        (
        <xsl:for-each select="Quote/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsQuotesContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fields"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Quote/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsQuotesContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,[<xsl:value-of select="name()"/>]
            </xsl:if>
        </xsl:for-each>
        ,[SysStatus]
        ,[MsgType]
        ) VALUES (
        <xsl:for-each select="Quote/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsQuotesContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="values"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Quote/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsQuotesContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,'<xsl:value-of select="string()"/>'
            </xsl:if>
        </xsl:for-each>
        ,'0'
        ,'<xsl:value-of select="/Quote/Header/MsgType"/>'
        );
    </xsl:template>


    <!--报价-交易方表-->
    <xsl:template name="sql-quote-party">
        <xsl:for-each select="Quote/Slave/Parties/Party">
            INSERT INTO [dbo].[details_parties]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'<xsl:value-of select="/Quote/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--报价-NoUnderlyings-->
    <xsl:template name="sql-quote-noUnderlying">
        <xsl:for-each select="Quote/Slave/NoUnderlyings/NoUnderlying">
            INSERT INTO [dbo].[details_underlyings]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'<xsl:value-of select="/Quote/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--报价-marginInfo-->
    <xsl:template name="sql-quote-marginInfo">
        <xsl:for-each select="Quote/Slave/NoMarginInfos/NoMarginInfo">
            INSERT INTO [dbo].[details_marginInfos]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMarginInfosContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:if test="name() != 'Securities'">
                    <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMarginInfosContains(name())"/>
                    <xsl:if test="$isHas ='1'">
                        <xsl:call-template name="values"/>
                    </xsl:if>
                </xsl:if>
            </xsl:for-each>
            ,
            '&lt;Securities&gt;'+
            '
            <xsl:for-each select="Securities/Security">
                <xsl:variable name="MarginSecuritiesID" select="MarginSecuritiesID[current()]"/>
                <xsl:variable name="MarginAMT" select="MarginAMT[current()]"/>
                <xsl:variable name="MarginSymbol" select="MarginSymbol[current()]"/>
                <xsl:value-of
                        select="java:XsltUtil.getNoMarginSecurities($MarginSecuritiesID, $MarginAMT, $MarginSymbol)"/>
            </xsl:for-each>
            '
            +'&lt;/Securities&gt;'
            ,'<xsl:value-of select="/Quote/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--noLeg-->
    <xsl:template name="sql-quote-noLeg">
        <xsl:for-each select="Quote/Slave/NoLegs/NoLeg">
            INSERT INTO [dbo].[details_legs]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsLegsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsLegsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'<xsl:value-of select="/Quote/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--================================= 成交报价 =================================-->
    <!--成交报价表-->
    <xsl:template name="sql-order">
        INSERT INTO [dbo].[cfets_orders]
        (
        <xsl:for-each select="Order/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsOrdersContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fields"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Order/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsOrdersContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,[<xsl:value-of select="name()"/>]
            </xsl:if>
        </xsl:for-each>
        ,[SysStatus]
        ) VALUES (
        <xsl:for-each select="Order/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsOrdersContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="values"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Order/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsOrdersContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,'<xsl:value-of select="string()"/>'
            </xsl:if>
        </xsl:for-each>
        ,0
        );
    </xsl:template>

    <!--成交报价-交易方表-->
    <xsl:template name="sql-order-party">
        <xsl:for-each select="Order/Slave/Parties/Party">
            INSERT INTO [dbo].[details_parties]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'<xsl:value-of select="/Order/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--成交报价-NoUnderlyings-->
    <xsl:template name="sql-order-noUnderlying">
        <xsl:for-each select="Order/Slave/NoUnderlyings/NoUnderlying">
            INSERT INTO [dbo].[details_underlyings]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'<xsl:value-of select="/Order/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--成交报价-marginInfo-->
    <xsl:template name="sql-order-marginInfo">
        <xsl:for-each select="Order/Slave/NoMarginInfos/NoMarginInfo">
            INSERT INTO [dbo].[details_marginInfos]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMarginInfosContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:if test="name() != 'Securities'">
                    <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMarginInfosContains(name())"/>
                    <xsl:if test="$isHas ='1'">
                        <xsl:call-template name="values"/>
                    </xsl:if>
                </xsl:if>
            </xsl:for-each>
            ,
            '&lt;Securities&gt;'+
            '
            <xsl:for-each select="Securities/Security">
                <xsl:variable name="MarginSecuritiesID" select="MarginSecuritiesID[current()]"/>
                <xsl:variable name="MarginAMT" select="MarginAMT[current()]"/>
                <xsl:variable name="MarginSymbol" select="MarginSymbol[current()]"/>
                <xsl:value-of
                        select="java:XsltUtil.getNoMarginSecurities($MarginSecuritiesID, $MarginAMT, $MarginSymbol)"/>
            </xsl:for-each>
            '
            +'&lt;/Securities&gt;'
            ,'<xsl:value-of select="/Order/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--noLeg-->
    <xsl:template name="sql-order-noLeg">
        <xsl:for-each select="Order/Slave/NoLegs/NoLeg">
            INSERT INTO [dbo].[details_legs]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsLegsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsLegsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'<xsl:value-of select="/Order/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>


    <!--================================= 行情订阅-反馈 =================================-->
    <!--深度行情反馈-->
    <xsl:template name="sql-marketDataAck">
        INSERT INTO [dbo].[cfets_marketdata_ack]
        (
        <xsl:for-each select="DataAck/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsMarketdataAckContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fields"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="DataAck/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsMarketdataAckContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,[<xsl:value-of select="name()"/>]
            </xsl:if>
        </xsl:for-each>
        ,[SysStatus]
        ) VALUES (
        <xsl:for-each select="DataAck/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsMarketdataAckContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="values"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="DataAck/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsMarketdataAckContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,'<xsl:value-of select="string()"/>'
            </xsl:if>
        </xsl:for-each>
        ,0
        );
    </xsl:template>
    <!--深度行情反馈-交易方表-->
    <xsl:template name="sql-marketDataAck-party">
        <xsl:for-each select="DataAck/Slave/Parties/Party">
            INSERT INTO [dbo].[details_parties]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'<xsl:value-of select="/DataAck/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--================================= 行情订阅-内容 =================================-->
    <!--深度行情数据-->
    <xsl:template name="sql-marketData">
        INSERT INTO [dbo].[cfets_marketdata]
        (
        <xsl:for-each select="MarketData/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsMarketdataContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fields"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="MarketData/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsMarketdataContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,[<xsl:value-of select="name()"/>]
            </xsl:if>
        </xsl:for-each>
        ,[SysStatus]
        ) VALUES (
        <xsl:for-each select="MarketData/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsMarketdataContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="values"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="MarketData/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsMarketdataContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,'<xsl:value-of select="string()"/>'
            </xsl:if>
        </xsl:for-each>
        ,0
        );
    </xsl:template>

    <!--深度行情反馈-各档行情从数据-->
    <xsl:template name="sql-marketData-mdEntries">
        <xsl:for-each select="MarketData/Slave/NoMDEntries/NoMDEntry">
            INSERT INTO [dbo].[details_mdEntries]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMdEntriesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMdEntriesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'<xsl:value-of select="/MarketData/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--深度行情反馈-交易方表-->
    <xsl:template name="sql-marketData-party">
        <xsl:for-each select="MarketData/Slave/Parties/Party">
            INSERT INTO [dbo].[details_parties]
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'<xsl:value-of select="/MarketData/MessageParam/SysID[current()]"/>'
            );
        </xsl:for-each>
    </xsl:template>

    <!--================================= 错误异常 =================================-->
    <xsl:template name="sql-error">
        INSERT INTO [dbo].[cfets_error]
        (
        <xsl:for-each select="Error/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsErrorContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fields"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Error/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsErrorContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,[<xsl:value-of select="name()"/>]
            </xsl:if>
        </xsl:for-each>
        ,[SysStatus]
        ) VALUES (
        <xsl:for-each select="Error/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsErrorContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="values"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Error/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isCfetsErrorContains(name())"/>
            <xsl:if test="$isHas ='1'">
                ,'<xsl:value-of select="string()"/>'
            </xsl:if>
        </xsl:for-each>
        ,0
        );
    </xsl:template>


</xsl:stylesheet>