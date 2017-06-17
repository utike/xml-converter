<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="cn.com.haiyi.cstp.xstl"
                exclude-result-prefixes="java">


    <!--================================= header =================================-->
    <!--1. 生成xml-header的模板方法-->
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


    <!--================================= dialogQuote =================================-->
    <!--报价的主数据,没有利率-->
    <xsl:template name="master-dialogQuote-noRate">
        <xsl:element name="Master">
            <xsl:for-each select="message/body/field[@name]">
                <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
                <xsl:if test="@tag != 453 and @tag != 711">
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                    </xsl:element>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>


    <!--报价的主数据,具有利率-->
    <!--1.price 需要转化为rate-->
    <xsl:template name="master-dialogQuote-withRate">
        <xsl:element name="Master">
            <xsl:for-each select="message/body/field[@name]">
                <xsl:variable name="nodeName" select="java:XsltUtil.getDialogQuoteMap(@name)"/>
                <xsl:if test="@tag != 453 and @tag != 711">
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="java:XsltUtil.getFormatDateAndRate($nodeName, current())"/>
                    </xsl:element>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>


    <!--================================= parties =================================-->
    <!--交易方从数据，不包含联系方式-->
    <xsl:template name="slave-parties-noContact">
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
                        <xsl:variable name="enumNodeName" select="java:XsltUtil.getPartyMap(field[@enum]/@enum)"/>
                        <xsl:element name="{$enumNodeName}">
                            <xsl:value-of select="field[@name='PartySubID']"/>
                        </xsl:element>
                    </xsl:for-each>
                </Party>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!--交易方从数据，拥有联系方式-->
    <!--1.需要解析 NoContactInfos-->
    <!--2.如果觉得有冗余代码，可以对类似的基础部分进行再次抽取。不过意义不大-->
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
                        <xsl:variable name="enumNodeName" select="java:XsltUtil.getPartyMap(field[@enum]/@enum)"/>
                        <xsl:element name="{$enumNodeName}">
                            <xsl:value-of select="field[@name='PartySubID']"/>
                        </xsl:element>
                    </xsl:for-each>

                    <xsl:for-each select="groups[@name='NoContactInfos']/group">
                        <xsl:variable name="enumNodeName" select="java:XsltUtil.getPartyMap(field[@enum]/@enum)"/>
                        <xsl:element name="{$enumNodeName}">
                            <xsl:value-of select="field[@name='ContactInfoID']"/>
                        </xsl:element>
                    </xsl:for-each>
                </Party>
            </xsl:for-each>
        </xsl:element>

    </xsl:template>


    <!--================================= executionReport =================================-->
    <!--成交的主数据,没有利率-->
    <xsl:template name="master-executionReport-noRate">
        <xsl:element name="Master">
            <xsl:for-each select="message/body/field[@name]">
                <xsl:variable name="nodeName" select="java:XsltUtil.getExecutionReportMap(@name)"/>
                <xsl:if test="@tag != 453 and @tag != 711">
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="java:XsltUtil.getFormatDate(current())"/>
                    </xsl:element>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!--成交的主数据,具有利率-->
    <!--1.price 需要转化为rate-->
    <xsl:template name="master-executionReport-withRate">
        <xsl:element name="Master">
            <xsl:for-each select="message/body/field[@name]">
                <xsl:variable name="nodeName" select="java:XsltUtil.getExecutionReportMap(@name)"/>
                <xsl:if test="@tag != 453 and @tag != 711">
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="java:XsltUtil.getFormatDateAndRate($nodeName, current())"/>
                    </xsl:element>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>


    <!--================================= noUnderlyings =================================-->
    <!-- noUnderlyings 只有普通字段-->
    <xsl:template name="noUnderlyings-onlyFields">
        <xsl:element name="NoUnderlyings">
            <xsl:for-each select="message/body/groups[@name='NoUnderlyings']/group">

                <xsl:element name="NoUnderlying">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName" select="java:XsltUtil.getNoUnderlyingsMap(@name)"/>
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

    <!-- noUnderlyings 拥有StipValue信息-->
    <xsl:template name="noUnderlyings-withStipValue">
        <xsl:element name="NoUnderlyings">
            <xsl:for-each select="message/body/groups[@name='NoUnderlyings']/group">
                <xsl:element name="NoUnderlying">
                    <xsl:for-each select="field[@name]">
                        <xsl:variable name="nodeName" select="java:XsltUtil.getNoUnderlyingsMap(@name)"/>
                        <xsl:if test="@tag != 887">
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


</xsl:stylesheet>