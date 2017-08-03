<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.trade.xstl"
                exclude-result-prefixes="java">

    <xsl:import href="Base.xsl"/>

    <!--================================= ListMarketDataAck =================================-->

    <!--行情订阅主数据-->
    <xsl:template name="master-MarketDataSnapshotFullRefresh">
        <xsl:for-each select="message/body/field[@name]">
            <xsl:variable name="nodeName" select="@name"/>
            <xsl:if test="@tag != 268">
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="java:XsltUtil.getFormatValue(current())"/>
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--从数据，NoMDEntries 1. 其中的 party 单独分开-->
    <xsl:template name="slave-MarketDataSnapshotFullRefresh-NoMDEntries">
        <xsl:element name="NoMDEntries">
            <xsl:for-each select="message/body/groups[@name='NoMDEntries']/group">
                
                <xsl:element name="NoMDEntry">

                    <!--跳过交易方信息-->
                    <xsl:for-each select="field[@name]">
                        <xsl:if test="@tag != 268 and @tag != 453 and @tag != 10204">
                            <xsl:variable name="nodeName" select="@name"/>
                            <xsl:element name="{$nodeName}">
                                <xsl:value-of select="current()"/>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>

                    <!--交易方式-->
                    <xsl:for-each select="groups[@name='NoDeliveryTypeOption']/group">
                        <xsl:variable name="value" select="field[@name='DeliveryOptionDirection']"/>
                        <!--买入-->
                        <xsl:if test="$value = '1'">
                            <xsl:element name="BDeliveryTypeOption">
                                <xsl:value-of select="field[@name='DeliveryTypeOption']"/>
                            </xsl:element>
                        </xsl:if>

                        <!--卖出-->
                        <xsl:if test="$value = '4'">
                            <xsl:element name="SDeliveryTypeOption">
                                <xsl:value-of select="field[@name='DeliveryTypeOption']"/>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>

                </xsl:element>

            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!--交易方信息-->
    <xsl:template name="slave-MarketDataSnapshotFullRefresh-NoPartyIDs">

        <xsl:element name="Parties">
            <xsl:for-each select="message/body/groups[@name='NoMDEntries']/group/groups[@name='NoPartyIDs']/group">
                <Party>
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName" select="@name"/>
                        <xsl:if test="@tag != 802">
                            <xsl:element name="{$nodeName}">
                                <xsl:value-of select="current()"/>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>

                    <xsl:for-each select="groups[@name='NoPartySubIDs']/group">
                        <xsl:variable name="enumNodeName" select="java:XsltUtil.getPartyMap(field[@enum]/@enum)"/>
                        <xsl:element name="{$enumNodeName}">
                            <xsl:value-of select="field[@name='PartySubID']"/>
                        </xsl:element>
                    </xsl:for-each>
                </Party>
            </xsl:for-each>
        </xsl:element>

    </xsl:template>

</xsl:stylesheet>