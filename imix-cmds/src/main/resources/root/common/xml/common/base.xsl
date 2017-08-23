<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:java="com.haiyi.cmds.xstl"
                exclude-result-prefixes="java">


    <!--================================= header ================================= -->
    <!--1. 生成xml-header的模板方法 -->
    <xsl:template name="header">
        <xsl:element name="Header">
            <xsl:for-each select="message/header/field[@name]">
                <xsl:variable name="nodeName" select="@name"/>
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>


    <!--================================= dialogQuote ================================= -->
    <!--对话报价的主数据,没有利率 -->
    <xsl:template name="master-dialogQuote-withoutRate">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName"
                          select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if
                    test="@tag != 453 and @tag != 711 and @tag != 232 and @tag != 136 and @tag != 10210 and @tag != 555 and @tag != 215">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>


    <!--对话报价的主数据,具有利率 -->
    <!--1.price 需要转化为rate -->
    <xsl:template name="master-dialogQuote-withRate">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName"
                          select="java:XsltUtil.getDialogQuoteMap(@name)"/>
            <xsl:if
                    test="@tag != 453 and @tag != 711 and @tag != 232 and @tag != 136 and @tag != 10210 and @tag != 555 and @tag != 215">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of
                            select="java:XsltUtil.getFormatDateAndRate($nodeName, current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--对话报价的主数据,NoStipulations信息 -->
    <xsl:template name="master-dialogQuote-NoStipulations">
        <xsl:for-each select="message/body/groups[@name='NoStipulations']/group">
            <xsl:variable name="nodeName" select="field[@name='StipulationType']"/>
            <xsl:element name="{$nodeName}">
                <xsl:value-of select="field[@name='StipulationValue']"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!--对话报价的主数据,NoMiscFees信息 -->
    <xsl:template name="master-dialogQuote-NoMiscFees">
        <xsl:element name="MiscFeeAmt">
            <xsl:value-of
                    select="message/body/groups[@name='NoMiscFees']/group/field[@name='MiscFeeAmt']"/>
        </xsl:element>
    </xsl:template>


    <!--================================= LimitQuote ================================= -->
    <xsl:template name="master-LimitQuoteStatusReport-NoDeliveryTypeOption">
        <xsl:for-each
                select="message/body/groups[@name='NoDeliveryTypeOption']/group">
            <xsl:variable name="value"
                          select="field[@name='DeliveryOptionDirection']"/>
            <!--买入 -->
            <xsl:if test="$value = '1'">
                <xsl:element name="BDeliveryTypeOption">
                    <xsl:value-of select="field[@name='DeliveryTypeOption']"/>
                </xsl:element>
            </xsl:if>

            <!--卖出 -->
            <xsl:if test="$value = '4'">
                <xsl:element name="SDeliveryTypeOption">
                    <xsl:value-of select="field[@name='DeliveryTypeOption']"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--================================= parties ================================= -->
    <!--交易方从数据，不包含联系方式 -->
    <xsl:template name="slave-parties-withoutContact">
        <xsl:element name="Parties">
            <xsl:for-each select="message/body/groups[@name='NoPartyIDs']/group">
                <Party>
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName" select="@name"/>
                        <xsl:if test="@tag != 802 and @tag != 453 and @tag != 10601">
                            <xsl:element name="{$nodeName}">
                                <xsl:value-of select="."/>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="groups[@name='NoPartySubIDs']/group">
                        <xsl:variable name="enumNodeName"
                                      select="java:XsltUtil.getPartyMap(field[@enum]/@enum)"/>
                        <xsl:element name="{$enumNodeName}">
                            <xsl:value-of select="field[@name='PartySubID']"/>
                        </xsl:element>
                    </xsl:for-each>
                </Party>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!--交易方从数据，拥有联系方式 -->
    <!--1.需要解析 NoContactInfos -->
    <!--2.如果觉得有冗余代码，可以对类似的基础部分进行再次抽取。不过意义不大 -->
    <xsl:template name="slave-parties-withContact">

        <xsl:element name="Parties">
            <xsl:for-each select="message/body/groups[@name='NoPartyIDs']/group">
                <Party>
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName" select="@name"/>
                        <xsl:if test="@tag != 802 and @tag != 453 and @tag != 10601">
                            <xsl:element name="{$nodeName}">
                                <xsl:value-of select="."/>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="groups[@name='NoPartySubIDs']/group">
                        <xsl:variable name="enumNodeName"
                                      select="java:XsltUtil.getPartyMap(field[@enum]/@enum)"/>
                        <xsl:element name="{$enumNodeName}">
                            <xsl:value-of select="field[@name='PartySubID']"/>
                        </xsl:element>
                    </xsl:for-each>

                    <xsl:for-each select="groups[@name='NoContactInfos']/group">
                        <xsl:variable name="enumNodeName"
                                      select="java:XsltUtil.getPartyMap(field[@enum]/@enum)"/>
                        <xsl:element name="{$enumNodeName}">
                            <xsl:value-of select="field[@name='ContactInfoID']"/>
                        </xsl:element>
                    </xsl:for-each>
                </Party>
            </xsl:for-each>
        </xsl:element>

    </xsl:template>


    <!--================================= executionReport ================================= -->
    <!--成交的主数据,没有利率 -->
    <xsl:template name="master-executionReport-withoutRate">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName"
                          select="java:XsltUtil.getExecutionReportMap(@name)"/>
            <xsl:if
                    test="@tag != 453 and @tag != 711 and @tag != 232 and @tag != 136 and @tag != 10210 and @tag != 555">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--成交的主数据,具有利率 -->
    <!--1.price 需要转化为rate -->
    <xsl:template name="master-executionReport-withRate">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName"
                          select="java:XsltUtil.getExecutionReportMap(@name)"/>
            <xsl:if
                    test="@tag != 453 and @tag != 711 and @tag != 232 and @tag != 136 and @tag != 10210 and @tag != 555">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of
                            select="java:XsltUtil.getFormatDateAndRate($nodeName, current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--报价的主数据,NoStipulations信息 -->
    <xsl:template name="master-executionReport-NoStipulations">
        <xsl:for-each select="message/body/groups[@name='NoStipulations']/group">
            <xsl:variable name="nodeName" select="field[@name='StipulationType']"/>
            <xsl:element name="{$nodeName}">
                <xsl:value-of select="field[@name='StipulationValue']"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!--对话报价的主数据,NoMiscFees信息 -->
    <xsl:template name="master-executionReport-NoMiscFees">
        <xsl:element name="MiscFeeAmt">
            <xsl:value-of
                    select="message/body/groups[@name='NoMiscFees']/group/field[@name='MiscFeeAmt']"/>
        </xsl:element>
    </xsl:template>

    <!--================================= noUnderlyings ================================= -->
    <!-- noUnderlyings 只有普通字段 -->
    <xsl:template name="slave-noUnderlyings-onlyFields">
        <xsl:element name="NoUnderlyings">
            <xsl:for-each select="message/body/groups[@name='NoUnderlyings']/group">
                <xsl:element name="NoUnderlying">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName"
                                      select="java:XsltUtil.getNoUnderlyingsMap(@name)"/>
                        <xsl:if test="@tag != 887">
                            <xsl:element name="{$nodeName}">
                                <xsl:value-of select="."/>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!-- noUnderlyings 拥有StipValue信息 -->
    <xsl:template name="slave-noUnderlyings-withStipValue">
        <xsl:element name="NoUnderlyings">
            <xsl:for-each select="message/body/groups[@name='NoUnderlyings']/group">
                <xsl:element name="NoUnderlying">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName"
                                      select="java:XsltUtil.getNoUnderlyingsMap(@name)"/>
                        <xsl:if test="@tag != 887 and @tag != 10243">
                            <xsl:element name="{$nodeName}">
                                <xsl:value-of select="."/>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="groups/group">
                        <xsl:variable name="enumNodeName"
                                      select="java:XsltUtil.getNoUnderlyingsMap(field)"/>
                        <xsl:element name="{$enumNodeName}">
                            <xsl:value-of select="field[@name='UnderlyingStipValue']"/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>


    <!--================================= NoMarginInfo ================================= -->
    <xsl:template name="slave-NoMarginInfos">
        <xsl:element name="NoMarginInfos">
            <xsl:for-each select="message/body/groups[@name='NoMarginInfo']/group">
                <xsl:element name="NoMarginInfo">
                    <xsl:for-each select="field[@name]">
                        <xsl:if test="@tag != 10211">
                            <xsl:variable name="nodeName"
                                          select="java:XsltUtil.getNoMarginInfosMap(@name)"/>
                            <xsl:element name="{$nodeName}">
                                <xsl:value-of select="current()"/>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:element name="Securities">
                        <xsl:for-each select="groups[@name='NoMarginSecurities']/group">
                            <xsl:element name="Security">
                                <xsl:for-each select="field[@name]">
                                    <xsl:variable name="nodeName" select="(@name)"/>
                                    <xsl:element name="{$nodeName}">
                                        <xsl:value-of select="current()"/>
                                    </xsl:element>
                                </xsl:for-each>
                            </xsl:element>
                        </xsl:for-each>
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>


    <!--================================= NoLegs ================================= -->
    <xsl:template name="slave-NoLegs-withRate">
        <xsl:element name="NoLegs">
            <xsl:for-each select="message/body/groups[@name='NoLegs']/group">
                <xsl:element name="NoLeg">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName"
                                      select="java:XsltUtil.getNoLegsMap(@name)"/>
                        <xsl:element name="{$nodeName}">
                            <xsl:value-of select="current()"/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!--NoLegs-没有利率 -->
    <xsl:template name="slave-NoLegs-withoutRate">
        <xsl:element name="NoLegs">
            <xsl:for-each select="message/body/groups[@name='NoLegs']/group">
                <xsl:element name="NoLeg">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName"
                                      select="java:XsltUtil.getNoLegsMap(@name)"/>
                        <xsl:element name="{$nodeName}">
                            <xsl:value-of select="current()"/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>


    <!--Leg_price 不需要利率处理 -->
    <!--拥有stipValue -->
    <xsl:template name="slave-NoLegs-withoutRate-withStipValue">
        <xsl:element name="NoLegs">
            <xsl:for-each select="message/body/groups[@name='NoLegs']/group">
                <xsl:element name="NoLeg">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName"
                                      select="java:XsltUtil.getNoLegsMap(@name)"/>
                        <xsl:element name="{$nodeName}">
                            <xsl:value-of select="current()"/>
                        </xsl:element>
                    </xsl:for-each>

                    <xsl:for-each select="groups[@name='NoLegStipulations']/group">
                        <xsl:variable name="typeNodeName"
                                      select="java:XsltUtil.getNoLegsMap(field[@name='LegStipulationType'])"/>
                        <xsl:element name="{$typeNodeName}">
                            <xsl:value-of select="field[@name='LegStipulationValue']"/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!--================================= NoRoutingIDs ================================= -->
    <xsl:template name="slave-NoRoutingIDs">
        <xsl:element name="NoRoutingIDs">
            <xsl:for-each select="message/body/groups[@name='NoRoutingIDs']/group">
                <xsl:element name="NoRoutingID">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName" select="@name"/>
                        <xsl:element name="{$nodeName}">
                            <xsl:value-of select="current()"/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!--================================= NoDeliveryTypeOption ================================= -->
    <xsl:template name="slave-NoDeliveryTypeOptions">
        <xsl:element name="NoDeliveryTypeOptions">
            <xsl:for-each
                    select="message/body/groups[@name='NoDeliveryTypeOption']/group">
                <xsl:element name="NoDeliveryTypeOption">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName" select="@name"/>
                        <xsl:element name="{$nodeName}">
                            <xsl:value-of select="current()"/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!-- ================================= MarketDataSnapshotFullRefresh主数据================================= -->
    <xsl:template name="master-MarketDate">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="@name"/>
            <xsl:if
                    test="@tag != 453 and @tag != 711 and @tag != 232 and @tag != 136 and @tag != 10210 and @tag != 555 and @tag != 215">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="message/body/groups[@name='NoMDTypes']/group">
            <xsl:for-each select="field[@name]">
                <xsl:variable name="nodeName" select="@name"/>
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="current()"/>
                </xsl:element>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
    <!--NoMDEntries -->
    <xsl:template name="NoMDEntries">
        <xsl:for-each select="groups[@name='NoMDEntries']/group">
            <xsl:for-each select="field[@name]">
                <xsl:variable name="nodeName" select="@name"/>
                <xsl:if test="$nodeName!='MDEntryType' and $nodeName!='MDEntryPx'">
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="current() "/>
                    </xsl:element>
                </xsl:if>
                <xsl:if test="$nodeName='MDEntryType'">
                    <xsl:variable name="enumNodeName"
                                  select="java:XsltUtil.getNoMDEntriesMap(@enum)"/>
                    <xsl:if test="$enumNodeName!='Other'">
                        <xsl:element name="{$enumNodeName}">
                            <xsl:value-of select="../field[@name='MDEntryPx']"/>
                        </xsl:element>
                    </xsl:if>
                </xsl:if>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- NoUnderlyings -->
    <xsl:template name="NoUnderlyings">
        <xsl:for-each select="groups[@name='NoUnderlyings']/group">
            <xsl:element name="Underlying">
                <xsl:for-each select="field[@name]">
                    <xsl:variable name="nodeName"
                                  select="java:XsltUtil.getNoUnderlyingsMap(@name)"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="current() "/>
                    </xsl:element>
                </xsl:for-each>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="NoPartyIDs">
        <xsl:for-each select="groups[@name='NoPartyIDs']/group">
            <xsl:element name="Party">
                <xsl:for-each select="field[@name]">
                    <xsl:variable name="nodeName" select="@name"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="current() "/>
                    </xsl:element>
                </xsl:for-each>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="NoLegs">
        <xsl:for-each select="groups[@name='NoLegs']/group">
            <xsl:element name="Leg">
                <xsl:for-each select="field[@name]">
                    <xsl:variable name="nodeName"
                                  select="java:XsltUtil.getNoMDLegEntriesMap(@name)"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="current() "/>
                    </xsl:element>
                </xsl:for-each>
                <xsl:call-template name="NoMDEntries"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="slave-MarketDate">
        <xsl:for-each select="message/body/groups[@name='NoMDTypes']/group">
            <xsl:element name="MDType">
                <xsl:for-each select="groups[@name='NoRelatedSym']/group">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName" select="@name"/>
                        <xsl:element name="{$nodeName}">
                            <xsl:value-of select="current()"/>
                        </xsl:element>
                    </xsl:for-each>

                    <xsl:call-template name="NoMDEntries"/>

                    <xsl:call-template name="NoPartyIDs"/>
                </xsl:for-each>

                <xsl:call-template name="NoUnderlyings"/>

                <xsl:call-template name="NoLegs"/>

                <xsl:call-template name="benchmarks"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!-- NoBenchmarks -->
    <xsl:template name="benchmarks">
        <xsl:for-each select="groups[@name='NoMDTypes']/group">
            <xsl:element name="Benchmarks">
                <xsl:for-each select="groups[@name='NoBenchmarks']/group">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName" select="@name"/>
                        <xsl:element name="{$nodeName}">
                            <xsl:value-of select="current() "/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>


    <!--================================= NOT-FOUND =================================-->
    <xsl:template name="NOT-FOUND">
        <ROOT>NOT FOUND</ROOT>
    </xsl:template>

</xsl:stylesheet>


