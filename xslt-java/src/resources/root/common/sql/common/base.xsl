<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:java="cn.com.haiyi.cstp.xstl"
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
            <xsl:call-template name="fields"/>
        </xsl:for-each>
        <xsl:for-each select="Quote/MessageParam/*">
            ,[<xsl:value-of select="name()"/>]
        </xsl:for-each>
        ,[SysStatus]
        ) VALUES (
        <xsl:for-each select="Quote/Master/*">
            <xsl:call-template name="values"/>
        </xsl:for-each>
        <xsl:for-each select="Quote/MessageParam/*">
            ,'<xsl:value-of select="string()"/>'
        </xsl:for-each>
        ,0
        );
    </xsl:template>


    <!--报价-交易方表-->
    <xsl:template name="sql-quote-party">
        <xsl:for-each select="Quote/Slave/Parties/Party">
            INSERT INTO [dbo].[details_parties]
            (
            <xsl:for-each select="*">
                <xsl:call-template name="fields"/>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:call-template name="values"/>
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
                <xsl:call-template name="fields"/>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:call-template name="values"/>
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
                <xsl:call-template name="fields"/>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:if test="name() != 'Securities'">
                    <xsl:call-template name="values"/>
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

    <!--<MarginSecuritiesID>010011</MarginSecuritiesID>-->
    <!--<MarginAMT>8600000</MarginAMT>-->
    <!--<MarginSymbol>01国债11</MarginSymbol>-->


    <!--================================= 成交报价 =================================-->
    <!--成交报价表-->
    <xsl:template name="sql-order">
        INSERT INTO [dbo].[cfets_orders]
        (
        <xsl:for-each select="Order/Master/*">
            <xsl:call-template name="fields"/>
        </xsl:for-each>
        <xsl:for-each select="Order/MessageParam/*">
            ,[<xsl:value-of select="name()"/>]
        </xsl:for-each>
        ,[SysStatus]
        ) VALUES (
        <xsl:for-each select="Order/Master/*">
            <xsl:call-template name="values"/>
        </xsl:for-each>
        <xsl:for-each select="Order/MessageParam/*">
            ,'<xsl:value-of select="string()"/>'
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
                <xsl:call-template name="fields"/>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:call-template name="values"/>
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
                <xsl:call-template name="fields"/>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:call-template name="values"/>
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
                <xsl:call-template name="fields"/>
            </xsl:for-each>
            ,[FkID]
            ) VALUES
            (
            <xsl:for-each select="*">
                <xsl:if test="name() != 'Securities'">
                    <xsl:call-template name="values"/>
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

</xsl:stylesheet>