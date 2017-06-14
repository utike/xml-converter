<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>


    <xsl:template match="/">
        <Message>

            <Header>
                <xsl:for-each select="message/header/field[@name]">
                    <xsl:variable name="nodeName" select="@name"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:for-each>
            </Header>

            <Body>

                <xsl:for-each select="message/body/field[@name]">
                    <xsl:variable name="nodeName" select="@name"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:for-each>

                <!--NoMiscFees 数据拉平-->
                <xsl:for-each select="message/body/groups[@name='NoMiscFees']/group">
                    <xsl:variable name="enumNodeName" select="field[@enum]/@enum" />
                    <xsl:element name="{$enumNodeName}">
                        <xsl:value-of select="field[@name='MiscFeeAmt']"/>
                    </xsl:element>
                </xsl:for-each>

                <xsl:for-each select="message/body/groups[@name='NoPartyIDs']/group">

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

                <NoUnderlyings>

                    <xsl:for-each select="message/body/groups[@name='NoUnderlyings']/group">

                        <NoUnderlying>

                            <xsl:for-each select="field[@name]">
                                <xsl:variable name="nodeName" select="@name" />
                                <xsl:element name="{$nodeName}">
                                    <xsl:value-of select="."/>
                                </xsl:element>
                            </xsl:for-each>

                        </NoUnderlying>

                    </xsl:for-each>

                </NoUnderlyings>


                <NoMarginInfos>
                    <xsl:for-each select="message/body/groups[@name='NoMarginInfo']/group">

                        <NoMarginInfo>

                            <xsl:for-each select="field[@name]">
                                <xsl:variable name="nodeName" select="@name" />
                                <xsl:element name="{$nodeName}">
                                    <xsl:value-of select="."/>
                                </xsl:element>
                            </xsl:for-each>

                            <xsl:for-each select="groups[@name='NoMarginSecurities']/group/field">
                                <xsl:variable name="nodeName" select="@name" />
                                <xsl:element name="{$nodeName}">
                                    <xsl:value-of select="."/>
                                </xsl:element>
                            </xsl:for-each>

                        </NoMarginInfo>

                    </xsl:for-each>
                </NoMarginInfos>

            </Body>

        </Message>

    </xsl:template>


</xsl:stylesheet>