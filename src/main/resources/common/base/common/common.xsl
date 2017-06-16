<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <!--共有的方法模板-->

    <!--header 生成模板-->
    <!--<xsl:template match="message/header" nacommonbase-header">-->
        <!--<xsl:element name="Header">-->
            <!--<xsl:for-each select="field">-->
                <!--<xsl:variable name="nodeName" select="@name" />-->
                <!--<xsl:element name="{$nodeName}">-->
                    <!--<xsl:value-of select="current()" />-->
                <!--</xsl:element>-->
            <!--</xsl:for-each>-->
        <!--</xsl:element>-->
    <!--</xsl:template>-->

    <xsl:template name="base-header">
        <xsl:element name="Header">
            <xsl:for-each select="field">
                <xsl:variable name="nodeName" select="@name" />
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="current()" />
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>



    <!--body 的普通字段模板-->
    <xsl:template match="message/body" name="base-body-fields">
        <xsl:for-each select="field[@name]">
            <xsl:variable name="nodeName" select="@name"/>
            <xsl:element name="{$nodeName}">
                <xsl:value-of select="current()"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>



    <!--对话报价-NoPartyIDs -->
    <xsl:template match="message/body/groups[@name='NoPartyIDs']" name="base-dialogQuote-NoPartyIDs">

        <xsl:for-each select="group">

            <xsl:variable name="groupNodeName" select="field[@enum]/@enum"/>
            <xsl:element name="{$groupNodeName}">

                <xsl:for-each select="field[@name]">
                    <xsl:variable name="nodeName" select="@name" />
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="current()"/>
                    </xsl:element>
                </xsl:for-each>

                <xsl:for-each select="groups[@name='NoPartySubIDs']/group">
                    <xsl:variable name="enumNodeName" select="field[@enum]/@enum" />
                    <xsl:element name="{$enumNodeName}">
                        <xsl:value-of select="field[@name='PartySubID']"/>
                    </xsl:element>
                </xsl:for-each>

            </xsl:element>

        </xsl:for-each>

    </xsl:template>


    <!--成交信息-NoPartyIDs -->
    <xsl:template match="message/body/groups[@name='NoPartyIDs']" name="base-executionReport-NoPartyIDs">

        <xsl:for-each select="group">

            <xsl:variable name="groupNodeName" select="field[@enum]/@enum"/>
            <xsl:element name="{$groupNodeName}">

                <xsl:for-each select="field[@name]">
                    <xsl:variable name="nodeName" select="@name" />
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:for-each>

                <xsl:for-each select="groups[@name='NoPartySubIDs']/group">
                    <xsl:variable name="enumNodeName" select="field[@enum]/@enum" />
                    <xsl:element name="{$enumNodeName}">
                        <xsl:value-of select="field[@name='PartySubID']"/>
                    </xsl:element>
                </xsl:for-each>

                <xsl:for-each select="groups[@name='NoContactInfos']/group">
                    <xsl:variable name="enumNodeName" select="field[@enum]/@enum" />
                    <xsl:element name="{$enumNodeName}">
                        <xsl:value-of select="field[@name='ContactInfoID']"/>
                    </xsl:element>
                </xsl:for-each>

            </xsl:element>

        </xsl:for-each>


    </xsl:template>





</xsl:stylesheet>