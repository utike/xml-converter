<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:java="com.haiyi.cmds.xstl"
                exclude-result-prefixes="java">


    <!--================================= 公共方法 ================================= -->
    <!--对于字段的SQL构建 -->
    <xsl:template name="fieldsWithPosition">
        <xsl:choose>
            <xsl:when test="position() = 1">
                [<xsl:value-of select="name()"/>]
            </xsl:when>
            <xsl:otherwise>
                ,[<xsl:value-of select="name()"/>]
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="fields">
        ,[<xsl:value-of select="name()"/>]
    </xsl:template>

    <!--对于值的SQL构建 -->
    <xsl:template name="valuesWithPosition">
        <xsl:choose>
            <xsl:when test="position() = 1">
                '<xsl:value-of select="current()"/>'
            </xsl:when>
            <xsl:otherwise>
                ,'<xsl:value-of select="current()"/>'
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="values">
        ,'<xsl:value-of select="current()"/>'
    </xsl:template>


    <!--================================= 对话报价 ================================= -->
    <!--对话报价表 -->
    <xsl:template name="sql-master-quote">
        INSERT INTO [dbo].[CMDS_Quotes]
        (
        <xsl:for-each select="Quote/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isQuoteContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fieldsWithPosition"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Quote/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isQuoteContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fields"/>
            </xsl:if>
        </xsl:for-each>
        ) VALUES (
        <xsl:for-each select="Quote/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isQuoteContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="valuesWithPosition"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Quote/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isQuoteContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="values"/>
            </xsl:if>
        </xsl:for-each>
        );
    </xsl:template>


    <!--报价-交易方表 -->
    <xsl:template name="sql-slave-quote-party">
        <xsl:for-each select="Quote/Slave/Parties/Party">
            INSERT INTO [dbo].[CMDS_Details_parties]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ) VALUES
            (
            '<xsl:value-of select="/Quote/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <!--报价-NoUnderlyings -->
    <xsl:template name="sql-slave-quote-noUnderlying">
        <xsl:for-each select="Quote/Slave/NoUnderlyings/NoUnderlying">
            INSERT INTO [dbo].[CMDS_Details_underlyings]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ) VALUES
            (
            '<xsl:value-of select="/Quote/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <!--报价-marginInfo -->
    <xsl:template name="sql-slave-quote-marginInfo">
        <xsl:for-each select="Quote/Slave/NoMarginInfos/NoMarginInfo">
            INSERT INTO [dbo].[CMDS_Details_marginInfos]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMarginInfosContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ) VALUES
            (
            '<xsl:value-of select="/Quote/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMarginInfosContains(name())"/>
                <xsl:if test="name() != 'Securities' and $isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'&lt;Securities&gt;'+
            '<xsl:for-each select="Securities/Security">
                <xsl:variable name="MarginSecuritiesID" select="MarginSecuritiesID[current()]"/>
                <xsl:variable name="MarginAMT" select="MarginAMT[current()]"/>
                <xsl:variable name="MarginSymbol" select="MarginSymbol[current()]"/>
                <xsl:value-of
                        select="java:XsltUtil.getNoMarginSecurities($MarginSecuritiesID, $MarginAMT, $MarginSymbol)"/>
            </xsl:for-each>'+'&lt;/Securities&gt;'
            );
        </xsl:for-each>
    </xsl:template>

    <!--noLeg -->
    <xsl:template name="sql-slave-quote-noLeg">
        <xsl:for-each select="Quote/Slave/NoLegs/NoLeg">
            INSERT INTO [dbo].[CMDS_Details_legs]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsLegsContains(name())"/>
                <xsl:if test="$isHas='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ) VALUES
            (
            '<xsl:value-of select="/Quote/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsLegsContains(name())"/>
                <xsl:if test="$isHas='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <!--================================= 成交报价 ================================= -->
    <!--成交报价表 -->
    <xsl:template name="sql-master-order">
        INSERT INTO [dbo].[CMDS_Orders]
        (
        <xsl:for-each select="Order/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isOrderContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fieldsWithPosition"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Order/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isOrderContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fields"/>
            </xsl:if>
        </xsl:for-each>
        ) VALUES (
        <xsl:for-each select="Order/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isOrderContains(name())"/>
            <xsl:if test="$isHas ='1'">
               <xsl:call-template name="valuesWithPosition"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Order/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isOrderContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="values"/>
            </xsl:if>
        </xsl:for-each>
        );
    </xsl:template>

    <!--成交报价-交易方表 -->
    <xsl:template name="sql-slave-order-party">
        <xsl:for-each select="Order/Slave/Parties/Party">
            INSERT INTO [dbo].[CMDS_Details_parties]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ) VALUES
            (
            '<xsl:value-of select="/Order/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <!--成交报价-NoUnderlyings -->
    <xsl:template name="sql-slave-order-noUnderlying">
        <xsl:for-each select="Order/Slave/NoUnderlyings/NoUnderlying">
            INSERT INTO [dbo].[CMDS_Details_underlyings]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ) VALUES
            (
            '<xsl:value-of select="/Order/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <!--成交报价-marginInfo -->
    <xsl:template name="sql-slave-order-marginInfo">
        <xsl:for-each select="Order/Slave/NoMarginInfos/NoMarginInfo">
            INSERT INTO [dbo].[CMDS_Details_marginInfos]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMarginInfosContains(name())"/>
                <xsl:if test="$isHas='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ) VALUES
            (
            '<xsl:value-of select="/Order/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMarginInfosContains(name())"/>
                <xsl:if test="name() != 'Securities' and $isHas='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            ,'&lt;Securities&gt;'+
            '<xsl:for-each select="Securities/Security">
                <xsl:variable name="MarginSecuritiesID" select="MarginSecuritiesID[current()]"/>
                <xsl:variable name="MarginAMT" select="MarginAMT[current()]"/>
                <xsl:variable name="MarginSymbol" select="MarginSymbol[current()]"/>
                <xsl:value-of
                        select="java:XsltUtil.getNoMarginSecurities($MarginSecuritiesID, $MarginAMT, $MarginSymbol)"/>
            </xsl:for-each>'
            +'&lt;/Securities&gt;'
            );
        </xsl:for-each>
    </xsl:template>

    <!--noLeg -->
    <xsl:template name="sql-slave-order-noLeg">
        <xsl:for-each select="Order/Slave/NoLegs/NoLeg">
            INSERT INTO [dbo].[CMDS_Details_legs]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsLegsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ) VALUES
            (
            '<xsl:value-of select="/Order/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsLegsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <!-- 行情数据 -->
    <xsl:template name="sql-slave-Entries">
        <xsl:for-each select="MarketData/Slave/MDType">
            INSERT INTO [dbo].[CMDS_Details_MDEntries]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMDEntriesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            ) VALUES
            (
            '<xsl:value-of select="/MarketData/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMDEntriesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>


    <!--======================================== 市场行情 ========================================-->
    <xsl:template name="sql-master-marketData">
        INSERT INTO [dbo].[CMDS_MarketData]
        (
        <xsl:for-each select="MarketData/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isMarketDataContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fieldsWithPosition"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="MarketData/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isMarketDataContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="fields"/>
            </xsl:if>
        </xsl:for-each>
        ) VALUES (
        <xsl:for-each select="MarketData/MessageParam/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isMarketDataContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="valuesWithPosition"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="MarketData/Master/*">
            <xsl:variable name="isHas" select="java:XsltUtil.isMarketDataContains(name())"/>
            <xsl:if test="$isHas ='1'">
                <xsl:call-template name="values"/>
            </xsl:if>
        </xsl:for-each>
        );
    </xsl:template>

    <xsl:template name="sql-slave-benchmarks">
        <xsl:for-each select="MarketData/Slave/MDType/Benchmarks">
            INSERT INTO [dbo].[CMDS_Details_Benchmarks]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsBenchmarksContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            )VALUES(
            '<xsl:value-of select="/MarketData/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsBenchmarksContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="sql-slave-mdLegs">
        <xsl:for-each select="MarketData/Slave/MDType/Leg">
            INSERT INTO [dbo].[CMDS_Details_MDLegEntries]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMDLegEntriesDataContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            )VALUES(
            '<xsl:value-of select="/MarketData/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsMDLegEntriesDataContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="sql-slave-mdUnderlying">
        <xsl:for-each select="MarketData/Slave/MDType/Underlying">
            INSERT INTO [dbo].[CMDS_Details_Underlyings]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            )VALUES(
            '<xsl:value-of select="/MarketData/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsUnderlyingsContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="sql-slave-mdParty">
        <xsl:for-each select="MarketData/Slave/MDType/Party">
            INSERT INTO [dbo].[CMDS_Details_Parties]
            (
            [FkID]
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="fields"/>
                </xsl:if>
            </xsl:for-each>
            )VALUES(
            '<xsl:value-of select="/MarketData/MessageParam/SysID[current()]"/>'
            <xsl:for-each select="*">
                <xsl:variable name="isHas" select="java:XsltUtil.isDetailsPartiesContains(name())"/>
                <xsl:if test="$isHas ='1'">
                    <xsl:call-template name="values"/>
                </xsl:if>
            </xsl:for-each>
            );
        </xsl:for-each>
    </xsl:template>

    <!--================================= NOT-FOUND =================================-->
    <xsl:template name="NOT-FOUND">
        <ROOT>NOT FOUND</ROOT>
    </xsl:template>

</xsl:stylesheet>